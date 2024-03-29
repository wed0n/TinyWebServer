project(TinyWebServer)
cmake_minimum_required(VERSION 3.22)

add_executable(server ${PROJECT_SOURCE_DIR}/main.cpp ${PROJECT_SOURCE_DIR}/timer/lst_timer.cpp ${PROJECT_SOURCE_DIR}/http/http_conn.cpp ${PROJECT_SOURCE_DIR}/log/log.cpp ${PROJECT_SOURCE_DIR}/CGImysql/sql_connection_pool.cpp webserver.cpp config.cpp)
target_link_libraries(server pthread mysqlclient)
