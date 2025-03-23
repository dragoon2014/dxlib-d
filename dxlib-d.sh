#!/bin/bash

isUtf8=0

for arg in "$@"; do
    case $arg in
        -u)
            # skip cp932 to utf8 conversion
            isUtf8=1
            ;;
        *)
            ;;
    esac
done

if [[ $isUtf8 -eq 1 ]]; then
    utf8ed_cat='cat'
else
    utf8ed_cat='iconv -f cp932 -t utf-8'
fi

dst="dxlib.d"

convert_to_D(){
    echo converting "$1"... >&2
    $utf8ed_cat "$1" \
        | tr -d '\r' \
        | sed -f replace_simply.sed \
        | bash convert_typedef.sh
}

{
    echo "module dxlib;"
    cat template_winapi.d
    convert_to_D DxLib.h
    echo "version(Windows){"
    convert_to_D DxFunctionWin.h
    echo "}"
} > "$dst"
