find_library(cat_lib_path NAMES "cat_lib")
add_library(cat_lib STATIC IMPORTED)
set_property(TARGET cat_lib PROPERTY IMPORTED_LOCATION "${cat_lib_path}")
