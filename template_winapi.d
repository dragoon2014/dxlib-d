import core.stdc.stdio;
import core.stdc.stdarg;

enum TRUE = 1;
enum FALSE = 0;
enum NULL = null;

alias ubyte BYTE;
alias ushort WORD;
alias int BOOL, LONG;
alias uint DWORD, UINT;
alias long LONGLONG, LONG_PTR;
alias ulong ULONGLONG, UINT_PTR;

alias DWORD* DWORD_PTR;

alias char TCHAR;
T _T(T)(T s){ return s; }
T ULL_PARAM(T)(T n){ return n; }

alias void* HANDLE;
alias HANDLE HWND;
alias HANDLE HINSTANCE;
alias HINSTANCE HMODULE;
alias HANDLE HICON;
alias HANDLE HRGN;
alias HANDLE HBITMAP;

alias UINT_PTR WPARAM;
alias LONG_PTR LPARAM;
alias LONG_PTR LRESULT;
alias LRESULT function(HWND, UINT, WPARAM, LPARAM) WNDPROC;

struct tagRECT{
    LONG left;
    LONG top;
    LONG right;
    LONG bottom;
} alias tagRECT RECT;

struct tagPOINT{
    LONG x;
    LONG y;
} alias tagPOINT POINT;

struct tagSIZE{
    LONG cx;
    LONG cy;
} alias tagSIZE SIZE;

struct _GUID{
    uint Data1;
    ushort Data2;
    ushort Data3;
    ubyte[8] Data4;
} alias _GUID GUID;

struct tagBITMAPINFO{
    BITMAPINFOHEADER bmiHeader;
    RGBQUAD[1] bmiColors;
} alias tagBITMAPINFO BITMAPINFO;

struct tagRGBQUAD{
    BYTE rgbBlue;
    BYTE rgbGreen;
    BYTE rgbRed;
    BYTE rgbReserved;
} alias tagRGBQUAD RGBQUAD;

struct tagBITMAPINFOHEADER{
    DWORD biSize;
    LONG biWidth;
    LONG biHeight;
    WORD biPlanes;
    WORD biBitCount;
    DWORD biCompression;
    DWORD biSizeImage;
    LONG biXPelsPerMeter;
    LONG biYPelsPerMeter;
    DWORD biClrUsed;
    DWORD biClrImportant;
} alias tagBITMAPINFOHEADER BITMAPINFOHEADER;
