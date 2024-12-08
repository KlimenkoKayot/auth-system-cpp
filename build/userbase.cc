//this file is generated by program(drogon_ctl) automatically,don't modify it!
#include "userbase.h"
#include <drogon/utils/OStringStream.h>
#include <string>
#include <map>
#include <vector>
#include <set>
#include <iostream>
#include <unordered_map>
#include <unordered_set>
#include <algorithm>
#include <list>
#include <deque>
#include <queue>
using namespace drogon;
std::string userbase::genText(const DrTemplateData& userbase_view_data)
{
	drogon::OStringStream userbase_tmp_stream;
	std::string layoutName{""};
	userbase_tmp_stream << "<html data-bs-theme=\"light\" lang=\"en\">\n";
	userbase_tmp_stream << "    ";
        auto fields=userbase_view_data.get<std::vector<std::string>>("fields");
        auto userbase=userbase_view_data.get<std::vector<std::vector<std::string>>>("userbase");
    
	userbase_tmp_stream << "    <head>\n";
	userbase_tmp_stream << "        <meta charset=\"utf-8\">\n";
	userbase_tmp_stream << "        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, shrink-to-fit=no\">\n";
	userbase_tmp_stream << "        <title>SecretTalk</title>\n";
	userbase_tmp_stream << "        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">\n";
	userbase_tmp_stream << "    </head>\n";
	userbase_tmp_stream << "    <body style=\"color: var(--bs-body-bg);background: var(--bs-body-color);\">\n";
	userbase_tmp_stream << "        <H1>Userbase</H1>\n";
	userbase_tmp_stream << "        <table class=\"table\" border=\"1\">\n";
	userbase_tmp_stream << "            <thead>\n";
	userbase_tmp_stream << "                <tr>\n";
	userbase_tmp_stream << "                ";
 for (const auto &it : fields) { 
	userbase_tmp_stream << "                    <th scope=\"col\">";
userbase_tmp_stream<<it;
	userbase_tmp_stream << "</td>\n";
	userbase_tmp_stream << "                ";
}
	userbase_tmp_stream << "                </tr>\n";
	userbase_tmp_stream << "            </thead>\n";
	userbase_tmp_stream << "            \n";
	userbase_tmp_stream << "            <tbody>\n";
	userbase_tmp_stream << "                ";
 for (const auto &it : userbase) { 
	userbase_tmp_stream << "                <tr>\n";
	userbase_tmp_stream << "                    ";
 for (const auto &it2 : it) { 
	userbase_tmp_stream << "                        <td>";
userbase_tmp_stream<<it2;
	userbase_tmp_stream << "</td>\n";
	userbase_tmp_stream << "                    ";
}
	userbase_tmp_stream << "                </tr>\n";
	userbase_tmp_stream << "                ";
}
	userbase_tmp_stream << "            </tbody>\n";
	userbase_tmp_stream << "        </table>\n";
	userbase_tmp_stream << "        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\" crossorigin=\"anonymous\"></script>\n";
	userbase_tmp_stream << "    </body>\n";
	userbase_tmp_stream << "</html>\n";
if(layoutName.empty())
{
std::string ret{std::move(userbase_tmp_stream.str())};
return ret;
}else
{
auto templ = DrTemplateBase::newTemplate(layoutName);
if(!templ) return "";
HttpViewData data = userbase_view_data;
auto str = std::move(userbase_tmp_stream.str());
if(!str.empty() && str[str.length()-1] == '\n') str.resize(str.length()-1);
data[""] = std::move(str);
return templ->genText(data);
}
}