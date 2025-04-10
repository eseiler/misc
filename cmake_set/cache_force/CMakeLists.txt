cmake_minimum_required (VERSION 3.25)

project (example LANGUAGES NONE)

message (STATUS "CACHE FORCE")
message (STATUS "Before: ${VALUE}")
set (VALUE "DEFAULT" CACHE STRING "" FORCE)
message (STATUS "After: ${VALUE}")
