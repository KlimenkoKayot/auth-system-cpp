/**
 *
 *  GuestSessionFilter.h
 *
 */

#pragma once

#include <drogon/HttpFilter.h>
using namespace drogon;


class GuestSessionFilter : public HttpFilter<GuestSessionFilter>
{
  public:
    GuestSessionFilter() {}
    void doFilter(const HttpRequestPtr &req,
                  FilterCallback &&fcb,
                  FilterChainCallback &&fccb) override;
};

