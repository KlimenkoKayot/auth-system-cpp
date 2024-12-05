#pragma once

#include <drogon/HttpController.h>
#include "../filters/SessionFilter.h"

using namespace drogon;

class Guest : public drogon::HttpController<Guest>
{
  public:
    METHOD_LIST_BEGIN
    METHOD_ADD(Guest::Welcome, "/welcome", {Get, "SessionFilter"});
    METHOD_ADD(Guest::SignIn, "/signin?login={1}&password={2}", Post);
    METHOD_ADD(Guest::SignInView, "/signin", Get);
    METHOD_ADD(Guest::SignUp, "/signup?login={1}&password={2}", Post);
    METHOD_ADD(Guest::SignUpView, "/signup", Get);
    METHOD_LIST_END

    void Welcome(const HttpRequestPtr &req, 
        std::function<void(const HttpResponsePtr &)> &&callback) const;

    void SignIn(const HttpRequestPtr &req, 
        std::function<void(const HttpResponsePtr &)> &&callback,
        const std::string &login,
        const std::string &password) const;

    void SignInView(const HttpRequestPtr &req,
        std::function<void(const HttpResponsePtr &)> &&callback) const;

    void SignUp(const HttpRequestPtr &req,
        std::function<void(const HttpResponsePtr &)> &&callback,
        const std::string &login,
        const std::string &password) const;    

    void SignUpView(const HttpRequestPtr &req,
        std::function<void(const HttpResponsePtr &)> &&callback) const;

    // void UploadMessage(const HttpRequestPtr &erq,
    //     std::function<void(const HttpResponsePtr &)> &&callback,
    //     const std::string &message);
};
