macro   (lib NAME)
    add_library (${NAME} STATIC ${ARGN})
endmacro()