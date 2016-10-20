#!/bin/bash
hdrs=(DxLib DxFunctionWin)

isUtf8=0

for arg in $*; do
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
    echo converting $src to $dst ...

    echo "module ${hdrs[i],,};" > $dst
    if [ $i -eq 0 ]; then
        cat template_winapi.d >> $dst
    fi

    ([[ $isUtf8 -eq 1 ]] && cat $src || iconv -f cp932 -t utf-8 $src) \
        | sed -f replace_simply.sed \
        | bash convert_typedef.sh >> $dst
}

