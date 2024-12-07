#pragma once

#include <drogon/drogon.h>

namespace SessionManager 
{
    /*
        Открывает новую сессию
        SID      string        SessionId
        VDate    trantor::Date VisitDate  
    */
    void OpenSession(const drogon::HttpRequestPtr &req, const std::string &login) noexcept;
    // Закрывает сессию пользователя
    void CloseSession(const drogon::HttpRequestPtr &req) noexcept;
}