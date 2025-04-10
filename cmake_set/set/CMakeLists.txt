cmake_minimum_required (VERSION 3.25)

project (example LANGUAGES NONE)

message (STATUS "set")
message (STATUS "Before: ${VALUE}")
set (VALUE "DEFAULT")
message (STATUS "After: ${VALUE}")
