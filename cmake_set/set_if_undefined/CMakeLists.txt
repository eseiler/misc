cmake_minimum_required (VERSION 3.25)

project (example LANGUAGES NONE)

message (STATUS "set if undefined")
message (STATUS "Before: ${VALUE}")
if (NOT DEFINED VALUE)
    set (VALUE "DEFAULT")
endif ()
message (STATUS "After: ${VALUE}")
