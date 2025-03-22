#!/bin/bash
hdrs=(DxLib DxFunctionWin)

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

dst="dxlib.d"

echo "module dxlib;" > "$dst"
cat template_winapi.d >> "$dst"

for ((i=0; i<${#hdrs[@]}; i++)){
    src="${hdrs[i]}.h"
    echo converting "$src"...

    if [[ $isUtf8 -eq 1 ]]; then
        utf8ed_cat='cat'
    else
        utf8ed_cat='iconv -f cp932 -t utf-8'
    fi

    $utf8ed_cat "$src" \
        | tr -d '\r' \
        | sed -f replace_simply.sed \
        | bash convert_typedef.sh >> "$dst"
}
