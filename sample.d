import dxlib;
import std.string;

pragma(lib, "user32");
pragma(lib, "gdi32");
pragma(lib, "advapi32");
pragma(lib, "DxDrawFunc_x64");
pragma(lib, "DxLib_x64");
pragma(lib, "DxUseCLib_x64");
pragma(lib, "libbulletcollision_vc8_x64");
pragma(lib, "libbulletdynamics_vc8_x64");
pragma(lib, "libbulletmath_vc8_x64");
pragma(lib, "libjpeg_x64");
pragma(lib, "libpng_x64");
pragma(lib, "libtheora_static_x64");
pragma(lib, "libtiff_x64");
pragma(lib, "ogg_static_x64");
pragma(lib, "vorbis_static_x64");
pragma(lib, "vorbisfile_static_x64");
pragma(lib, "zlib_x64");
pragma(lib, "opus_x64");
pragma(lib, "opusfile_x64");
pragma(lib, "silk_common_x64");
pragma(lib, "celt_x64");

void main(string[] args){
    SetUseCharCodeFormat(DX_CHARCODEFORMAT_UTF8);
    SetOutApplicationLogValidFlag(false);
    ChangeWindowMode(true);
    SetGraphMode(800, 600, 32);
    assert(DxLib_Init() != -1);
    SetDrawScreen(DX_SCREEN_BACK);

    int tick;
    while(ProcessMessage() != -1){
        ClearDrawScreen();
        DrawFormatString(0, 0, 0xffffff, "DXライブラリ on D言語".toStringz);
        DrawFormatString(0, 20, 0xffffff, "tick = %d".toStringz, tick++);
        DrawFormatString(0, 40, 0xffffff, "DxLib Ver = %s".toStringz, DXLIB_VERSION_STR_T.ptr);
        ScreenFlip();
    }

    DxLib_End();
}

