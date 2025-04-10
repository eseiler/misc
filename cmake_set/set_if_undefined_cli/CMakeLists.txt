cmake_minimum_required (VERSION 3.25)

project (example LANGUAGES NONE)

message (STATUS "set if undefined cli")
message (STATUS "Before: ${VALUE}")
if (DEFINED VALUE AND NOT DEFINED CACHE{VALUE})
    message (STATUS "VALUE is not cache")
endif ()
if (NOT DEFINED VALUE OR DEFINED CACHE{VALUE})
    set (VALUE "DEFAULT")
endif ()
message (STATUS "After: ${VALUE}")
