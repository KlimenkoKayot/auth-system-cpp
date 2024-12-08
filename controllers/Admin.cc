#include "Admin.h"
#include <vector>

void Admin::Userbase(const HttpRequestPtr &req, 
    std::function<void(const HttpResponsePtr &)> &&callback) const
{
    auto dbClient = drogon::app().getDbClient();
    auto result = dbClient->execSqlSync("SELECT * FROM userbase");
    std::vector<std::vector<std::string>> userbase;
    std::vector<std::string> fields = {
        "id",
        "login",
        "hash",
        "datetime"
    };
    for (const auto &row : result) {
        std::vector<std::string> curRow = {
            row["id"].as<std::string>(), 
            row["login"].as<std::string>(), 
            row["hash"].as<std::string>(),
            row["datetime"].as<std::string>()
        };
        userbase.emplace_back(std::move(curRow));
    }
    HttpViewData data;
    data.insert("fields", fields);
    data.insert("userbase", userbase);
    auto resp = HttpResponse::newHttpViewResponse("userbase.csp", data);
    callback(resp);
}

void Admin::Messagebase(const HttpRequestPtr &req, 
    std::function<void(const HttpResponsePtr &)> &&callback) const
{

}
