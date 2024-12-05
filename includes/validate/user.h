#include <drogon/drogon.h>

namespace UserValidator {
    bool ExistLogin(const std::string &) noexcept;
    bool Login(const std::string &, const std::string &) noexcept;
}