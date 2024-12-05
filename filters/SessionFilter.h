/**
 *
 *  Manager_SessionFilter.h
 *
 */

#pragma once

#include <drogon/HttpFilter.h>

using namespace drogon;

class SessionFilter : public HttpFilter<SessionFilter>
{
  public:
    SessionFilter() {}
    void doFilter(const HttpRequestPtr &req,
                  FilterCallback &&fcb,
                  FilterChainCallback &&fccb) override;
};
