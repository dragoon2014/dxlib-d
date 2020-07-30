
# remove // comment and just before whitespace
s#\([^ \t]*\)[ \t]*//.*#\1#g
# define to enum
s/\#define[ \t]\+\([a-zA-Z_][a-zA-Z_0-9]*\)[ \t]\+\(.*\)/enum \1 = \2;/g
# type define to alias(TODO)
s/enum\( [a-zA-Z_0-9]\+ = char\)/alias\1/
# ignore ifn?def, endif, define(name only), include, if, else, undefe
/\#ifn\?def[ \t]\+.*/d
/\#endif/d
/\#define[ \t]\+.*/d
/\#include[ \t]\+.*/d
/\#if[ \t]\+.*/d
/\#else/d
/\#undef[ \t]\+.*/d
# ignore inline, __inline
s/^__inline[ \t]//g
s/^inline[ \t]//g

# comment out after } (pass to convert_typedef)
s#\}[ \t;]\+$#}#g
s#\}\(.\+\)#}//!end_brace_after_string: \1#g
s#\}//\([ \t]*else\)#}\1#g

# extern (TODO: cooperation with namespace)
s/extern[ \t]\+//g
# namespace
s/namespace[ \t]\+\([a-zA-Z_][a-zA-Z_0-9]*\)/extern(C++, \1)/g
# ref
s/\([(,]\)\([ \ta-zA-Z_0-9]\+\)\&/\1 ref \2/g

# wchar literal (escape not support!)
s/\([^"]*\)L\"\([^\"]*\)\"/\1"\2"w/g

# typedef struct to struct
s/typedef[ \t]\+struct/struct/g

# c style function
s/([ \t]*\*[ \t]*\([a-zA-Z_][a-zA-Z_0-9]*\)[ \t]*)\([^)]*\))/ function\2)\1/g

# type convert
s/unsigned[ \t]\+char/ubyte/g
s/unsigned[ \t]\+short/ushort/g
s/unsigned[ \t]\+int/uint/g
s/unsigned[ \t]\+long[ \t]\+long/ulong/g
s/unsigned[ \t]\+long/uint/g
s/signed[ \t]\+char/byte/g
s/long[ \t]\+long/_replace_simply_tmp_long_long_t_/g
s/long\(\*?\)[ \t]/int\1 /g
s/_replace_simply_tmp_long_long_t_[ \t]\+/long/g
s/wchar_t/wchar/g

# TODO: temporary delete before impl if-else preprocessor
/0x[0-9a-fA-F]\+ULL/d

# c style cast (TODO)
s/([ \t]*\(float\)[ \t]*)/cast(\1)/g

# remove using
/^[ \t]*using[ \t]\+.*/d

# remove void arg
s/([ \t]*void[ \t]*)/()/g

# const type* to const(type)*
s/const[ \t]\([a-zA-Z_][a-zA-Z_0-9]*\)[ \t]*\*/const(\1)*/g

# remove NEAR and FAR
s/,*[^a-zA-Z_0-9]NEAR[ \t]*[^,;]*//g
s/,*[^a-zA-Z_0-9]FAR[ \t]*[^,;]*//g

# array C to D style (up to 2 dimention)
s/\([ \t]*[a-zA-Z_][a-zA-Z_0-9]*\)[ \t]*\([a-zA-Z_][a-zA-Z_0-9]*\)\(\[[^\]]*\]\)\(\[[^\]]*\]\)[ \t]*;/\1\4\3 \2;/g
s/\([ \t]*[a-zA-Z_][a-zA-Z_0-9]*\)[ \t]*\([a-zA-Z_][a-zA-Z_0-9]*\)\(\[.*\]\)[ \t]*;/\1\3 \2;/g
