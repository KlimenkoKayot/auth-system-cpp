/**
 *
 *  AdminSessionFilter.cc
 *
 */

#include "AdminSessionFilter.h"
#include "../includes/smanager/smanager.h"

using namespace drogon;

void AdminSessionFilter::doFilter(const HttpRequestPtr &req,
                         FilterCallback &&fcb,
                         FilterChainCallback &&fccb)
{
    if (SessionManager::CheckSession(req) && req->session()->get<std::string>("SessionId") == "Admin") {
        fccb();
        return;
    }
    auto resp = drogon::HttpResponse::newRedirectionResponse("http://127.0.0.1:8080/user/openspace");
    fcb(resp);
}
