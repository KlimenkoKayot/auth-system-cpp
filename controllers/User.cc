#include "User.h"
#include "../includes/smanager/smanager.h"

// Add definition of your processing function here

void User::OpenSpace(const HttpRequestPtr &req, 
    std::function<void(const HttpResponsePtr &)> &&callback) const
{
    HttpViewData data;
    auto resp = HttpResponse::newHttpViewResponse("openspace.csp", data);
    callback(resp);
}

void User::LogOut(const HttpRequestPtr &req, 
    std::function<void(const HttpResponsePtr &)> &&callback) const
{
    // закрываем сессию
    SessionManager::CloseSession(req);
    auto resp = HttpResponse::newRedirectionResponse("http://127.0.0.1:8080/guest/signin");
    callback(resp);
}
