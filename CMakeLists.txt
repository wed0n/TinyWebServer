project(TinyWebServer)
cmake_minimum_required(VERSION 3.22)

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
  add_compile_options(-fstandalone-debug)
endif()

add_executable(server main.cpp timer/lst_timer.cpp http/http_conn.cpp log/log.cpp CGImysql/sql_connection_pool.cpp webserver.cpp config.cpp)
target_link_libraries(server pthread mysqlclient)
