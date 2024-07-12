macro    (opt NAME)
    if   (NOT ${CMAKE_CURRENT_SOURCE_DIR} STREQUAL ${CMAKE_SOURCE_DIR})
        message("[cease] opt() must be called on root scope.")
        message(SEND_ERROR)
    endif()

    add_compile_definitions(${NAME})
    set(${NAME} ON)
endmacro()

macro   (opt_va NAME VALUE)
    if   (NOT ${CMAKE_CURRENT_SOURCE_DIR} STREQUAL ${CMAKE_SOURCE_DIR})
        message("[cease] opt() must be called on root scope.")
        message(SEND_ERROR)
    endif()

    add_compile_definitions(${NAME} ${VALUE})
    set(${NAME} ${VALUE})
endmacro()