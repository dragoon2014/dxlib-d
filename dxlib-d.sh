#!/bin/bash
hdrs=(DxLib DxFunctionWin)

for ((i=0; i<${#hdrs[@]}; i++)){
    src="${hdrs[i]}.h"
    dst="${hdrs[i],,}.d"
    echo converting $src to $dst ...

    echo "module ${hdrs[i],,};" > $dst
    if [ $i -eq 0 ]; then
        cat template_winapi.d >> $dst
    fi

    iconv -f cp932 -t utf-8 $src \
        | sed -f replace_simply.sed \
        | bash convert_typedef.sh >> $dst
}

