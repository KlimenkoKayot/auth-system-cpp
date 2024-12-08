/**
 *
 *  AdminSessionFilter.h
 *
 */

#pragma once

#include <drogon/HttpFilter.h>
using namespace drogon;


class AdminSessionFilter : public HttpFilter<AdminSessionFilter>
{
  public:
    AdminSessionFilter() {}
    void doFilter(const HttpRequestPtr &req,
                  FilterCallback &&fcb,
                  FilterChainCallback &&fccb) override;
};

