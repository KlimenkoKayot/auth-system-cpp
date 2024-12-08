/**
 *
 *  GuestSessionFilter.cc
 *
 */

#include "GuestSessionFilter.h"
#include "../includes/smanager/smanager.h"

using namespace drogon;

void GuestSessionFilter::doFilter(const HttpRequestPtr &req,
                         FilterCallback &&fcb,
                         FilterChainCallback &&fccb)
{
    if (!SessionManager::CheckSession(req)) {
        fccb();
        return;
    }
    auto resp = drogon::HttpResponse::newRedirectionResponse("http://127.0.0.1:8080/user/openspace");
    fcb(resp);
}
