#include "smanager.h"
#include <drogon/drogon.h>
#include <trantor/utils/Date.h>

#define SID "SessionId"
#define VDate "VisitDate"

void SessionManager::OpenSession(const drogon::HttpRequestPtr &req, 
    const std::string &login) noexcept 
{
    trantor::Date now = trantor::Date::date();
    if (req->session()->find(SID)) {
        req->session()->modify<std::string>(SID,
        [login](std::string &value) {
            value = login;
        });
    } else {
        req->session()->insert(SID, login);
    }
    if (req->session()->find(VDate)) {
        req->session()->modify<trantor::Date>(VDate, 
        [now](trantor::Date &vdate) {
            vdate = now;
        });
    } else {
        req->session()->insert(VDate, now);
    }
    std::cout << "Oppened new session | " << login << std::endl;
}

void SessionManager::CloseSession(const drogon::HttpRequestPtr &req) noexcept
{
    if (req->session()->find(SID)) {
        req->session()->erase(SID);
    }
    if (req->session()->find(VDate)) {
        req->session()->erase(VDate);
    }
}

bool SessionManager::CheckSession(const drogon::HttpRequestPtr &req) noexcept
{
    if (!req->session()->find(SID)) {
        return false;
    }
    if (!req->session()->find(VDate)) {
        // Ломаная сессия, закрываем
        CloseSession(req);
        return false;
    }
    if (trantor::Date::date() > req->session()->get<trantor::Date>(VDate).after(24 * 60 * 60)) {
        // Session timeout 24 hours, удаляем закрываем сессию
        CloseSession(req);
        return false;
    }
    return true;
}
