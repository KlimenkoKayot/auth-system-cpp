#include <drogon/drogon.h>
#include <drogon/orm/DbClient.h>
#include <iostream>
using namespace drogon;


    // Создание database для обработки запросов
    
// sudo docker stop $(sudo docker ps -a -q)
// sudo docker rm $(sudo docker ps -a -q)
// sudo docker run --name postgresCont -e POSTGRES_PASSWORD=pass123 -p 5432:5432 -d postgres
// sudo docker exec -it postgresCont bash
// psql -h localhost -U postgres

// CREATE DATABASE tsl_employee;
// \c tsl_employee;

// дальше из models/database.sql

int main() {
    const int SERVER_PORT = 8080;

    // const std::string POSTGRES_CONN = "host=localhost port=5432 dbname=tsl_employee connect_timeout=10 user='postgres' password='pass123'";
    // drogon::orm::DbClientPtr dbClient = drogon::orm::DbClient::newPgClient(POSTGRES_CONN, 10);

    drogon::app().createDbClient("postgresql",  // type
                                "localhost",    // host
                                5432,           // port
                                "tsl_employee", // dbname
                                "postgres",     // user
                                "pass123",      // passwd
                                10);            // connNum

    drogon::app().loadConfigFile("../config.json");
    drogon::app().addListener("127.0.0.1", SERVER_PORT);

    drogon::HttpAppFramework::instance().enableSession(0);

    std::cout << "Server started on port at: " << SERVER_PORT << std::endl;
    drogon::app().run();

    return 0;
}
