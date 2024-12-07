/**
 *
 *  Manager_SessionFilter.cc
 *
 */

#include "SessionFilter.h"
#include <trantor/utils/Date.h>

#define VDate "VisitDate"
#define SID "SessionId"

using namespace drogon;

void SessionFilter::doFilter(const HttpRequestPtr &req,
                         FilterCallback &&fcb,
                         FilterChainCallback &&fccb)
{
    trantor::Date now = trantor::Date::date();
    if (req->session()->find(SID)) {
        auto lastDate = req->session()->get<trantor::Date>(VDate);
        std::cout << "last visit: " << lastDate.toFormattedString(false) << std::endl;
        if (now>lastDate.after(24*60*60)) {
            // Нужно релогиниться
            auto resp = HttpResponse::newRedirectionResponse("http://127.0.0.1:8080/guest/signin");
            fcb(resp);
            return; 
        } else {
            // Все ОК, обновляем visit date
            req->session()->modify<trantor::Date>(VDate, [now](trantor::Date &vdate) {
                vdate = now;
            });
            std::cout << "update visit date: " << req->session()->get<trantor::Date>(VDate).toFormattedString(false) << std::endl;
            fccb();
            return;
        }
    }
    // Новый пользователь, нужно перебросить на регистрацию
    // 
    //
    //  TODO
    //
    //
    // Сейчас перекидывает на логин всех пользователей
    std::cout << "first visit" << std::endl;    
    auto resp = HttpResponse::newRedirectionResponse("http://127.0.0.1:8080/guest/signin");
    fcb(resp);
}
