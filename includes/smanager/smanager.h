#include <drogon/drogon.h>

namespace SessionManager 
{
    void OpenSession(const drogon::HttpRequestPtr &req, const std::string &login) noexcept;
}