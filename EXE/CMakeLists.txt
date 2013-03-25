cmake_minimum_required(VERSION 2.8)

include_directories(${CMAKE_BINARY_DIR}/src)

add_executable(kracken_test krackentest.f90)
target_link_libraries(kracken_test kracken)

add_executable(kracken_test2 krackentest2.f90)
target_link_libraries(kracken_test2 kracken)
