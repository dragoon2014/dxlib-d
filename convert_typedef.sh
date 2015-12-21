#!/bin/bash
IFS=
while read l; do
    case "$l" in
    *struct* )
        currentStruct=`echo "$l" | sed -e 's/[ \t]*struct[ \t]\+\([a-zA-Z_][a-zA-Z_0-9]*\).*/\1/'`
        echo "$l"
        ;;
    *//!end_brace_after_string:* )
        echo "$l" \
        | sed -e 's#//!end_brace_after_string:#,#' \
        | sed -e 's/,\([^,;]*\);\?/alias '"${currentStruct}"' \1;/g'
        ;;
    *typedef* )
        currentType=`echo "$l" | sed -e 's/[ \t]*typedef[ \t]\+\([a-zA-Z_][a-zA-Z_0-9]*\).*/\1/'`
        echo "$l" \
        | sed -e 's/typedef [a-zA-Z_][a-zA-Z_0-9]*/,/' \
        | sed -e 's/,\([^,;]*\);\?/alias '"${currentType}"' \1;/g'
        ;;
    * )
        echo "$l"
    esac
done
