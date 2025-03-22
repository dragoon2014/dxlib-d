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

for ((i=0; i<${#hdrs[@]}; i++)){
    src="${hdrs[i]}.h"
    dst="${hdrs[i],,}.d"
    echo converting "$src" to "$dst"...

    echo "module ${hdrs[i],,};" > "$dst"
    if [ $i -eq 0 ]; then
        cat template_winapi.d >> "$dst"
    fi

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

sed -i -z 's@}\n*extern[^\n]*\n{@//__!_injection_DxFunctionWin__\n@' dxlib.d
sed -i -z -e 's/[^{]*{//' -e 's/}[^}]*//' dxfunctionwin.d
sed -i -e '/__!_injection_DxFunctionWin__/rdxfunctionwin.d' -e '/__!_injection_DxFunctionWin__/d' dxlib.d
rm dxfunctionwin.d
