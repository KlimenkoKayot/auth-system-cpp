#pragma once

#include <drogon/HttpController.h>

using namespace drogon;

class User : public drogon::HttpController<User>
{
  public:
    METHOD_LIST_BEGIN
    METHOD_ADD(User::LogOut, "/user/logout", Post);
    METHOD_ADD(User::OpenSpace, "/openspace", Get);
    METHOD_LIST_END
    
    void OpenSpace(const HttpRequestPtr &req, 
        std::function<void(const HttpResponsePtr &)> &&callback) const;

    void LogOut(const HttpRequestPtr &req, 
        std::function<void(const HttpResponsePtr &)> &&callback) const;
};
