#include "user.h"

/*
    1 - login exist
    0 - login free
*/
bool UserValidator::ExistLogin(const std::string &login) noexcept
{
    auto clientPtr = drogon::app().getDbClient();
    auto result = clientPtr -> execSqlSync("SELECT * FROM userbase WHERE login=$1", login);
    // std::cout << result.affectedRows() << std::endl;
    return result.affectedRows() != 0;
}

/*
    1 - logged
    0 - not logged
*/
bool UserValidator::Login(const std::string &login, const std::string &hash) noexcept
{
    auto clientPtr = drogon::app().getDbClient();
    auto result = clientPtr -> execSqlSync("SELECT * FROM userbase WHERE login=$1 AND hash=$2", login, hash);
    // std::cout << result.affectedRows() << std::endl;
    return result.affectedRows() != 0;
}
