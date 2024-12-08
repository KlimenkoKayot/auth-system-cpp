#pragma once

#include <drogon/HttpController.h>
#include "../filters/AdminSessionFilter.h"

using namespace drogon;

class Admin : public drogon::HttpController<Admin>
{
  public:
    METHOD_LIST_BEGIN
    METHOD_ADD(Admin::Userbase, "/userbase", {Get, "AdminSessionFilter"});
    METHOD_ADD(Admin::Messagebase, "/messagebase", {Get, "AdminSessionFilter"});
    METHOD_LIST_END

    void Userbase(const HttpRequestPtr &req, 
      std::function<void(const HttpResponsePtr &)> &&callback) const;

    void Messagebase(const HttpRequestPtr &req,
      std::function<void(const HttpResponsePtr &)> &&callback) const;
};
