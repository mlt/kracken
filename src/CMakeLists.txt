cmake_minimum_required(VERSION 2.8)

add_library(kracken M_kracken.f90)

export(TARGETS kracken FILE KRACKEN-config.cmake)
export(PACKAGE KRACKEN)
