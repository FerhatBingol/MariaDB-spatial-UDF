#
# Find the MARIADB client includes and library
# 

# This module defines
# MARIADB_INCLUDE_DIR, where to find mysql.h
# MARIADB_LIBRARIES, the libraries to link against to connect to MARIADB
# MARIADB_FOUND, if false, you cannot build anything that requires MARIADB.


# also defined, but not for general use are
# MARIADB_LIBRARY, where to find the MARIADB library.

set( MARIADB_FOUND 0 )

if( UNIX )
  set(MARIADB_CONFIG_PREFER_PATH "/usr/bin" CACHE FILEPATH
    "preferred path to MARIADB (mariadb_config)"
  )

  find_program(MARIADB_CONFIG mariadb_config
    ${MARIADB_CONFIG_PREFER_PATH}
    /usr/bin/
    /usr/local/bin/
    /usr/local/mariadb/bin/
  )

  if( MARIADB_CONFIG )
    message(STATUS "Using mariadb-config: ${MARIADB_CONFIG}")
    # set INCLUDE_DIR
    exec_program(${MARIADB_CONFIG}
      ARGS --include
      OUTPUT_VARIABLE MY_TMP
    )

    string(REGEX REPLACE "-I([^ ]*)( .*)?" "\\1" MY_TMP "${MY_TMP}")
    set(MARIADB_ADD_INCLUDE_PATH ${MY_TMP} CACHE FILEPATH INTERNAL)
    #message("[DEBUG] MARIADB ADD_INCLUDE_PATH : ${MARIADB_ADD_INCLUDE_PATH}")
    # set LIBRARY_DIR
    exec_program(${MARIADB_CONFIG}
      ARGS --libs_r
      OUTPUT_VARIABLE MY_TMP
    )
    set(MARIADB_ADD_LIBRARIES "")
    string(REGEX MATCHALL "-l[^ ]*" MARIADB_LIB_LIST "${MY_TMP}")
    foreach(LIB ${MARIADB_LIB_LIST})
      string(REGEX REPLACE "[ ]*-l([^ ]*)" "\\1" LIB "${LIB}")
      list(APPEND MARIADB_ADD_LIBRARIES "${LIB}")
      #message("[DEBUG] MARIADB ADD_LIBRARIES : ${MARIADB_ADD_LIBRARIES}")
    endforeach(LIB ${MARIADB_LIB_LIST})

    set(MARIADB_ADD_LIBRARIES_PATH "")
    string(REGEX MATCHALL "-L[^ ]*" MARIADB_LIBDIR_LIST "${MY_TMP}")
    foreach(LIB ${MARIADB_LIBDIR_LIST})
      string(REGEX REPLACE "[ ]*-L([^ ]*)" "\\1" LIB "${LIB}")
      list(APPEND MARIADB_ADD_LIBRARIES_PATH "${LIB}")
      #message("[DEBUG] MARIADB ADD_LIBRARIES_PATH : ${MARIADB_ADD_LIBRARIES_PATH}")
    endforeach(LIB ${MARIADB_LIBS})

    exec_program(${MARIADB_CONFIG}
      ARGS --plugindir
      OUTPUT_VARIABLE MY_TMP
    )
    set(MARIADB_PLUGIN_DIR ${MY_TMP} CACHE FILEPATH INTERNAL)


  else( MARIADB_CONFIG )
    set(MARIADB_ADD_LIBRARIES "")
    list(APPEND MARIADB_ADD_LIBRARIES "MARIADBclient_r")
  endif( MARIADB_CONFIG )
endif( UNIX )

find_path(MARIADB_INCLUDE_DIR
  NAMES
    if( UNIX )
      mysql.h
    else( UNIX )
      mysql.h
    endif( UNIX )
  PATHS
    ${MARIADB_ADD_INCLUDE_PATH}
    /usr/include/mariadb
    /usr/include
    /usr/local/include
    /usr/local/include/mariadb
    /usr/local/mariadb/include
    "C:/Program Files/mariadb/include"
    "C:/Program Files/mariadb/mariadb Server 10.5/include"
    "C:/Program Files/mariadb/mariadb Server 10.5/include"
    "C:/mariadb/include"
    "[HKEY_LOCAL_MACHINE\\SOFTWARE\\MARIADB AB\\MARIADB Server 10.5;Location]/include"
    "[HKEY_LOCAL_MACHINE\\SOFTWARE\\MARIADB AB\\MARIADB Server 10.5;Location]/include"
    "[HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\MARIADB AB\\MARIADB Server 10.5;Location]/include"
    "[HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\MARIADB AB\\MARIADB Server 10.5;Location]/include"
    "$ENV{ProgramFiles}/mariadb/*/include"
    #"$ENV{SystemDrive}/mariadb/*/include" # it is getting my windows OSGEO4W library path with this one.
    "c:/msys/local/include"
  DOC
    "Specify the directory containing mysql.h."
  NO_SYSTEM_ENVIRONMENT_PATH
)

if( UNIX )
foreach(LIB ${MARIADB_ADD_LIBRARIES})
  find_library( MARIADB_LIBRARY 
    NAMES
      MARIADB libmariadb ${LIB}
    PATHS
      ${MARIADB_ADD_LIBRARIES_PATH}
      /usr/lib
      /usr/lib/mariadb
      /usr/local/lib
      /usr/local/lib/mariadb
      /usr/local/mariadb/lib
      /usr/lib/x86_64-linux-gnu
    DOC "Specify the location of the mariadb library here."
  )
endforeach(LIB ${MARIADB_ADD_LIBRARY})
endif( UNIX )

if( WIN32 )
  find_library( MARIADB_LIBRARY 
    NAMES
      libmariadb
    PATHS
      ${MARIADB_ADD_LIBRARIES_PATH}
      "C:/Program Files/mariadb/lib"
      "C:/Program Files/mariadb/mariadb Server 10.5/lib/opt"
      "C:/Program Files/mariadb/mariadb Server 10.5/lib/opt"
      "C:/mariadb/lib/debug"
      "[HKEY_LOCAL_MACHINE\\SOFTWARE\\MARIADB AB\\MARIADB Server 10.5;Location]/lib/opt"
      "[HKEY_LOCAL_MACHINE\\SOFTWARE\\MARIADB AB\\MARIADB Server 10.5;Location]/lib/opt"
      "[HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\MARIADB AB\\MARIADB Server 10.5;Location]/lib/opt"
      "[HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\MARIADB AB\\MARIADB Server 10.5;Location]/lib/opt"
      "$ENV{ProgramFiles}/mariadb/*/lib/opt"
      #"$ENV{SystemDrive}/mariadb/*/lib/opt"
      "c:/msys/local/include"
    DOC "Specify the location of the mariadb library here."
  )
endif( WIN32 )

# On Windows you typically don't need to include any extra libraries
# to build MARIADB stuff.

if( NOT WIN32 )
  find_library( MARIADB_EXTRA_LIBRARIES
    NAMES
      z zlib
    PATHS
      /usr/lib
      /usr/local/lib
    DOC
      "if more libraries are necessary to link in a mariadb client (typically zlib), specify them here."
  )
else( NOT WIN32 )
  set( MARIADB_EXTRA_LIBRARIES "" )
endif( NOT WIN32 )

if( MARIADB_LIBRARY )
  if( MARIADB_INCLUDE_DIR )
    set( MARIADB_FOUND 1 )
    message(STATUS "Found MARIADB library: ${MARIADB_LIBRARY}")
    message(STATUS "Found MARIADB headers: ${MARIADB_INCLUDE_DIR}")
  else( MARIADB_INCLUDE_DIR )
      message(FATAL_ERROR "Could not find MARIADB headers! Please install the development-libraries and headers.")
  endif( MARIADB_INCLUDE_DIR )
  mark_as_advanced( MARIADB_FOUND MARIADB_LIBRARY MARIADB_EXTRA_LIBRARIES MARIADB_INCLUDE_DIR )
else( MARIADB_LIBRARY )
  message(FATAL_ERROR "Could not find the MARIADB libraries! Please install the development-libraries and headers.")
endif( MARIADB_LIBRARY )
