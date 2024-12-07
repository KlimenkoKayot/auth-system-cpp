#include "Guest.h"
#include "../includes/sha256/sha256.h"
#include "../includes/validate/user.h"
#include "../includes/smanager/smanager.h"
#include <iostream>
#include <trantor/utils/Date.h>

#define SID "SessionId"
#define VDate "VisitDate"

using namespace std;

void Guest::SignIn(const HttpRequestPtr &req,
    function<void(const HttpResponsePtr &)> &&callback,
    const std::string &login,
    const std::string &password) const
{
    if (!UserValidator::ExistLogin(login)) {
        std::cout << "try to login, but user not exist... | " << login << std::endl;
        callback(drogon::HttpResponse::newRedirectionResponse("http://127.0.0.1:8080/guest/signin"));
        return;
    }
    string hashedData = SHA256().hash(login+password);
    if (UserValidator::Login(login, hashedData)) {
        std::cout << "logged in! | " << login << std::endl;
        /*
            ОТКРЫВАЕМ СЕССИЮ
        */
       SessionManager::OpenSession(req, login);

        callback(drogon::HttpResponse::newRedirectionResponse("http://127.0.0.1:8080/user/openspace"));
        return;
    } else {
        std::cout << "try to login, but bad password... | " << login << std::endl;
        callback(drogon::HttpResponse::newRedirectionResponse("http://127.0.0.1:8080/guest/signin"));
        return;
    }
}

void Guest::SignInView(const HttpRequestPtr &req, 
    std::function<void(const HttpResponsePtr &)> &&callback) const
{
    HttpViewData data;
    auto resp = HttpResponse::newHttpViewResponse("signin.csp", data);
    callback(resp);
}

void Guest::SignUp(const HttpRequestPtr &req,
    function<void(const HttpResponsePtr &)> &&callback,
    const std::string &login,
    const std::string &password) const
{
    if (UserValidator::ExistLogin(login)) {
        std::cout << "try create new user, but login exist... | " << login << std::endl;
        callback(drogon::HttpResponse::newRedirectionResponse("http://127.0.0.1:8080/guest/signup"));
        return;
    } else {
        auto clientPtr = drogon::app().getDbClient();
        // SHA256 вместо пароля
        string hashedData = SHA256().hash(login+password);
        // добавляем пользователя
        auto result = clientPtr->execSqlSync("INSERT INTO userbase(login, hash) VALUES($1, $2)", login, hashedData);
        // логирование
        std::cout << "SHA256 -> " << hashedData << " | " << result.affectedRows() << " | " << "new user!" << " | " << login << std::endl;
        /*
            ОТКРЫВАЕМ СЕССИЮ
        */
        SessionManager::OpenSession(req, login);

        callback(drogon::HttpResponse::newRedirectionResponse("http://127.0.0.1:8080/user/openspace"));
        return;
    }
}

void Guest::SignUpView(const HttpRequestPtr &req, 
    std::function<void(const HttpResponsePtr &)> &&callback) const
{
    HttpViewData data;
    auto resp = HttpResponse::newHttpViewResponse("signup.csp", data);
    callback(resp);
}
