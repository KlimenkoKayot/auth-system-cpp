#pragma once

#include <drogon/HttpController.h>
#include "../filters/SessionFilter.h"

using namespace drogon;

class User : public drogon::HttpController<User>
{
  public:
    METHOD_LIST_BEGIN
    METHOD_ADD(User::LogOut, "/logout", {Post, "SessionFilter"});
    METHOD_ADD(User::OpenSpace, "/openspace", {Get, "SessionFilter"});
    METHOD_LIST_END
    
    void OpenSpace(const HttpRequestPtr &req, 
        std::function<void(const HttpResponsePtr &)> &&callback) const;

    void LogOut(const HttpRequestPtr &req, 
        std::function<void(const HttpResponsePtr &)> &&callback) const;
};
