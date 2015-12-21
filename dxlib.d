module dxlib;
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

alias wchar TCHAR;

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











enum DXLIB_VERSION = 0x315e;
enum DXLIB_VERSION_STR = "3.15e"w;

















enum DX_PI = (3.1415926535897932384626433832795 );
enum DX_PI_F = (3.1415926535897932384626433832795f);
enum DX_TWO_PI = (3.1415926535897932384626433832795  * 2.0 );
enum DX_TWO_PI_F = (3.1415926535897932384626433832795f * 2.0f);

alias DX_CHAR = char;


enum MAX_IMAGE_NUM = (32768);
enum MAX_2DSURFACE_NUM = (32768);
enum MAX_3DSURFACE_NUM = (65536);
enum MAX_IMAGE_DIVNUM = (64);
enum MAX_SURFACE_NUM = (65536);
enum MAX_SHADOWMAP_NUM = (8192);
enum MAX_SOFTIMAGE_NUM = (8192);

enum MAX_SOUND_NUM = (32768);
enum MAX_SOFTSOUND_NUM = (8192);
enum MAX_MUSIC_NUM = (256);
enum MAX_MOVIE_NUM = (100);
enum MAX_MASK_NUM = (512);
enum MAX_FONT_NUM = (40);
enum MAX_INPUT_NUM = (256);
enum MAX_SOCKET_NUM = (8192);
enum MAX_LIGHT_NUM = (4096);
enum MAX_SHADER_NUM = (4096);
enum MAX_CONSTANT_BUFFER_NUM = (8192);
enum MAX_MODEL_BASE_NUM = (32768);
enum MAX_MODEL_NUM = (32768);
enum MAX_VERTEX_BUFFER_NUM = (16384);
enum MAX_INDEX_BUFFER_NUM = (16384);
enum MAX_FILE_NUM = (32768);

enum MAX_JOYPAD_NUM = (16);
enum MAX_EVENTPROCESS_NUM = (5);

enum DEFAULT_SCREEN_SIZE_X = (640);
enum DEFAULT_SCREEN_SIZE_Y = (480);
enum DEFAULT_COLOR_BITDEPTH = (16);
enum DEFAULT_ZBUFFER_BITDEPTH = (16);

enum DEFAULT_FOV = (60.0F * 3.1415926535897932384626433832795F / 180.0F);
enum DEFAULT_TAN_FOV_HALF = (0.57735026918962576450914878050196F);
enum DEFAULT_NEAR = (0.0F);
enum DEFAULT_FAR = (20000.0F);

enum DX_DEFAULT_FONT_HANDLE = (-2);

enum DEFAULT_FONT_SIZE = (16);
enum DEFAULT_FONT_THINCK = (6);
enum DEFAULT_FONT_TYPE = ( DX_FONTTYPE_NORMAL );
enum DEFAULT_FONT_EDGESIZE = (1);

enum MAX_USERIMAGEREAD_FUNCNUM = (10);


enum DX_WINDOWSVERSION_31 = (0x000);
enum DX_WINDOWSVERSION_95 = (0x001);
enum DX_WINDOWSVERSION_98 = (0x002);
enum DX_WINDOWSVERSION_ME = (0x003);
enum DX_WINDOWSVERSION_NT31 = (0x104);
enum DX_WINDOWSVERSION_NT40 = (0x105);
enum DX_WINDOWSVERSION_2000 = (0x106);
enum DX_WINDOWSVERSION_XP = (0x107);
enum DX_WINDOWSVERSION_VISTA = (0x108);
enum DX_WINDOWSVERSION_7 = (0x109);
enum DX_WINDOWSVERSION_8 = (0x10A);
enum DX_WINDOWSVERSION_8_1 = (0x10B);
enum DX_WINDOWSVERSION_10 = (0x10C);
enum DX_WINDOWSVERSION_NT_TYPE = (0x100);


enum DX_DIRECTXVERSION_NON = (0);
enum DX_DIRECTXVERSION_1 = (0x10000);
enum DX_DIRECTXVERSION_2 = (0x20000);
enum DX_DIRECTXVERSION_3 = (0x30000);
enum DX_DIRECTXVERSION_4 = (0x40000);
enum DX_DIRECTXVERSION_5 = (0x50000);
enum DX_DIRECTXVERSION_6 = (0x60000);
enum DX_DIRECTXVERSION_6_1 = (0x60100);
enum DX_DIRECTXVERSION_7 = (0x70000);
enum DX_DIRECTXVERSION_8 = (0x80000);
enum DX_DIRECTXVERSION_8_1 = (0x80100);


enum DX_DIRECT3D_NONE = (0);
enum DX_DIRECT3D_9 = (1);
enum DX_DIRECT3D_9EX = (2);
enum DX_DIRECT3D_11 = (3);


enum DX_DIRECT3D_11_FEATURE_LEVEL_9_1 = (0x9100);
enum DX_DIRECT3D_11_FEATURE_LEVEL_9_2 = (0x9200);
enum DX_DIRECT3D_11_FEATURE_LEVEL_9_3 = (0x9300);
enum DX_DIRECT3D_11_FEATURE_LEVEL_10_0 = (0xa000);
enum DX_DIRECT3D_11_FEATURE_LEVEL_10_1 = (0xa100);
enum DX_DIRECT3D_11_FEATURE_LEVEL_11_0 = (0xb000);
enum DX_DIRECT3D_11_FEATURE_LEVEL_11_1 = (0xb100);


enum DX_CHARSET_DEFAULT = (0);
enum DX_CHARSET_SHFTJIS = (1);
enum DX_CHARSET_HANGEUL = (2);
enum DX_CHARSET_BIG5 = (3);
enum DX_CHARSET_GB2312 = (4);
enum DX_CHARSET_NUM = (5);


enum DX_CHARCODEFORMAT_SHIFTJIS = (932);
enum DX_CHARCODEFORMAT_GB2312 = (936);
enum DX_CHARCODEFORMAT_UHC = (949);
enum DX_CHARCODEFORMAT_BIG5 = (950);
enum DX_CHARCODEFORMAT_UTF16LE = (1200);
enum DX_CHARCODEFORMAT_UTF16BE = (1201);
enum DX_CHARCODEFORMAT_ASCII = (1252);
enum DX_CHARCODEFORMAT_UTF8 = (65001);
enum DX_CHARCODEFORMAT_UTF32LE = (32766);
enum DX_CHARCODEFORMAT_UTF32BE = (32767);


enum DX_MIDIMODE_MCI = (0);
enum DX_MIDIMODE_DM = (1);


enum DX_DRAWMODE_NEAREST = (0);
enum DX_DRAWMODE_BILINEAR = (1);
enum DX_DRAWMODE_ANISOTROPIC = (2);
enum DX_DRAWMODE_OTHER = (3);
enum DX_DRAWMODE_NUM = (4);


enum DX_FONTTYPE_NORMAL = (0x00);
enum DX_FONTTYPE_EDGE = (0x01);
enum DX_FONTTYPE_ANTIALIASING = (0x02);
enum DX_FONTTYPE_ANTIALIASING_4X4 = (0x12);
enum DX_FONTTYPE_ANTIALIASING_8X8 = (0x22);
enum DX_FONTTYPE_ANTIALIASING_EDGE = (0x03);
enum DX_FONTTYPE_ANTIALIASING_EDGE_4X4 = (0x13);
enum DX_FONTTYPE_ANTIALIASING_EDGE_8X8 = (0x23);


enum DX_FONTIMAGE_BIT_1 = (0);
enum DX_FONTIMAGE_BIT_4 = (1);
enum DX_FONTIMAGE_BIT_8 = (2);


enum DX_BLENDMODE_NOBLEND = (0);
enum DX_BLENDMODE_ALPHA = (1);
enum DX_BLENDMODE_ADD = (2);
enum DX_BLENDMODE_SUB = (3);
enum DX_BLENDMODE_MUL = (4);

enum DX_BLENDMODE_SUB2 = (5);

enum DX_BLENDMODE_XOR = (6);
enum DX_BLENDMODE_DESTCOLOR = (8);
enum DX_BLENDMODE_INVDESTCOLOR = (9);
enum DX_BLENDMODE_INVSRC = (10);
enum DX_BLENDMODE_MULA = (11);
enum DX_BLENDMODE_ALPHA_X4 = (12);
enum DX_BLENDMODE_ADD_X4 = (13);
enum DX_BLENDMODE_SRCCOLOR = (14);
enum DX_BLENDMODE_HALF_ADD = (15);
enum DX_BLENDMODE_SUB1 = (16);
enum DX_BLENDMODE_PMA_ALPHA = (17);
enum DX_BLENDMODE_PMA_ADD = (18);
enum DX_BLENDMODE_PMA_SUB = (19);
enum DX_BLENDMODE_PMA_INVSRC = (20);
enum DX_BLENDMODE_PMA_ALPHA_X4 = (21);
enum DX_BLENDMODE_PMA_ADD_X4 = (22);
enum DX_BLENDMODE_NUM = (23);


enum DX_DRAWFLOATCOORDTYPE_DIRECT3D9 = (0);
enum DX_DRAWFLOATCOORDTYPE_DIRECT3D10 = (1);


enum DX_BLENDGRAPHTYPE_NORMAL = (0);
enum DX_BLENDGRAPHTYPE_WIPE = (1);
enum DX_BLENDGRAPHTYPE_ALPHA = (2);


enum DX_GRAPH_FILTER_MONO = (0);
enum DX_GRAPH_FILTER_GAUSS = (1);
enum DX_GRAPH_FILTER_DOWN_SCALE = (2);
enum DX_GRAPH_FILTER_BRIGHT_CLIP = (3);
enum DX_GRAPH_FILTER_BRIGHT_SCALE = (4);
enum DX_GRAPH_FILTER_HSB = (5);
enum DX_GRAPH_FILTER_INVERT = (6);
enum DX_GRAPH_FILTER_LEVEL = (7);
enum DX_GRAPH_FILTER_TWO_COLOR = (8);
enum DX_GRAPH_FILTER_GRADIENT_MAP = (9);
enum DX_GRAPH_FILTER_PREMUL_ALPHA = (10);
enum DX_GRAPH_FILTER_INTERP_ALPHA = (11);
enum DX_GRAPH_FILTER_NUM = (12);


enum DX_GRAPH_BLEND_NORMAL = (0);
enum DX_GRAPH_BLEND_RGBA_SELECT_MIX = (1);
enum DX_GRAPH_BLEND_MULTIPLE = (2);
enum DX_GRAPH_BLEND_DIFFERENCE = (3);
enum DX_GRAPH_BLEND_ADD = (4);
enum DX_GRAPH_BLEND_SCREEN = (5);
enum DX_GRAPH_BLEND_OVERLAY = (6);
enum DX_GRAPH_BLEND_DODGE = (7);
enum DX_GRAPH_BLEND_BURN = (8);
enum DX_GRAPH_BLEND_DARKEN = (9);
enum DX_GRAPH_BLEND_LIGHTEN = (10);
enum DX_GRAPH_BLEND_SOFTLIGHT = (11);
enum DX_GRAPH_BLEND_HARDLIGHT = (12);
enum DX_GRAPH_BLEND_EXCLUSION = (13);
enum DX_GRAPH_BLEND_NORMAL_ALPHACH = (14);
enum DX_GRAPH_BLEND_ADD_ALPHACH = (15);
enum DX_GRAPH_BLEND_MULTIPLE_A_ONLY = (16);
enum DX_GRAPH_BLEND_PMA_MULTIPLE_A_ONLY = (17);
enum DX_GRAPH_BLEND_NUM = (18);


enum DX_RGBA_SELECT_SRC_R = (0);
enum DX_RGBA_SELECT_SRC_G = (1);
enum DX_RGBA_SELECT_SRC_B = (2);
enum DX_RGBA_SELECT_SRC_A = (3);
enum DX_RGBA_SELECT_BLEND_R = (4);
enum DX_RGBA_SELECT_BLEND_G = (5);
enum DX_RGBA_SELECT_BLEND_B = (6);
enum DX_RGBA_SELECT_BLEND_A = (7);


enum DX_FILL_WIREFRAME = (2);
enum DX_FILL_SOLID = (3);


enum DX_CULLING_NONE = (0);
enum DX_CULLING_LEFT = (1);
enum DX_CULLING_RIGHT = (2);
enum DX_CULLING_NUM = (3);


enum DX_CAMERACLIP_LEFT = (0x01);
enum DX_CAMERACLIP_RIGHT = (0x02);
enum DX_CAMERACLIP_BOTTOM = (0x04);
enum DX_CAMERACLIP_TOP = (0x08);
enum DX_CAMERACLIP_BACK = (0x10);
enum DX_CAMERACLIP_FRONT = (0x20);


enum DX_MV1_VERTEX_TYPE_1FRAME = (0);
enum DX_MV1_VERTEX_TYPE_4FRAME = (1);
enum DX_MV1_VERTEX_TYPE_8FRAME = (2);
enum DX_MV1_VERTEX_TYPE_FREE_FRAME = (3);
enum DX_MV1_VERTEX_TYPE_NMAP_1FRAME = (4);
enum DX_MV1_VERTEX_TYPE_NMAP_4FRAME = (5);
enum DX_MV1_VERTEX_TYPE_NMAP_8FRAME = (6);
enum DX_MV1_VERTEX_TYPE_NMAP_FREE_FRAME = (7);
enum DX_MV1_VERTEX_TYPE_NUM = (8);


enum DX_MV1_MESHCATEGORY_NORMAL = (0);
enum DX_MV1_MESHCATEGORY_OUTLINE = (1);
enum DX_MV1_MESHCATEGORY_OUTLINE_ORIG_SHADER = (2);
enum DX_MV1_MESHCATEGORY_NUM = (3);


enum MV1_SAVETYPE_MESH = (0x0001);
enum MV1_SAVETYPE_ANIM = (0x0002);
enum MV1_SAVETYPE_NORMAL = ( MV1_SAVETYPE_MESH | MV1_SAVETYPE_ANIM );


enum MV1_ANIMKEY_DATATYPE_ROTATE = (0);
enum MV1_ANIMKEY_DATATYPE_ROTATE_X = (1);
enum MV1_ANIMKEY_DATATYPE_ROTATE_Y = (2);
enum MV1_ANIMKEY_DATATYPE_ROTATE_Z = (3);
enum MV1_ANIMKEY_DATATYPE_SCALE = (5);
enum MV1_ANIMKEY_DATATYPE_SCALE_X = (6);
enum MV1_ANIMKEY_DATATYPE_SCALE_Y = (7);
enum MV1_ANIMKEY_DATATYPE_SCALE_Z = (8);
enum MV1_ANIMKEY_DATATYPE_TRANSLATE = (10);
enum MV1_ANIMKEY_DATATYPE_TRANSLATE_X = (11);
enum MV1_ANIMKEY_DATATYPE_TRANSLATE_Y = (12);
enum MV1_ANIMKEY_DATATYPE_TRANSLATE_Z = (13);
enum MV1_ANIMKEY_DATATYPE_MATRIX4X4C = (15);
enum MV1_ANIMKEY_DATATYPE_MATRIX3X3 = (17);
enum MV1_ANIMKEY_DATATYPE_SHAPE = (18);
enum MV1_ANIMKEY_DATATYPE_OTHRE = (20);


enum MV1_ANIMKEY_TIME_TYPE_ONE = (0);
enum MV1_ANIMKEY_TIME_TYPE_KEY = (1);


enum MV1_ANIMKEY_TYPE_QUATERNION_X = (0);
enum MV1_ANIMKEY_TYPE_VECTOR = (1);
enum MV1_ANIMKEY_TYPE_MATRIX4X4C = (2);
enum MV1_ANIMKEY_TYPE_MATRIX3X3 = (3);
enum MV1_ANIMKEY_TYPE_FLAT = (4);
enum MV1_ANIMKEY_TYPE_LINEAR = (5);
enum MV1_ANIMKEY_TYPE_BLEND = (6);
enum MV1_ANIMKEY_TYPE_QUATERNION_VMD = (7);


enum DX_SCREEN_FRONT = (0xfffffffc);
enum DX_SCREEN_BACK = (0xfffffffe) ;
enum DX_SCREEN_WORK = (0xfffffffd);
enum DX_SCREEN_TEMPFRONT = (0xfffffffb);

enum DX_NONE_GRAPH = (0xfffffffb);


enum DX_SHAVEDMODE_NONE = (0);
enum DX_SHAVEDMODE_DITHER = (1);
enum DX_SHAVEDMODE_DIFFUS = (2);


enum DX_IMAGESAVETYPE_BMP = (0);
enum DX_IMAGESAVETYPE_JPEG = (1);
enum DX_IMAGESAVETYPE_PNG = (2);


enum DX_PLAYTYPE_LOOPBIT = (0x0002);
enum DX_PLAYTYPE_BACKBIT = (0x0001);

enum DX_PLAYTYPE_NORMAL = (0);
enum DX_PLAYTYPE_BACK = ( DX_PLAYTYPE_BACKBIT );
enum DX_PLAYTYPE_LOOP = ( DX_PLAYTYPE_LOOPBIT | DX_PLAYTYPE_BACKBIT );


enum DX_MOVIEPLAYTYPE_BCANCEL = (0);
enum DX_MOVIEPLAYTYPE_NORMAL = (1);


enum DX_SOUNDTYPE_NORMAL = (0);
enum DX_SOUNDTYPE_STREAMSTYLE = (1);


enum DX_SOUNDDATATYPE_MEMNOPRESS = (0);
enum DX_SOUNDDATATYPE_MEMNOPRESS_PLUS = (1);
enum DX_SOUNDDATATYPE_MEMPRESS = (2);
enum DX_SOUNDDATATYPE_FILE = (3);


enum DX_READSOUNDFUNCTION_PCM = (1 << 0);
enum DX_READSOUNDFUNCTION_OGG = (1 << 1);
enum DX_READSOUNDFUNCTION_DEFAULT_NUM = (2);


enum DX_REVERB_PRESET_DEFAULT = (0);
enum DX_REVERB_PRESET_GENERIC = (1);
enum DX_REVERB_PRESET_PADDEDCELL = (2);
enum DX_REVERB_PRESET_ROOM = (3);
enum DX_REVERB_PRESET_BATHROOM = (4);
enum DX_REVERB_PRESET_LIVINGROOM = (5);
enum DX_REVERB_PRESET_STONEROOM = (6);
enum DX_REVERB_PRESET_AUDITORIUM = (7);
enum DX_REVERB_PRESET_CONCERTHALL = (8);
enum DX_REVERB_PRESET_CAVE = (9);
enum DX_REVERB_PRESET_ARENA = (10);
enum DX_REVERB_PRESET_HANGAR = (11);
enum DX_REVERB_PRESET_CARPETEDHALLWAY = (12);
enum DX_REVERB_PRESET_HALLWAY = (13);
enum DX_REVERB_PRESET_STONECORRIDOR = (14);
enum DX_REVERB_PRESET_ALLEY = (15);
enum DX_REVERB_PRESET_FOREST = (16);
enum DX_REVERB_PRESET_CITY = (17);
enum DX_REVERB_PRESET_MOUNTAINS = (18);
enum DX_REVERB_PRESET_QUARRY = (19);
enum DX_REVERB_PRESET_PLAIN = (20);
enum DX_REVERB_PRESET_PARKINGLOT = (21);
enum DX_REVERB_PRESET_SEWERPIPE = (22);
enum DX_REVERB_PRESET_UNDERWATER = (23);
enum DX_REVERB_PRESET_SMALLROOM = (24);
enum DX_REVERB_PRESET_MEDIUMROOM = (25);
enum DX_REVERB_PRESET_LARGEROOM = (26);
enum DX_REVERB_PRESET_MEDIUMHALL = (27);
enum DX_REVERB_PRESET_LARGEHALL = (28);
enum DX_REVERB_PRESET_PLATE = (29);

enum DX_REVERB_PRESET_NUM = (30);


enum DX_MASKTRANS_WHITE = (0);
enum DX_MASKTRANS_BLACK = (1);
enum DX_MASKTRANS_NONE = (2);


enum DX_MASKGRAPH_CH_A = (0);
enum DX_MASKGRAPH_CH_R = (1);
enum DX_MASKGRAPH_CH_G = (2);
enum DX_MASKGRAPH_CH_B = (3);


enum DX_ZWRITE_MASK = (0);
enum DX_ZWRITE_CLEAR = (1);


enum DX_CMP_NEVER = (1);
enum DX_CMP_LESS = (2);
enum DX_CMP_EQUAL = (3);
enum DX_CMP_LESSEQUAL = (4);
enum DX_CMP_GREATER = (5);
enum DX_CMP_NOTEQUAL = (6);
enum DX_CMP_GREATEREQUAL = (7);
enum DX_CMP_ALWAYS = (8);
enum DX_ZCMP_DEFAULT = ( DX_CMP_LESSEQUAL );
enum DX_ZCMP_REVERSE = ( DX_CMP_GREATEREQUAL );


enum DX_SHADEMODE_FLAT = (1);
enum DX_SHADEMODE_GOURAUD = (2);


enum DX_FOGMODE_NONE = (0);
enum DX_FOGMODE_EXP = (1);
enum DX_FOGMODE_EXP2 = (2);
enum DX_FOGMODE_LINEAR = (3);


enum DX_MATERIAL_TYPE_NORMAL = (0);
enum DX_MATERIAL_TYPE_TOON = (1);
enum DX_MATERIAL_TYPE_TOON_2 = (2);


enum DX_MATERIAL_BLENDTYPE_TRANSLUCENT = (0);
enum DX_MATERIAL_BLENDTYPE_ADDITIVE = (1);
enum DX_MATERIAL_BLENDTYPE_MODULATE = (2);
enum DX_MATERIAL_BLENDTYPE_NONE = (3);


enum DX_TEXADDRESS_WRAP = (1);
enum DX_TEXADDRESS_MIRROR = (2);
enum DX_TEXADDRESS_CLAMP = (3);
enum DX_TEXADDRESS_BORDER = (4);
enum DX_TEXADDRESS_NUM = (5);


enum DX_SHADERTYPE_VERTEX = (0);
enum DX_SHADERTYPE_PIXEL = (1);
enum DX_SHADERTYPE_GEOMETRY = (2);
enum DX_SHADERTYPE_COMPUTE = (3);
enum DX_SHADERTYPE_DOMAIN = (4);
enum DX_SHADERTYPE_HULL = (5);


enum DX_VERTEX_TYPE_NORMAL_3D = (0);
enum DX_VERTEX_TYPE_SHADER_3D = (1);
enum DX_VERTEX_TYPE_NUM = (2);


enum DX_INDEX_TYPE_16BIT = (0);
enum DX_INDEX_TYPE_32BIT = (1);


enum DX_LOADMODEL_PHYSICS_DISABLE = (1);
enum DX_LOADMODEL_PHYSICS_LOADCALC = (0);
enum DX_LOADMODEL_PHYSICS_REALTIME = (2);


enum DX_SEMITRANSDRAWMODE_ALWAYS = (0);
enum DX_SEMITRANSDRAWMODE_SEMITRANS_ONLY = (1);
enum DX_SEMITRANSDRAWMODE_NOT_SEMITRANS_ONLY = (2);


enum DX_CUBEMAP_FACE_POSITIVE_X = (0);
enum DX_CUBEMAP_FACE_NEGATIVE_X = (1);
enum DX_CUBEMAP_FACE_POSITIVE_Y = (2);
enum DX_CUBEMAP_FACE_NEGATIVE_Y = (3);
enum DX_CUBEMAP_FACE_POSITIVE_Z = (4);
enum DX_CUBEMAP_FACE_NEGATIVE_Z = (5);


enum DX_PRIMTYPE_POINTLIST = (1);
enum DX_PRIMTYPE_LINELIST = (2);
enum DX_PRIMTYPE_LINESTRIP = (3);
enum DX_PRIMTYPE_TRIANGLELIST = (4);
enum DX_PRIMTYPE_TRIANGLESTRIP = (5);
enum DX_PRIMTYPE_TRIANGLEFAN = (6);


enum DX_LIGHTTYPE_D3DLIGHT_POINT = (1);
enum DX_LIGHTTYPE_D3DLIGHT_SPOT = (2);
enum DX_LIGHTTYPE_D3DLIGHT_DIRECTIONAL = (3);
enum DX_LIGHTTYPE_POINT = (1);
enum DX_LIGHTTYPE_SPOT = (2);
enum DX_LIGHTTYPE_DIRECTIONAL = (3);


enum DX_GRAPHICSIMAGE_FORMAT_3D_PAL4 = (0);
enum DX_GRAPHICSIMAGE_FORMAT_3D_PAL8 = (1);
enum DX_GRAPHICSIMAGE_FORMAT_3D_ALPHA_PAL4 = (2);
enum DX_GRAPHICSIMAGE_FORMAT_3D_ALPHA_PAL8 = (3);
enum DX_GRAPHICSIMAGE_FORMAT_3D_ALPHATEST_PAL4 = (4);
enum DX_GRAPHICSIMAGE_FORMAT_3D_ALPHATEST_PAL8 = (5);
enum DX_GRAPHICSIMAGE_FORMAT_3D_RGB16 = (6);
enum DX_GRAPHICSIMAGE_FORMAT_3D_RGB32 = (7);
enum DX_GRAPHICSIMAGE_FORMAT_3D_ALPHA_RGB16 = (8);
enum DX_GRAPHICSIMAGE_FORMAT_3D_ALPHA_RGB32 = (9);
enum DX_GRAPHICSIMAGE_FORMAT_3D_ALPHATEST_RGB16 = (10);
enum DX_GRAPHICSIMAGE_FORMAT_3D_ALPHATEST_RGB32 = (11);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DXT1 = (12);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DXT2 = (13);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DXT3 = (14);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DXT4 = (15);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DXT5 = (16);
enum DX_GRAPHICSIMAGE_FORMAT_3D_PLATFORM0 = (17);
enum DX_GRAPHICSIMAGE_FORMAT_3D_PLATFORM1 = (18);
enum DX_GRAPHICSIMAGE_FORMAT_3D_PLATFORM2 = (19);
enum DX_GRAPHICSIMAGE_FORMAT_3D_PLATFORM3 = (20);
enum DX_GRAPHICSIMAGE_FORMAT_3D_YUV = (21);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_RGB16 = (22);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_RGB32 = (23);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_ALPHA_RGB32 = (24);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_ABGR_I16 = (25);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_ABGR_F16 = (26);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_ABGR_F32 = (27);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_ONE_I8 = (28);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_ONE_I16 = (29);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_ONE_F16 = (30);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_ONE_F32 = (31);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_TWO_I8 = (32);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_TWO_I16 = (33);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_TWO_F16 = (34);
enum DX_GRAPHICSIMAGE_FORMAT_3D_DRAWVALID_TWO_F32 = (35);
enum DX_GRAPHICSIMAGE_FORMAT_3D_NUM = (36);
enum DX_GRAPHICSIMAGE_FORMAT_2D = (37);
enum DX_GRAPHICSIMAGE_FORMAT_R5G6B5 = (38);
enum DX_GRAPHICSIMAGE_FORMAT_X8A8R5G6B5 = (39);
enum DX_GRAPHICSIMAGE_FORMAT_X8R8G8B8 = (40);
enum DX_GRAPHICSIMAGE_FORMAT_A8R8G8B8 = (41);

enum DX_GRAPHICSIMAGE_FORMAT_NUM = (42);


enum DX_BASEIMAGE_FORMAT_NORMAL = (0);
enum DX_BASEIMAGE_FORMAT_DXT1 = (1);
enum DX_BASEIMAGE_FORMAT_DXT2 = (2);
enum DX_BASEIMAGE_FORMAT_DXT3 = (3);
enum DX_BASEIMAGE_FORMAT_DXT4 = (4);
enum DX_BASEIMAGE_FORMAT_DXT5 = (5);
enum DX_BASEIMAGE_FORMAT_PLATFORM0 = (6);
enum DX_BASEIMAGE_FORMAT_PLATFORM1 = (7);
enum DX_BASEIMAGE_FORMAT_PLATFORM2 = (8);
enum DX_BASEIMAGE_FORMAT_PLATFORM3 = (9);
enum DX_BASEIMAGE_FORMAT_YUV = (10);


enum DX_WIN_ZTYPE_NORMAL = (0);
enum DX_WIN_ZTYPE_BOTTOM = (1);
enum DX_WIN_ZTYPE_TOP = (2);
enum DX_WIN_ZTYPE_TOPMOST = (3);


enum TOOLBUTTON_STATE_ENABLE = (0);
enum TOOLBUTTON_STATE_PRESSED = (1);
enum TOOLBUTTON_STATE_DISABLE = (2);
enum TOOLBUTTON_STATE_PRESSED_DISABLE = (3);
enum TOOLBUTTON_STATE_NUM = (4);


enum TOOLBUTTON_TYPE_NORMAL = (0);
enum TOOLBUTTON_TYPE_CHECK = (1);
enum TOOLBUTTON_TYPE_GROUP = (2);
enum TOOLBUTTON_TYPE_SEP = (3);
enum TOOLBUTTON_TYPE_NUM = (4);


enum MENUITEM_IDTOP = (0xabababab);


enum MENUITEM_ADD_CHILD = (0);
enum MENUITEM_ADD_INSERT = (1);


enum MENUITEM_MARK_NONE = (0);
enum MENUITEM_MARK_CHECK = (1);
enum MENUITEM_MARK_RADIO = (2);


enum DX_NUMMODE_10 = (0);
enum DX_NUMMODE_16 = (1);
enum DX_STRMODE_NOT0 = (2);
enum DX_STRMODE_USE0 = (3);


enum DX_CHECKINPUT_KEY = (0x0001);
enum DX_CHECKINPUT_PAD = (0x0002);
enum DX_CHECKINPUT_MOUSE = (0x0004);
enum DX_CHECKINPUT_ALL = (DX_CHECKINPUT_KEY | DX_CHECKINPUT_PAD | DX_CHECKINPUT_MOUSE);


enum DX_INPUT_KEY_PAD1 = (0x1001);
enum DX_INPUT_PAD1 = (0x0001);
enum DX_INPUT_PAD2 = (0x0002);
enum DX_INPUT_PAD3 = (0x0003);
enum DX_INPUT_PAD4 = (0x0004);
enum DX_INPUT_PAD5 = (0x0005);
enum DX_INPUT_PAD6 = (0x0006);
enum DX_INPUT_PAD7 = (0x0007);
enum DX_INPUT_PAD8 = (0x0008);
enum DX_INPUT_PAD9 = (0x0009);
enum DX_INPUT_PAD10 = (0x000a);
enum DX_INPUT_PAD11 = (0x000b);
enum DX_INPUT_PAD12 = (0x000c);
enum DX_INPUT_PAD13 = (0x000d);
enum DX_INPUT_PAD14 = (0x000e);
enum DX_INPUT_PAD15 = (0x000f);
enum DX_INPUT_PAD16 = (0x0010);
enum DX_INPUT_KEY = (0x1000);


enum DX_MOVIESURFACE_NORMAL = (0);
enum DX_MOVIESURFACE_OVERLAY = (1);
enum DX_MOVIESURFACE_FULLCOLOR = (2);


enum TOUCHINPUTPOINT_MAX = (16);


enum PAD_INPUT_DOWN = (0x00000001);
enum PAD_INPUT_LEFT = (0x00000002);
enum PAD_INPUT_RIGHT = (0x00000004);
enum PAD_INPUT_UP = (0x00000008);
enum PAD_INPUT_A = (0x00000010);
enum PAD_INPUT_B = (0x00000020);
enum PAD_INPUT_C = (0x00000040);
enum PAD_INPUT_X = (0x00000080);
enum PAD_INPUT_Y = (0x00000100);
enum PAD_INPUT_Z = (0x00000200);
enum PAD_INPUT_L = (0x00000400);
enum PAD_INPUT_R = (0x00000800);
enum PAD_INPUT_START = (0x00001000);
enum PAD_INPUT_M = (0x00002000);
enum PAD_INPUT_D = (0x00004000);
enum PAD_INPUT_F = (0x00008000);
enum PAD_INPUT_G = (0x00010000);
enum PAD_INPUT_H = (0x00020000);
enum PAD_INPUT_I = (0x00040000);
enum PAD_INPUT_J = (0x00080000);
enum PAD_INPUT_K = (0x00100000);
enum PAD_INPUT_LL = (0x00200000);
enum PAD_INPUT_N = (0x00400000);
enum PAD_INPUT_O = (0x00800000);
enum PAD_INPUT_P = (0x01000000);
enum PAD_INPUT_RR = (0x02000000);
enum PAD_INPUT_S = (0x04000000);
enum PAD_INPUT_T = (0x08000000);
enum PAD_INPUT_U = (0x10000000);
enum PAD_INPUT_V = (0x20000000);
enum PAD_INPUT_W = (0x40000000);
enum PAD_INPUT_XX = (0x80000000);

enum PAD_INPUT_1 = (0x00000010);
enum PAD_INPUT_2 = (0x00000020);
enum PAD_INPUT_3 = (0x00000040);
enum PAD_INPUT_4 = (0x00000080);
enum PAD_INPUT_5 = (0x00000100);
enum PAD_INPUT_6 = (0x00000200);
enum PAD_INPUT_7 = (0x00000400);
enum PAD_INPUT_8 = (0x00000800);
enum PAD_INPUT_9 = (0x00001000);
enum PAD_INPUT_10 = (0x00002000);
enum PAD_INPUT_11 = (0x00004000);
enum PAD_INPUT_12 = (0x00008000);
enum PAD_INPUT_13 = (0x00010000);
enum PAD_INPUT_14 = (0x00020000);
enum PAD_INPUT_15 = (0x00040000);
enum PAD_INPUT_16 = (0x00080000);
enum PAD_INPUT_17 = (0x00100000);
enum PAD_INPUT_18 = (0x00200000);
enum PAD_INPUT_19 = (0x00400000);
enum PAD_INPUT_20 = (0x00800000);
enum PAD_INPUT_21 = (0x01000000);
enum PAD_INPUT_22 = (0x02000000);
enum PAD_INPUT_23 = (0x04000000);
enum PAD_INPUT_24 = (0x08000000);
enum PAD_INPUT_25 = (0x10000000);
enum PAD_INPUT_26 = (0x20000000);
enum PAD_INPUT_27 = (0x40000000);
enum PAD_INPUT_28 = (0x80000000);


enum XINPUT_BUTTON_DPAD_UP = (0);
enum XINPUT_BUTTON_DPAD_DOWN = (1);
enum XINPUT_BUTTON_DPAD_LEFT = (2);
enum XINPUT_BUTTON_DPAD_RIGHT = (3);
enum XINPUT_BUTTON_START = (4);
enum XINPUT_BUTTON_BACK = (5);
enum XINPUT_BUTTON_LEFT_THUMB = (6);
enum XINPUT_BUTTON_RIGHT_THUMB = (7);
enum XINPUT_BUTTON_LEFT_SHOULDER = (8);
enum XINPUT_BUTTON_RIGHT_SHOULDER = (9);
enum XINPUT_BUTTON_A = (12);
enum XINPUT_BUTTON_B = (13);
enum XINPUT_BUTTON_X = (14);
enum XINPUT_BUTTON_Y = (15);


enum MOUSE_INPUT_LEFT = (0x0001);
enum MOUSE_INPUT_RIGHT = (0x0002);
enum MOUSE_INPUT_MIDDLE = (0x0004);
enum MOUSE_INPUT_1 = (0x0001);
enum MOUSE_INPUT_2 = (0x0002);
enum MOUSE_INPUT_3 = (0x0004);
enum MOUSE_INPUT_4 = (0x0008);
enum MOUSE_INPUT_5 = (0x0010);
enum MOUSE_INPUT_6 = (0x0020);
enum MOUSE_INPUT_7 = (0x0040);
enum MOUSE_INPUT_8 = (0x0080);


enum KEY_INPUT_BACK = (0x0E);
enum KEY_INPUT_TAB = (0x0F);
enum KEY_INPUT_RETURN = (0x1C);

enum KEY_INPUT_LSHIFT = (0x2A);
enum KEY_INPUT_RSHIFT = (0x36);
enum KEY_INPUT_LCONTROL = (0x1D);
enum KEY_INPUT_RCONTROL = (0x9D);
enum KEY_INPUT_ESCAPE = (0x01);
enum KEY_INPUT_SPACE = (0x39);
enum KEY_INPUT_PGUP = (0xC9);
enum KEY_INPUT_PGDN = (0xD1);
enum KEY_INPUT_END = (0xCF);
enum KEY_INPUT_HOME = (0xC7);
enum KEY_INPUT_LEFT = (0xCB);
enum KEY_INPUT_UP = (0xC8);
enum KEY_INPUT_RIGHT = (0xCD);
enum KEY_INPUT_DOWN = (0xD0);
enum KEY_INPUT_INSERT = (0xD2);
enum KEY_INPUT_DELETE = (0xD3);

enum KEY_INPUT_MINUS = (0x0C);
enum KEY_INPUT_YEN = (0x7D);
enum KEY_INPUT_PREVTRACK = (0x90);
enum KEY_INPUT_PERIOD = (0x34);
enum KEY_INPUT_SLASH = (0x35);
enum KEY_INPUT_LALT = (0x38);
enum KEY_INPUT_RALT = (0xB8);
enum KEY_INPUT_SCROLL = (0x46);
enum KEY_INPUT_SEMICOLON = (0x27);
enum KEY_INPUT_COLON = (0x92);
enum KEY_INPUT_LBRACKET = (0x1A);
enum KEY_INPUT_RBRACKET = (0x1B);
enum KEY_INPUT_AT = (0x91);
enum KEY_INPUT_BACKSLASH = (0x2B);
enum KEY_INPUT_COMMA = (0x33);
enum KEY_INPUT_KANJI = (0x94);
enum KEY_INPUT_CONVERT = (0x79);
enum KEY_INPUT_NOCONVERT = (0x7B);
enum KEY_INPUT_KANA = (0x70);
enum KEY_INPUT_APPS = (0xDD);
enum KEY_INPUT_CAPSLOCK = (0x3A);
enum KEY_INPUT_SYSRQ = (0xB7);
enum KEY_INPUT_PAUSE = (0xC5);
enum KEY_INPUT_LWIN = (0xDB);
enum KEY_INPUT_RWIN = (0xDC);

enum KEY_INPUT_NUMLOCK = (0x45);
enum KEY_INPUT_NUMPAD0 = (0x52);
enum KEY_INPUT_NUMPAD1 = (0x4F);
enum KEY_INPUT_NUMPAD2 = (0x50);
enum KEY_INPUT_NUMPAD3 = (0x51);
enum KEY_INPUT_NUMPAD4 = (0x4B);
enum KEY_INPUT_NUMPAD5 = (0x4C);
enum KEY_INPUT_NUMPAD6 = (0x4D);
enum KEY_INPUT_NUMPAD7 = (0x47);
enum KEY_INPUT_NUMPAD8 = (0x48);
enum KEY_INPUT_NUMPAD9 = (0x49);
enum KEY_INPUT_MULTIPLY = (0x37);
enum KEY_INPUT_ADD = (0x4E);
enum KEY_INPUT_SUBTRACT = (0x4A);
enum KEY_INPUT_DECIMAL = (0x53);
enum KEY_INPUT_DIVIDE = (0xB5);
enum KEY_INPUT_NUMPADENTER = (0x9C);

enum KEY_INPUT_F1 = (0x3B);
enum KEY_INPUT_F2 = (0x3C);
enum KEY_INPUT_F3 = (0x3D);
enum KEY_INPUT_F4 = (0x3E);
enum KEY_INPUT_F5 = (0x3F);
enum KEY_INPUT_F6 = (0x40);
enum KEY_INPUT_F7 = (0x41);
enum KEY_INPUT_F8 = (0x42);
enum KEY_INPUT_F9 = (0x43);
enum KEY_INPUT_F10 = (0x44);
enum KEY_INPUT_F11 = (0x57);
enum KEY_INPUT_F12 = (0x58);

enum KEY_INPUT_A = (0x1E);
enum KEY_INPUT_B = (0x30);
enum KEY_INPUT_C = (0x2E);
enum KEY_INPUT_D = (0x20);
enum KEY_INPUT_E = (0x12);
enum KEY_INPUT_F = (0x21);
enum KEY_INPUT_G = (0x22);
enum KEY_INPUT_H = (0x23);
enum KEY_INPUT_I = (0x17);
enum KEY_INPUT_J = (0x24);
enum KEY_INPUT_K = (0x25);
enum KEY_INPUT_L = (0x26);
enum KEY_INPUT_M = (0x32);
enum KEY_INPUT_N = (0x31);
enum KEY_INPUT_O = (0x18);
enum KEY_INPUT_P = (0x19);
enum KEY_INPUT_Q = (0x10);
enum KEY_INPUT_R = (0x13);
enum KEY_INPUT_S = (0x1F);
enum KEY_INPUT_T = (0x14);
enum KEY_INPUT_U = (0x16);
enum KEY_INPUT_V = (0x2F);
enum KEY_INPUT_W = (0x11);
enum KEY_INPUT_X = (0x2D);
enum KEY_INPUT_Y = (0x15);
enum KEY_INPUT_Z = (0x2C);

enum KEY_INPUT_0 = (0x0B);
enum KEY_INPUT_1 = (0x02);
enum KEY_INPUT_2 = (0x03);
enum KEY_INPUT_3 = (0x04);
enum KEY_INPUT_4 = (0x05);
enum KEY_INPUT_5 = (0x06);
enum KEY_INPUT_6 = (0x07);
enum KEY_INPUT_7 = (0x08);
enum KEY_INPUT_8 = (0x09);
enum KEY_INPUT_9 = (0x0A);


enum CTRL_CODE_BS = (0x08);
enum CTRL_CODE_TAB = (0x09);
enum CTRL_CODE_CR = (0x0d);
enum CTRL_CODE_DEL = (0x10);

enum CTRL_CODE_COPY = (0x03);
enum CTRL_CODE_PASTE = (0x16);
enum CTRL_CODE_CUT = (0x18);
enum CTRL_CODE_ALL = (0x01);

enum CTRL_CODE_LEFT = (0x1d);
enum CTRL_CODE_RIGHT = (0x1c);
enum CTRL_CODE_UP = (0x1e);
enum CTRL_CODE_DOWN = (0x1f);

enum CTRL_CODE_HOME = (0x1a);
enum CTRL_CODE_END = (0x19);
enum CTRL_CODE_PAGE_UP = (0x17);
enum CTRL_CODE_PAGE_DOWN = (0x15);

enum CTRL_CODE_ESC = (0x1b);
enum CTRL_CODE_CMP = (0x20);


enum DX_KEYINPSTRCOLOR_NORMAL_STR = (0);
enum DX_KEYINPSTRCOLOR_NORMAL_STR_EDGE = (1);
enum DX_KEYINPSTRCOLOR_NORMAL_CURSOR = (2);
enum DX_KEYINPSTRCOLOR_SELECT_STR = (3);
enum DX_KEYINPSTRCOLOR_SELECT_STR_EDGE = (4);
enum DX_KEYINPSTRCOLOR_SELECT_STR_BACK = (5);
enum DX_KEYINPSTRCOLOR_IME_STR = (6);
enum DX_KEYINPSTRCOLOR_IME_STR_EDGE = (7);
enum DX_KEYINPSTRCOLOR_IME_STR_BACK = (8);
enum DX_KEYINPSTRCOLOR_IME_CURSOR = (9);
enum DX_KEYINPSTRCOLOR_IME_LINE = (10);
enum DX_KEYINPSTRCOLOR_IME_SELECT_STR = (11);
enum DX_KEYINPSTRCOLOR_IME_SELECT_STR_EDGE = (12);
enum DX_KEYINPSTRCOLOR_IME_SELECT_STR_BACK = (13);
enum DX_KEYINPSTRCOLOR_IME_CONV_WIN_STR = (14);
enum DX_KEYINPSTRCOLOR_IME_CONV_WIN_STR_EDGE = (15);
enum DX_KEYINPSTRCOLOR_IME_CONV_WIN_SELECT_STR = (16);
enum DX_KEYINPSTRCOLOR_IME_CONV_WIN_SELECT_STR_EDGE = (17);
enum DX_KEYINPSTRCOLOR_IME_CONV_WIN_SELECT_STR_BACK = (18);
enum DX_KEYINPSTRCOLOR_IME_CONV_WIN_EDGE = (19);
enum DX_KEYINPSTRCOLOR_IME_CONV_WIN_BACK = (20);
enum DX_KEYINPSTRCOLOR_IME_MODE_STR = (21);
enum DX_KEYINPSTRCOLOR_IME_MODE_STR_EDGE = (22);
enum DX_KEYINPSTRCOLOR_NUM = (23);


enum DX_KEYINPSTR_ENDCHARAMODE_OVERWRITE = (0);
enum DX_KEYINPSTR_ENDCHARAMODE_NOTCHANGE = (1);


enum DX_FSRESOLUTIONMODE_DESKTOP = (0);
enum DX_FSRESOLUTIONMODE_NATIVE = (1);
enum DX_FSRESOLUTIONMODE_MAXIMUM = (2);


enum DX_FSSCALINGMODE_BILINEAR = (0);
enum DX_FSSCALINGMODE_NEAREST = (1);


enum DX_CHANGESCREEN_OK = (0);
enum DX_CHANGESCREEN_RETURN = (-1);
enum DX_CHANGESCREEN_DEFAULT = (-2);
enum DX_CHANGESCREEN_REFRESHNORMAL = (-3);




enum STREAM_SEEKTYPE_SET = (SEEK_SET);
enum STREAM_SEEKTYPE_END = (SEEK_END);
enum STREAM_SEEKTYPE_CUR = (SEEK_CUR);


enum LOADIMAGE_TYPE_FILE = (0);
enum LOADIMAGE_TYPE_MEM = (1);
enum LOADIMAGE_TYPE_NONE = (-1);





enum HTTP_ERR_SERVER = (0);
enum HTTP_ERR_NOTFOUND = (1);
enum HTTP_ERR_MEMORY = (2);
enum HTTP_ERR_LOST = (3);
enum HTTP_ERR_NONE = (-1);


enum HTTP_RES_COMPLETE = (0);
enum HTTP_RES_STOP = (1);
enum HTTP_RES_ERROR = (2);
enum HTTP_RES_NOW = (-1);







struct tWAVEFORMATEX
{
	WORD					wFormatTag ;
	WORD					nChannels ;
	DWORD					nSamplesPerSec ;
	DWORD					nAvgBytesPerSec ;
	WORD					nBlockAlign ;
	WORD					wBitsPerSample ;
	WORD					cbSize ;
}

alias tWAVEFORMATEX 	WAVEFORMATEX;alias tWAVEFORMATEX  *PWAVEFORMATEX;




struct waveformat_tag
{
	WORD					wFormatTag ;
	WORD					nChannels ;
	DWORD					nSamplesPerSec ;
	DWORD					nAvgBytesPerSec ;
	WORD					nBlockAlign ;
}

alias waveformat_tag 	WAVEFORMAT;alias waveformat_tag  *PWAVEFORMAT;

enum WAVE_FORMAT_PCM = 1;



extern(C++, DxLib)
{




struct tagIMEINPUTCLAUSEDATA
{
	int						Position ;
	int						Length ;
}alias tagIMEINPUTCLAUSEDATA   IMEINPUTCLAUSEDATA;alias tagIMEINPUTCLAUSEDATA  *LPIMEINPUTCLAUSEDATA ;


struct tagIMEINPUTDATA
{
	const(TCHAR)*				InputString ;

	int							CursorPosition ;

	const(IMEINPUTCLAUSEDATA)*	ClauseData ;
	int							ClauseNum ;
	int							SelectClause ;

	int							CandidateNum ;
	const(TCHAR)**				CandidateList ;
	int							SelectCandidate ;

	int							ConvertFlag ;
}alias tagIMEINPUTDATA   IMEINPUTDATA;alias tagIMEINPUTDATA  *LPIMEINPUTDATA ;


struct tagDISPLAYMODEDATA
{
	int						Width ;
	int						Height ;
	int						ColorBitDepth ;
	int						RefreshRate ;
}alias tagDISPLAYMODEDATA   DISPLAYMODEDATA;alias tagDISPLAYMODEDATA  *LPDISPLAYMODEDATA ;


struct tagDATEDATA
{
	int						Year ;
	int						Mon ;
	int						Day ;
	int						Hour ;
	int						Min ;
	int						Sec ;
}alias tagDATEDATA   DATEDATA;alias tagDATEDATA  *LPDATEDATA ;


struct tagFILEINFO
{
	TCHAR					Name[ 260 ] ;
	int						DirFlag ;
	LONGLONG				Size ;
	DATEDATA				CreationTime ;
	DATEDATA				LastWriteTime ;
}alias tagFILEINFO   FILEINFO;alias tagFILEINFO  *LPFILEINFO ;


struct tagFILEINFOW
{
	wchar					Name[ 260 ] ;
	int						DirFlag ;
	LONGLONG				Size ;
	DATEDATA				CreationTime ;
	DATEDATA				LastWriteTime ;
}alias tagFILEINFOW   FILEINFOW;alias tagFILEINFOW  *LPFILEINFOW ;


struct tagMATRIX
{
	float					m[4][4] ;
}alias tagMATRIX   MATRIX;alias tagMATRIX  *LPMATRIX ;

struct tagMATRIX_D
{
	double					m[4][4] ;
}alias tagMATRIX_D   MATRIX_D;alias tagMATRIX_D  *LPMATRIX_D ;


struct tagVECTOR
{
	float					x, y, z ;
}alias tagVECTOR   VECTOR;alias tagVECTOR  *LPVECTOR;alias tagVECTOR  FLOAT3;alias tagVECTOR  *LPFLOAT3 ;

struct tagVECTOR_D
{
	double					x, y, z ;
}alias tagVECTOR_D   VECTOR_D;alias tagVECTOR_D  *LPVECTOR_D;alias tagVECTOR_D  DOUBLE3;alias tagVECTOR_D  *LPDOUBLE3 ;


struct tagFLOAT2
{
	float					u, v ;
}alias tagFLOAT2   FLOAT2 ;


struct tagCOLOR_F
{
	float					r, g, b, a ;
}alias tagCOLOR_F   COLOR_F;alias tagCOLOR_F  *LPCOLOR_F ;


struct tagCOLOR_U8
{
	BYTE					b, g, r, a ;
}alias tagCOLOR_U8   COLOR_U8 ;


struct tagFLOAT4
{
	float					x, y, z, w ;
}alias tagFLOAT4   FLOAT4;alias tagFLOAT4  *LPFLOAT4 ;


struct tagDOUBLE4
{
	double					x, y, z, w ;
}alias tagDOUBLE4   DOUBLE4;alias tagDOUBLE4  *LPDOUBLE4 ;


struct tagINT4
{
	int						x, y, z, w ;
}alias tagINT4   INT4 ;



struct tagVERTEX2D
{
	VECTOR					pos ;
	float					rhw ;
	COLOR_U8				dif ;
	float					u, v ;
}alias tagVERTEX2D   VERTEX2D;alias tagVERTEX2D  *LPVERTEX2D ;


struct tagVERTEX2DSHADER
{
	VECTOR					pos ;
	float					rhw ;
	COLOR_U8				dif ;
	COLOR_U8				spc ;
	float					u, v ;
	float					su, sv ;
}alias tagVERTEX2DSHADER   VERTEX2DSHADER;alias tagVERTEX2DSHADER  *LPVERTEX2DSHADER ;


struct tagVERTEX
{
	float					x, y ;
	float					u, v ;
	ubyte			b, g, r, a ;
}alias tagVERTEX   VERTEX ;


struct tagVERTEX_3D
{
	VECTOR					pos ;
	ubyte			b, g, r, a ;
	float					u, v ;
}alias tagVERTEX_3D   VERTEX_3D;alias tagVERTEX_3D  *LPVERTEX_3D ;


struct tagVERTEX3D
{
	VECTOR					pos ;
	VECTOR					norm ;
	COLOR_U8				dif ;
	COLOR_U8				spc ;
	float					u, v ;
	float					su, sv ;
}alias tagVERTEX3D   VERTEX3D;alias tagVERTEX3D  *LPVERTEX3D ;



struct tagVERTEX3DSHADER
{
	VECTOR					pos ;
	FLOAT4					spos ;
	VECTOR					norm ;
	VECTOR					tan ;
	VECTOR					binorm ;
	COLOR_U8				dif ;
	COLOR_U8				spc ;
	float					u, v ;
	float					su, sv ;
}alias tagVERTEX3DSHADER   VERTEX3DSHADER;alias tagVERTEX3DSHADER  *LPVERTEX3DSHADER ;


struct tagLIGHTPARAM
{
	int						LightType ;
	COLOR_F					Diffuse ;
	COLOR_F					Specular ;
	COLOR_F					Ambient ;
	VECTOR					Position ;
	VECTOR					Direction ;
	float					Range ;
	float					Falloff ;
	float					Attenuation0 ;
	float					Attenuation1 ;
	float					Attenuation2 ;
	float					Theta ;
	float					Phi ;
}alias tagLIGHTPARAM   LIGHTPARAM ;


struct tagMATERIALPARAM
{
	COLOR_F					Diffuse ;
	COLOR_F					Ambient ;
	COLOR_F					Specular ;
	COLOR_F					Emissive ;
	float					Power ;
}alias tagMATERIALPARAM   MATERIALPARAM ;



struct tagHITRESULT_LINE
{
	int						HitFlag ;
	VECTOR					Position ;
}alias tagHITRESULT_LINE   HITRESULT_LINE ;


struct tagHITRESULT_LINE_D
{
	int						HitFlag ;
	VECTOR_D				Position ;
}alias tagHITRESULT_LINE_D   HITRESULT_LINE_D ;


struct tagSEGMENT_SEGMENT_RESULT
{
	float					SegA_SegB_MinDist_Square ;

	float					SegA_MinDist_Pos1_Pos2_t ;
	float					SegB_MinDist_Pos1_Pos2_t ;

	VECTOR					SegA_MinDist_Pos ;
	VECTOR					SegB_MinDist_Pos ;
}alias tagSEGMENT_SEGMENT_RESULT   SEGMENT_SEGMENT_RESULT ;


struct tagSEGMENT_SEGMENT_RESULT_D
{
	double					SegA_SegB_MinDist_Square ;

	double					SegA_MinDist_Pos1_Pos2_t ;
	double					SegB_MinDist_Pos1_Pos2_t ;

	VECTOR_D				SegA_MinDist_Pos ;
	VECTOR_D				SegB_MinDist_Pos ;
}alias tagSEGMENT_SEGMENT_RESULT_D   SEGMENT_SEGMENT_RESULT_D ;


struct tagSEGMENT_POINT_RESULT
{
	float					Seg_Point_MinDist_Square ;
	float					Seg_MinDist_Pos1_Pos2_t ;
	VECTOR					Seg_MinDist_Pos ;
}alias tagSEGMENT_POINT_RESULT   SEGMENT_POINT_RESULT ;


struct tagSEGMENT_POINT_RESULT_D
{
	double					Seg_Point_MinDist_Square ;
	double					Seg_MinDist_Pos1_Pos2_t ;
	VECTOR_D				Seg_MinDist_Pos ;
}alias tagSEGMENT_POINT_RESULT_D   SEGMENT_POINT_RESULT_D ;


struct tagSEGMENT_TRIANGLE_RESULT
{
	float					Seg_Tri_MinDist_Square ;

	float					Seg_MinDist_Pos1_Pos2_t ;
	VECTOR					Seg_MinDist_Pos ;

	float					Tri_MinDist_Pos1_w ;
	float					Tri_MinDist_Pos2_w ;
	float					Tri_MinDist_Pos3_w ;
	VECTOR					Tri_MinDist_Pos ;
}alias tagSEGMENT_TRIANGLE_RESULT   SEGMENT_TRIANGLE_RESULT ;


struct tagSEGMENT_TRIANGLE_RESULT_D
{
	double					Seg_Tri_MinDist_Square ;

	double					Seg_MinDist_Pos1_Pos2_t ;
	VECTOR_D				Seg_MinDist_Pos ;

	double					Tri_MinDist_Pos1_w ;
	double					Tri_MinDist_Pos2_w ;
	double					Tri_MinDist_Pos3_w ;
	VECTOR_D				Tri_MinDist_Pos ;
}alias tagSEGMENT_TRIANGLE_RESULT_D   SEGMENT_TRIANGLE_RESULT_D ;


struct tagTRIANGLE_POINT_RESULT
{
	float					Tri_Pnt_MinDist_Square ;

	float					Tri_MinDist_Pos1_w ;
	float					Tri_MinDist_Pos2_w ;
	float					Tri_MinDist_Pos3_w ;
	VECTOR					Tri_MinDist_Pos ;
}alias tagTRIANGLE_POINT_RESULT   TRIANGLE_POINT_RESULT ;


struct tagTRIANGLE_POINT_RESULT_D
{
	double					Tri_Pnt_MinDist_Square ;

	double					Tri_MinDist_Pos1_w ;
	double					Tri_MinDist_Pos2_w ;
	double					Tri_MinDist_Pos3_w ;
	VECTOR_D				Tri_MinDist_Pos ;
}alias tagTRIANGLE_POINT_RESULT_D   TRIANGLE_POINT_RESULT_D ;


struct tagPLANE_POINT_RESULT
{
	int						Pnt_Plane_Normal_Side ;
	float					Plane_Pnt_MinDist_Square ;
	VECTOR					Plane_MinDist_Pos ;
}alias tagPLANE_POINT_RESULT   PLANE_POINT_RESULT ;


struct tagPLANE_POINT_RESULT_D
{
	int						Pnt_Plane_Normal_Side ;
	double					Plane_Pnt_MinDist_Square ;
	VECTOR_D				Plane_MinDist_Pos ;
}alias tagPLANE_POINT_RESULT_D   PLANE_POINT_RESULT_D ;



struct tagMV1_COLL_RESULT_POLY
{
	int						HitFlag ;
	VECTOR					HitPosition ;

	int						FrameIndex ;
	int						PolygonIndex ;
	int						MaterialIndex ;
	VECTOR					Position[ 3 ] ;
	VECTOR					Normal ;
}alias tagMV1_COLL_RESULT_POLY   MV1_COLL_RESULT_POLY ;


struct tagMV1_COLL_RESULT_POLY_DIM
{
	int						HitNum ;
	MV1_COLL_RESULT_POLY *	Dim ;
}alias tagMV1_COLL_RESULT_POLY_DIM   MV1_COLL_RESULT_POLY_DIM ;


struct tagMV1_REF_VERTEX
{
	VECTOR					Position ;
	VECTOR					Normal ;
	FLOAT2					TexCoord[ 2 ] ;
	COLOR_U8				DiffuseColor ;
	COLOR_U8				SpecularColor ;
}alias tagMV1_REF_VERTEX   MV1_REF_VERTEX ;


struct tagMV1_REF_POLYGON
{
	ushort			FrameIndex ;
	ushort			MaterialIndex ;
	int						VIndexTarget ;
	int						VIndex[ 3 ] ;
	VECTOR					MinPosition ;
	VECTOR					MaxPosition ;
}alias tagMV1_REF_POLYGON   MV1_REF_POLYGON ;


struct tagMV1_REF_POLYGONLIST
{
	int						PolygonNum ;
	int						VertexNum ;
	VECTOR					MinPosition ;
	VECTOR					MaxPosition ;
	MV1_REF_POLYGON	*		Polygons ;
	MV1_REF_VERTEX *		Vertexs ;
}alias tagMV1_REF_POLYGONLIST   MV1_REF_POLYGONLIST ;







struct tagSOUND3D_REVERB_PARAM
{
	float					WetDryMix ;

	uint			ReflectionsDelay ;
	BYTE					ReverbDelay ;
	BYTE					RearDelay ;

	BYTE					PositionLeft ;




	BYTE					PositionRight ;
	BYTE					PositionMatrixLeft ;
	BYTE					PositionMatrixRight ;
	BYTE					EarlyDiffusion ;
	BYTE					LateDiffusion ;
	BYTE					LowEQGain ;




	BYTE					LowEQCutoff ;



	BYTE					HighEQGain ;




	BYTE					HighEQCutoff ;




	float					RoomFilterFreq ;
	float					RoomFilterMain ;
	float					RoomFilterHF ;
	float					ReflectionsGain ;
	float					ReverbGain ;
	float					DecayTime ;
	float					Density ;



	float					RoomSize ;
}alias tagSOUND3D_REVERB_PARAM   SOUND3D_REVERB_PARAM ;






struct tagSTREAMDATASHREDTYPE2
{
	DWORD_PTR				 function( const(TCHAR)*Path, int UseCacheFlag, int BlockReadFlag, int UseASyncReadFlag )Open ;
	int						 function( DWORD_PTR Handle )Close ;
	LONGLONG				 function( DWORD_PTR Handle )Tell ;
	int						 function( DWORD_PTR Handle, LONGLONG SeekPoint, int SeekType )Seek ;
	size_t					 function( void *Buffer, size_t BlockSize, size_t DataNum, DWORD_PTR Handle )Read ;
	int						 function( DWORD_PTR Handle )Eof ;
	int						 function( DWORD_PTR Handle )IdleCheck ;
	int						 function( const(TCHAR)*Path )ChDir ;
	int						 function( TCHAR *Buffer )GetDir ;
	DWORD_PTR				 function( const(TCHAR)*FilePath, FILEINFO *Buffer )FindFirst ;
	int						 function( DWORD_PTR FindHandle, FILEINFO *Buffer )FindNext ;
	int						 function( DWORD_PTR FindHandle )FindClose ;
}alias tagSTREAMDATASHREDTYPE2   STREAMDATASHREDTYPE2 ;


struct tagSTREAMDATASHREDTYPE2W
{
	DWORD_PTR				 function( const(wchar)*Path, int UseCacheFlag, int BlockReadFlag, int UseASyncReadFlag )Open ;
	int						 function( DWORD_PTR Handle )Close ;
	LONGLONG				 function( DWORD_PTR Handle )Tell ;
	int						 function( DWORD_PTR Handle, LONGLONG SeekPoint, int SeekType )Seek ;
	size_t					 function( void *Buffer, size_t BlockSize, size_t DataNum, DWORD_PTR Handle )Read ;
	int						 function( DWORD_PTR Handle )Eof ;
	int						 function( DWORD_PTR Handle )IdleCheck ;
	int						 function( const(wchar)*Path )ChDir ;
	int						 function( wchar *Buffer )GetDir ;
	DWORD_PTR				 function( const(wchar)*FilePath, FILEINFOW *Buffer )FindFirst ;
	int						 function( DWORD_PTR FindHandle, FILEINFOW *Buffer )FindNext ;
	int						 function( DWORD_PTR FindHandle )FindClose ;
}alias tagSTREAMDATASHREDTYPE2W   STREAMDATASHREDTYPE2W ;


struct tagSTREAMDATASHRED
{
	LONGLONG				 function( void *StreamDataPoint )Tell ;
	int						 function( void *StreamDataPoint, LONGLONG SeekPoint, int SeekType )Seek ;
	size_t					 function( void *Buffer, size_t BlockSize, size_t DataNum, void *StreamDataPoint )Read ;

	int						 function( void *StreamDataPoint )Eof ;
	int						 function( void *StreamDataPoint )IdleCheck ;
	int						 function( void *StreamDataPoint )Close ;
}alias tagSTREAMDATASHRED   STREAMDATASHRED;alias tagSTREAMDATASHRED  *LPSTREAMDATASHRED ;


struct tagSTREAMDATA
{
	STREAMDATASHRED			ReadShred ;
	void					*DataPoint ;
}alias tagSTREAMDATA   STREAMDATA ;






struct tagCOLORPALETTEDATA
{
	ubyte			Blue ;
	ubyte			Green ;
	ubyte			Red ;
	ubyte			Alpha ;
}alias tagCOLORPALETTEDATA   COLORPALETTEDATA ;


struct tagCOLORDATA
{
	ubyte			Format ;

	ubyte			ChannelNum ;
	ubyte			ChannelBitDepth ;
	ubyte			FloatTypeFlag ;
	ubyte			PixelByte ;


	ubyte			ColorBitDepth ;
	ubyte			NoneLoc, NoneWidth ;
	ubyte			RedWidth, GreenWidth, BlueWidth, AlphaWidth ;
	ubyte			RedLoc	, GreenLoc  , BlueLoc  , AlphaLoc   ;
	uint			RedMask , GreenMask , BlueMask , AlphaMask  ;
	uint			NoneMask ;
	int						MaxPaletteNo ;


	COLORPALETTEDATA		Palette[ 256 ] ;
}alias tagCOLORDATA   COLORDATA;alias tagCOLORDATA  *LPCOLORDATA ;


struct tagBASEIMAGE
{
	COLORDATA				ColorData ;
	int						Width, Height, Pitch ;
	void					*GraphData ;
	int						MipMapCount ;
	int						GraphDataCount ;
}alias tagBASEIMAGE   BASEIMAGE;alias tagBASEIMAGE  GRAPHIMAGE;alias tagBASEIMAGE  *LPGRAPHIMAGE ;


struct tagLINEDATA
{
	int						x1, y1, x2, y2 ;
	uint			color ;
	int						pal ;
}alias tagLINEDATA   LINEDATA;alias tagLINEDATA  *LPLINEDATA ;


struct tagPOINTDATA
{
	int						x, y ;
	uint			color ;
	int						pal ;
}alias tagPOINTDATA   POINTDATA;alias tagPOINTDATA  *LPPOINTDATA ;



struct tagIMAGEFORMATDESC
{
	ubyte			TextureFlag ;
	ubyte			CubeMapTextureFlag ;
	ubyte			AlphaChFlag ;
	ubyte			DrawValidFlag ;
	ubyte			SystemMemFlag ;
	ubyte			UseManagedTextureFlag ;
	ubyte			UseLinearMapTextureFlag ;
	ubyte			PlatformTextureFormat ;

	ubyte			BaseFormat ;
	ubyte			MipMapCount ;
	ubyte			AlphaTestFlag ;
	ubyte			FloatTypeFlag ;
	ubyte			ColorBitDepth ;
	ubyte			ChannelNum ;
	ubyte			ChannelBitDepth ;
	ubyte			BlendGraphFlag ;
	ubyte			UsePaletteFlag ;

	ubyte			MSSamples ;
	ubyte			MSQuality ;
}alias tagIMAGEFORMATDESC   IMAGEFORMATDESC ;



struct tagDINPUT_JOYSTATE
{
	int						X ;
	int						Y ;
	int						Z ;
	int						Rx ;
	int						Ry ;
	int						Rz ;
	int						Slider[ 2 ] ;
	uint			POV[ 4 ] ;
	ubyte			Buttons[ 32 ] ;
}alias tagDINPUT_JOYSTATE   DINPUT_JOYSTATE ;


struct tagXINPUT_STATE
{
	ubyte			Buttons[ 16 ] ;
	ubyte			LeftTrigger ;
	ubyte			RightTrigger ;
	short					ThumbLX ;
	short					ThumbLY ;
	short					ThumbRX ;
	short					ThumbRY ;
}alias tagXINPUT_STATE   XINPUT_STATE ;


struct tagTOUCHINPUTPOINT
{
	DWORD					Device ;
	DWORD					ID ;
	int						PositionX ;
	int						PositionY ;
}alias tagTOUCHINPUTPOINT   TOUCHINPUTPOINT ;


struct tagTOUCHINPUTDATA
{
	LONGLONG				Time ;

	int						PointNum ;
	TOUCHINPUTPOINT			Point[ TOUCHINPUTPOINT_MAX ] ;
}alias tagTOUCHINPUTDATA   TOUCHINPUTDATA ;







struct tagIPDATA
{
	ubyte			d1, d2, d3, d4 ;
}alias tagIPDATA   IPDATA;alias tagIPDATA  *LPIPDATA ;

struct tagIPDATA_IPv6
{
	union
	{
		ubyte			Byte[ 16 ] ;
		ushort			Word[ 8 ] ;
	}
}alias tagIPDATA_IPv6   IPDATA_IPv6 ;




int				GetResourceInfo(		const(TCHAR)*ResourceName , const(TCHAR)*ResourceType , void **DataPointerP , int *DataSizeP ) ;
const(TCHAR)*	GetResourceIDString(	int ResourceID ) ;


int			GetWindowCRect(					RECT *RectBuf ) ;
int			GetWindowActiveFlag() ;
int			GetWindowMinSizeFlag() ;
int			GetWindowMaxSizeFlag() ;
int			GetActiveFlag() ;
HWND		GetMainWindowHandle() ;
int			GetWindowModeFlag() ;
int			GetDefaultState(				int *SizeX , int *SizeY , int *ColorBitDepth, int *RefreshRate = NULL , int *LeftTopX = NULL , int *LeftTopY = NULL ) ;
int			GetNoActiveState(				int ResetFlag = TRUE ) ;
int			GetMouseDispFlag() ;
int			GetAlwaysRunFlag() ;
int			_GetSystemInfo(					int *DxLibVer , int *DirectXVer , int *WindowsVer ) ;
int			GetPcInfo(						TCHAR *OSString , TCHAR *DirectXString , TCHAR *CPUString , int *CPUSpeed /* 単位MHz */ , double *FreeMemorySize /* 単位MByte */ , double *TotalMemorySize , TCHAR *VideoDriverFileName , TCHAR *VideoDriverString , double *FreeVideoMemorySize /* 単位MByte */ , double *TotalVideoMemorySize ) ;
int			GetUseMMXFlag() ;
int			GetUseSSEFlag() ;
int			GetUseSSE2Flag() ;
int			GetWindowCloseFlag() ;
HINSTANCE	GetTaskInstance() ;
int			GetUseWindowRgnFlag() ;
int			GetWindowSizeChangeEnableFlag(	int *FitScreen = NULL ) ;
double		GetWindowSizeExtendRate(		double *ExRateX = NULL , double *ExRateY = NULL ) ;
int			GetWindowSize(					int *Width, int *Height ) ;
int			GetWindowPosition(				int *x, int *y ) ;
int			GetWindowUserCloseFlag(			int StateResetFlag = FALSE ) ;
int			GetNotDrawFlag() ;
int			GetPaintMessageFlag() ;
int			GetValidHiPerformanceCounter() ;
TCHAR		GetInputSystemChar(				int DeleteFlag ) ;


int			ChangeWindowMode(						int Flag ) ;
int			SetUseCharSet(							int CharSet /* = DX_CHARSET_SHFTJIS 等 */ ) ;
int			LoadPauseGraph(							const(TCHAR)*FileName ) ;
int			LoadPauseGraphFromMem(					const(void)*MemImage , int MemImageSize ) ;
int			SetActiveStateChangeCallBackFunction(	int  function( int ActiveState , void *UserData )CallBackFunction , void *UserData ) ;
int			SetWindowText(							const(TCHAR)*WindowText ) ;
int			SetMainWindowText(						const(TCHAR)*WindowText ) ;
int			SetMainWindowClassName(					const(TCHAR)*ClassName ) ;
int			SetAlwaysRunFlag(						int Flag ) ;
int			SetWindowIconID(						int ID ) ;
int			SetWindowIconHandle(					HICON Icon ) ;
int			SetUseASyncChangeWindowModeFunction(	int Flag , void  function( void * )CallBackFunction , void *Data ) ;
int			SetWindowStyleMode(						int Mode ) ;
int			SetWindowZOrder(						int ZType /* = DX_WIN_ZTYPE_TOP 等 */ ) ;
int			SetWindowSizeChangeEnableFlag(			int Flag, int FitScreen = TRUE ) ;
int			SetWindowSizeExtendRate(				double ExRateX, double ExRateY = -1.0 ) ;
int			SetWindowSize(							int Width, int Height ) ;
int			SetWindowPosition(						int x, int y ) ;
int			SetSysCommandOffFlag(					int Flag , const(TCHAR)*HookDllPath = NULL ) ;
int			SetHookWinProc(							WNDPROC WinProc ) ;
int			SetUseHookWinProcReturnValue(			int UseFlag ) ;
int			SetDoubleStartValidFlag(				int Flag ) ;
int			AddMessageTakeOverWindow(				HWND Window ) ;
int			SubMessageTakeOverWindow(				HWND Window ) ;

int			SetWindowInitPosition(					int x , int y ) ;
int			SetNotWinFlag(							int Flag ) ;
int			SetNotDrawFlag(							int Flag ) ;
int			SetNotSoundFlag(						int Flag ) ;
int			SetNotInputFlag(						int Flag ) ;
int			SetDialogBoxHandle(						HWND WindowHandle ) ;
int			SetWindowVisibleFlag(					int Flag ) ;
int			SetWindowMinimizeFlag(					int Flag ) ;
int			SetWindowUserCloseEnableFlag(			int Flag ) ;
int			SetDxLibEndPostQuitMessageFlag(			int Flag ) ;
int			SetUserWindow(							HWND WindowHandle ) ;
int			SetUserChildWindow(						HWND WindowHandle ) ;
int			SetUserWindowMessageProcessDXLibFlag(	int Flag ) ;
int			SetUseFPUPreserveFlag(					int Flag ) ;
int			SetValidMousePointerWindowOutClientAreaMoveFlag( int Flag ) ;
int			SetUseBackBufferTransColorFlag(			int Flag ) ;
int			SetUseUpdateLayerdWindowFlag(			int Flag ) ;
int			SetResourceModule(						HMODULE ResourceModule ) ;


int			GetClipboardText(			TCHAR *DestBuffer ) ;
int			SetClipboardText(			const(TCHAR)*Text ) ;


int			SetDragFileValidFlag(		int Flag ) ;
int			DragFileInfoClear() ;
int			GetDragFilePath(			TCHAR *FilePathBuffer ) ;
int			GetDragFileNum() ;


HRGN		CreateRgnFromGraph(			int Width , int Height , const(void)*MaskData , int Pitch , int Byte ) ;
HRGN		CreateRgnFromBaseImage(		BASEIMAGE *BaseImage, int TransColorR, int TransColorG, int TransColorB ) ;
int			SetWindowRgnGraph(			const(TCHAR)*FileName ) ;
int			UpdateTransColorWindowRgn() ;


int			SetupToolBar(				const(TCHAR)*BitmapName , int DivNum , int ResourceID = -1 ) ;
int			AddToolBarButton(			int Type /* TOOLBUTTON_TYPE_NORMAL 等 */ , int State /* TOOLBUTTON_STATE_ENABLE 等 */ , int ImageIndex, int ID ) ;
int			AddToolBarSep() ;
int			GetToolBarButtonState(		int ID ) ;
int			SetToolBarButtonState(		int ID , int State /* TOOLBUTTON_STATE_ENABLE 等 */ ) ;
int			DeleteAllToolBarButton() ;


int			SetUseMenuFlag(				int Flag ) ;
int			SetUseKeyAccelFlag(			int Flag ) ;

int			AddKeyAccel(				const(TCHAR)*ItemName , int ItemID , int KeyCode , int CtrlFlag , int AltFlag , int ShiftFlag ) ;
int			AddKeyAccel_Name(			const(TCHAR)*ItemName , int KeyCode , int CtrlFlag , int AltFlag , int ShiftFlag ) ;
int			AddKeyAccel_ID(				int ItemID, int KeyCode, int CtrlFlag, int AltFlag, int ShiftFlag ) ;
int			ClearKeyAccel() ;

int			AddMenuItem(				int AddType /* MENUITEM_ADD_CHILD等 */ , const(TCHAR)*ItemName, int ItemID, int SeparatorFlag, const(TCHAR)*NewItemName = NULL , int NewItemID = -1 ) ;
int			DeleteMenuItem(				const(TCHAR)*ItemName, int ItemID ) ;
int			CheckMenuItemSelect(		const(TCHAR)*ItemName, int ItemID ) ;
int			SetMenuItemEnable(			const(TCHAR)*ItemName, int ItemID, int EnableFlag ) ;
int			SetMenuItemMark(			const(TCHAR)*ItemName, int ItemID, int Mark ) ;
int			CheckMenuItemSelectAll() ;

int			AddMenuItem_Name(			const(TCHAR)*ParentItemName, const(TCHAR)*NewItemName ) ;
int			AddMenuLine_Name(			const(TCHAR)*ParentItemName ) ;
int			InsertMenuItem_Name(		const(TCHAR)*ItemName, const(TCHAR)*NewItemName ) ;
int			InsertMenuLine_Name(		const(TCHAR)*ItemName ) ;
int			DeleteMenuItem_Name(		const(TCHAR)*ItemName ) ;
int			CheckMenuItemSelect_Name(	const(TCHAR)*ItemName ) ;
int			SetMenuItemEnable_Name(		const(TCHAR)*ItemName, int EnableFlag ) ;
int			SetMenuItemMark_Name(		const(TCHAR)*ItemName, int Mark ) ;

int			AddMenuItem_ID(				int ParentItemID, const(TCHAR)*NewItemName, int NewItemID = -1 ) ;
int			AddMenuLine_ID(				int ParentItemID ) ;
int			InsertMenuItem_ID(			int ItemID, int NewItemID ) ;
int			InsertMenuLine_ID(			int ItemID, int NewItemID ) ;
int			DeleteMenuItem_ID(			int ItemID ) ;
int			CheckMenuItemSelect_ID(		int ItemID ) ;
int			SetMenuItemEnable_ID(		int ItemID, int EnableFlag ) ;
int			SetMenuItemMark_ID(			int ItemID, int Mark ) ;

int			DeleteMenuItemAll() ;
int			ClearMenuItemSelect() ;
int			GetMenuItemID(				const(TCHAR)*ItemName ) ;
int			GetMenuItemName(			int ItemID, TCHAR *NameBuffer ) ;
int 		LoadMenuResource(			int MenuResourceID ) ;
int			SetMenuItemSelectCallBackFunction(		void  function( const(TCHAR)*ItemName, int ItemID )CallBackFunction ) ;

int			SetWindowMenu(				int MenuID, int  function( WORD ID )MenuProc ) ;
int			SetDisplayMenuFlag(			int Flag ) ;
int			GetDisplayMenuFlag() ;
int			GetUseMenuFlag() ;
int			SetAutoMenuDisplayFlag(		int Flag ) ;















int			SetKeyExclusiveCooperativeLevelFlag(	int Flag ) ;
int			SetKeyboardNotDirectInputFlag(			int Flag ) ;
int			SetUseDirectInputFlag(					int Flag ) ;
int			SetUseXInputFlag(						int Flag ) ;
int			GetJoypadGUID(							int PadIndex, GUID *GuidBuffer ) ;
int			GetJoypadName(							int InputType, TCHAR *InstanceNameBuffer, TCHAR *ProductNameBuffer ) ;
int			ConvertKeyCodeToVirtualKey(				int KeyCode ) ;
int			ConvertVirtualKeyToKeyCode(				int VirtualKey ) ;














int			LoadGraphToResource(			int ResourceID ) ;
int			LoadDivGraphToResource(			int ResourceID, int AllNum, int XNum, int YNum, int XSize, int YSize, int *HandleBuf ) ;
int			LoadGraphToResource(			const(TCHAR)*ResourceName, const(TCHAR)*ResourceType ) ;
int			LoadDivGraphToResource(			const(TCHAR)*ResourceName, const(TCHAR)*ResourceType, int AllNum, int XNum, int YNum, int XSize, int YSize, int *HandleBuf ) ;


int			BltBackScreenToWindow(			HWND Window, int ClientX, int ClientY ) ;
int			BltRectBackScreenToWindow(		HWND Window, RECT BackScreenRect, RECT WindowClientRect ) ;
int			SetScreenFlipTargetWindow(		HWND TargetWindow ) ;


int			SetMultiThreadFlag(								int Flag ) ;
int			SetUseDirectDrawDeviceIndex(					int Index ) ;
int			SetAeroDisableFlag(								int Flag ) ;
int			SetUseDirect3D9Ex(								int Flag ) ;
int			SetUseDirect3D11(								int Flag ) ;
int			SetUseDirect3D11MinFeatureLevel(				int Level /* DX_DIRECT3D_11_FEATURE_LEVEL_10_0 など */ ) ;
int			SetUseDirect3DVersion(							int Version /* DX_DIRECT3D_9 など */ ) ;
int			GetUseDirect3DVersion() ;
int			GetUseDirect3D11FeatureLevel() ;
int			SetUseDirectDrawFlag(							int Flag ) ;
int			SetUseGDIFlag(									int Flag ) ;
int			GetUseGDIFlag() ;
int			SetDDrawUseGuid(								const(GUID)*Guid ) ;
const(void)*	GetUseDDrawObj() ;
const(GUID)*	GetDirectDrawDeviceGUID(						int Number ) ;
int			GetDirectDrawDeviceDescription(					int Number, char *StringBuffer ) ;
int			GetDirectDrawDeviceNum() ;
const(void)*	GetUseDirect3DDevice9() ;
const(void)*	GetUseDirect3D9BackBufferSurface() ;
const(void)*	GetUseDirect3D11Device() ;
const(void)*	GetUseDirect3D11DeviceContext() ;
const(void)*	GetUseDirect3D11BackBufferTexture2D() ;
const(void)*	GetUseDirect3D11DepthStencilTexture2D() ;
int			RefreshDxLibDirect3DSetting() ;


int			ColorKaiseki(				const(void)*PixelData, COLORDATA* ColorData ) ;












int			BmpBltToMask(					HBITMAP Bmp, int BmpPointX, int BmpPointY, int MaskHandle ) ;














HANDLE		AddFontFile( const(TCHAR)*FontFilePath ) ;
HANDLE		AddFontFileFromMem( const(void)*FontFileImage, int FontFileImageSize ) ;
int			RemoveFontFile( HANDLE FontHandle ) ;


int			CreateFontDataFile(						const(TCHAR)*SaveFilePath, const(TCHAR)*FontName, int Size, int BitDepth /* DX_FONTIMAGE_BIT_1等 */ , int Thick, int Italic = FALSE , int CharSet = -1 , const(TCHAR)*SaveCharaList = NULL ) ;











HBITMAP		CreateDIBGraph(                const(TCHAR)*FileName,                                                                                                                                        int ReverseFlag,          COLORDATA *SrcColor ) ;
HBITMAP		CreateDIBGraphToMem(           const(BITMAPINFO)*BmpInfo, const(void)*GraphData,                                                                                                             int ReverseFlag,          COLORDATA *SrcColor ) ;
int			CreateDIBGraph_plus_Alpha(     const(TCHAR)*FileName, HBITMAP *RGBBmp, HBITMAP *AlphaBmp,                                                                                                    int ReverseFlag = FALSE , COLORDATA *SrcColor = NULL ) ;
HBITMAP		CreateDIBGraphVer2(            const(TCHAR)*FileName, const(void)*MemImage, int MemImageSize,                                             int ImageType,                                     int ReverseFlag,          COLORDATA *SrcColor ) ;
int			CreateDIBGraphVer2_plus_Alpha( const(TCHAR)*FileName, const(void)*MemImage, int MemImageSize, const(void)*AlphaImage, int AlphaImageSize, int ImageType, HBITMAP *RGBBmp, HBITMAP *AlphaBmp, int ReverseFlag,          COLORDATA *SrcColor ) ;
int			ConvBitmapToGraphImage(        const(BITMAPINFO)*BmpInfo, void *GraphData, BASEIMAGE *GraphImage, int CopyFlag ) ;
int			ConvGraphImageToBitmap(        const(BASEIMAGE)*GraphImage, BITMAPINFO *BmpInfo, void **GraphData, int CopyFlag, int FullColorConv = TRUE ) ;


int			UpdateLayerdWindowForBaseImage(                       const(BASEIMAGE)*BaseImage ) ;
int			UpdateLayerdWindowForBaseImageRect(                   const(BASEIMAGE)*BaseImage, int x1, int y1, int x2, int y2 ) ;
int			UpdateLayerdWindowForPremultipliedAlphaBaseImage(     const(BASEIMAGE)*BaseImage ) ;
int			UpdateLayerdWindowForPremultipliedAlphaBaseImageRect( const(BASEIMAGE)*BaseImage, int x1, int y1, int x2, int y2 ) ;












int			UpdateLayerdWindowForSoftImage(                       int SIHandle ) ;
int			UpdateLayerdWindowForSoftImageRect(                   int SIHandle, int x1, int y1, int x2, int y2 ) ;
int			UpdateLayerdWindowForPremultipliedAlphaSoftImage(     int SIHandle ) ;
int			UpdateLayerdWindowForPremultipliedAlphaSoftImageRect( int SIHandle, int x1, int y1, int x2, int y2 ) ;














int			LoadSoundMemByResource(              const(TCHAR)*ResourceName, const(TCHAR)*ResourceType, int BufferNum = 1 ) ;


int			SetUseSoftwareMixingSoundFlag(       int Flag ) ;
int			SetEnableXAudioFlag(                 int Flag ) ;


const(void)*	GetDSoundObj() ;	/* 戻り値を IDirectSound * にキャストして下さい */


int			LoadMusicMemByResource(				const(TCHAR)*ResourceName, const(TCHAR)*ResourceType ) ;






int			DxLib_Init() ;
int			DxLib_End() ;

int			DxLib_GlobalStructInitialize() ;
int			DxLib_IsInit() ;


int			ProcessMessage() ;


int			WaitTimer( int WaitTime ) ;
int			WaitKey() ;


int			GetNowCount(				int UseRDTSCFlag = FALSE ) ;
LONGLONG	GetNowHiPerformanceCount(	int UseRDTSCFlag = FALSE ) ;
int			GetDateTime(				DATEDATA *DateBuf ) ;


int			GetRand( int RandMax ) ;
int			SRand(	 int Seed ) ;











int			ErrorLogAdd(		 const(TCHAR)*ErrorStr ) ;
int			ErrorLogFmtAdd(		 const(TCHAR)*FormatString , ... ) ;
int			ErrorLogTabAdd() ;
int			ErrorLogTabSub() ;
int			SetUseTimeStampFlag( int UseFlag ) ;
int			AppLogAdd(			 const(TCHAR)*String , ... ) ;


int			SetOutApplicationLogValidFlag(	int Flag ) ;
int			SetApplicationLogSaveDirectory(	const(TCHAR)*DirectoryPath ) ;
int			SetUseDateNameLogFile(			int Flag ) ;



int			SetLogDrawOutFlag(	 int DrawFlag ) ;
int			GetLogDrawFlag() ;
int			SetLogFontSize(		 int Size ) ;


int			printfDx(			 const(TCHAR)*FormatString , ... ) ;
int			clsDx() ;

















int			SetUseASyncLoadFlag(		int Flag ) ;
int			CheckHandleASyncLoad(		int Handle ) ;
int			GetHandleASyncLoadResult(	int Handle ) ;
int			GetASyncLoadNum() ;
int			SetASyncLoadThreadNum(		int ThreadNum ) ;














int			SetDeleteHandleFlag(		int Handle, int *DeleteFlag ) ;
















int			SetMouseDispFlag(		int DispFlag ) ;
int			GetMousePoint(			int *XBuf, int *YBuf ) ;
int			SetMousePoint(			int PointX, int PointY ) ;
int			GetMouseInput() ;
int			GetMouseWheelRotVol(	int CounterReset = TRUE ) ;
int			GetMouseHWheelRotVol(	int CounterReset = TRUE ) ;
float		GetMouseWheelRotVolF(	int CounterReset = TRUE ) ;
float		GetMouseHWheelRotVolF(	int CounterReset = TRUE ) ;
int			GetMouseInputLog(		int *Button, int *ClickX, int *ClickY, int LogDelete = TRUE ) ;













int				GetTouchInputNum() ;
int				GetTouchInput( int InputNo, int *PositionX, int *PositionY, int *ID = NULL , int *Device = NULL ) ;

int				GetTouchInputLogNum() ;
TOUCHINPUTDATA	GetTouchInputLogOne( int PeekFlag = FALSE ) ;
int				GetTouchInputLog( TOUCHINPUTDATA *TouchData, int GetNum, int PeekFlag = FALSE ) ;


















void*		DxAlloc(						size_t AllocSize , const(char)*File = NULL , int Line = -1 ) ;
void*		DxCalloc(						size_t AllocSize , const(char)*File = NULL , int Line = -1 ) ;
void*		DxRealloc(						void *Memory , size_t AllocSize , const(char)*File = NULL , int Line = -1 ) ;
void		DxFree(							void *Memory ) ;
size_t		DxSetAllocSizeTrap(				size_t Size ) ;
int			DxSetAllocPrintFlag(			int Flag ) ;
size_t		DxGetAllocSize() ;
int			DxGetAllocNum() ;
void		DxDumpAlloc() ;
void		DxDrawAlloc(					int x, int y, int Width, int Height ) ;
int			DxErrorCheckAlloc() ;
int			DxSetAllocSizeOutFlag(			int Flag ) ;
int			DxSetAllocMemoryErrorCheckFlag(	int Flag ) ;

















int				ConvertStringCharCodeFormat( int SrcCharCodeFormat /* DX_CHARCODEFORMAT_SHIFTJIS 等 */, const(void)*SrcString, int DestCharCodeFormat /* DX_CHARCODEFORMAT_SHIFTJIS 等 */, void *DestStringBuffer ) ;
int				SetUseCharCodeFormat( int CharCodeFormat /* DX_CHARCODEFORMAT_SHIFTJIS 等 */ ) ;


void			strcpyDx(     TCHAR *Dest, const(TCHAR)*Src ) ;
void			strpcpyDx(    TCHAR *Dest, const(TCHAR)*Src, int Pos ) ;
void			strpcpy2Dx(   TCHAR *Dest, const(TCHAR)*Src, int Pos ) ;
void			strncpyDx(    TCHAR *Dest, const(TCHAR)*Src, int Num ) ;
void			strncpy2Dx(   TCHAR *Dest, const(TCHAR)*Src, int Num ) ;
void			strrncpyDx(   TCHAR *Dest, const(TCHAR)*Src, int Num ) ;
void			strrncpy2Dx(  TCHAR *Dest, const(TCHAR)*Src, int Num ) ;
void			strpncpyDx(   TCHAR *Dest, const(TCHAR)*Src, int Pos, int Num ) ;
void			strpncpy2Dx(  TCHAR *Dest, const(TCHAR)*Src, int Pos, int Num ) ;
void			strcatDx(     TCHAR *Dest, const(TCHAR)*Src ) ;
int				strlenDx(     const(TCHAR)*Str ) ;
int				strlen2Dx(    const(TCHAR)*Str ) ;
int				strcmpDx(     const(TCHAR)*Str1, const(TCHAR)*Str2 ) ;
int				stricmpDx(    const(TCHAR)*Str1, const(TCHAR)*Str2 ) ;
int				strncmpDx(    const(TCHAR)*Str1, const(TCHAR)*Str2, int Num ) ;
int				strncmp2Dx(   const(TCHAR)*Str1, const(TCHAR)*Str2, int Num ) ;
int				strpncmpDx(   const(TCHAR)*Str1, const(TCHAR)*Str2, int Pos, int Num ) ;
int				strpncmp2Dx(  const(TCHAR)*Str1, const(TCHAR)*Str2, int Pos, int Num ) ;
DWORD			strgetchrDx(  const(TCHAR)*Str, int Pos, int *CharNums = NULL ) ;
DWORD			strgetchr2Dx( const(TCHAR)*Str, int Pos, int *CharNums = NULL ) ;
int				strputchrDx(  TCHAR *Str, int Pos, DWORD CharCode ) ;
int				strputchr2Dx( TCHAR *Str, int Pos, DWORD CharCode ) ;
const(TCHAR)*	strposDx(     const(TCHAR)*Str, int Pos ) ;
const(TCHAR)*	strpos2Dx(    const(TCHAR)*Str, int Pos ) ;
const(TCHAR)*	strstrDx(     const(TCHAR)*Str1, const(TCHAR)*Str2 ) ;
int				strstr2Dx(    const(TCHAR)*Str1, const(TCHAR)*Str2 ) ;
const(TCHAR)*	strrstrDx(    const(TCHAR)*Str1, const(TCHAR)*Str2 ) ;
int				strrstr2Dx(   const(TCHAR)*Str1, const(TCHAR)*Str2 ) ;
const(TCHAR)*	strchrDx(     const(TCHAR)*Str, DWORD CharCode ) ;
int				strchr2Dx(    const(TCHAR)*Str, DWORD CharCode ) ;
const(TCHAR)*	strrchrDx(    const(TCHAR)*Str, DWORD CharCode ) ;
int				strrchr2Dx(   const(TCHAR)*Str, DWORD CharCode ) ;
TCHAR *			struprDx(     TCHAR *Str ) ;
int				vsprintfDx(   TCHAR *Buffer, const(TCHAR)*FormatString, va_list Arg ) ;
int				sprintfDx(    TCHAR *Buffer, const(TCHAR)*FormatString, ... ) ;
TCHAR *			itoaDx(       int Value, TCHAR *Buffer, int Radix ) ;
int				atoiDx(       const(TCHAR)*Str ) ;
double			atofDx(       const(TCHAR)*Str ) ;
int				vsscanfDx(    const(TCHAR)*String, const(TCHAR)*FormatString, va_list Arg ) ;
int				sscanfDx(     const(TCHAR)*String, const(TCHAR)*FormatString, ... ) ;






















int			ProcessNetMessage(				int RunReleaseProcess = FALSE ) ;

int			GetHostIPbyName(				const(TCHAR)*HostName, IPDATA      *IPDataBuf ) ;
int			GetHostIPbyName_IPv6(			const(TCHAR)*HostName, IPDATA_IPv6 *IPDataBuf ) ;
int			ConnectNetWork(					IPDATA      IPData, int Port = -1 ) ;
int			ConnectNetWork_IPv6(			IPDATA_IPv6 IPData, int Port = -1 ) ;
int			ConnectNetWork_ASync(			IPDATA      IPData, int Port = -1 ) ;
int			ConnectNetWork_IPv6_ASync(		IPDATA_IPv6 IPData, int Port = -1 ) ;
int			PreparationListenNetWork(		int Port = -1 ) ;
int			PreparationListenNetWork_IPv6(	int Port = -1 ) ;
int			StopListenNetWork() ;
int			CloseNetWork(					int NetHandle ) ;

int			GetNetWorkAcceptState(			int NetHandle ) ;
int			GetNetWorkDataLength(			int NetHandle ) ;
int			GetNetWorkSendDataLength(		int NetHandle ) ;
int			GetNewAcceptNetWork() ;
int			GetLostNetWork() ;
int			GetNetWorkIP(					int NetHandle, IPDATA      *IpBuf ) ;
int			GetNetWorkIP_IPv6(				int NetHandle, IPDATA_IPv6 *IpBuf ) ;
int			GetMyIPAddress(					IPDATA *IpBuf, int IpBufLength = 1 , int *IpNum = NULL ) ;
int			SetConnectTimeOutWait(			int Time ) ;
int			SetUseDXNetWorkProtocol(		int Flag ) ;
int			GetUseDXNetWorkProtocol() ;
int			SetUseDXProtocol(				int Flag ) ;
int			GetUseDXProtocol() ;
int			SetNetWorkCloseAfterLostFlag(	int Flag ) ;
int			GetNetWorkCloseAfterLostFlag() ;




int			NetWorkRecv(			int NetHandle, void *Buffer, int Length ) ;
int			NetWorkRecvToPeek(		int NetHandle, void *Buffer, int Length ) ;
int			NetWorkRecvBufferClear(	int NetHandle ) ;
int			NetWorkSend(			int NetHandle, const(void)*Buffer, int Length ) ;

int			MakeUDPSocket(			int RecvPort = -1 ) ;
int			MakeUDPSocket_IPv6(		int RecvPort = -1 ) ;
int			DeleteUDPSocket(		int NetUDPHandle ) ;
int			NetWorkSendUDP(			int NetUDPHandle, IPDATA       SendIP, int SendPort,  const(void)*Buffer, int Length ) ;
int			NetWorkSendUDP_IPv6(	int NetUDPHandle, IPDATA_IPv6  SendIP, int SendPort,  const(void)*Buffer, int Length ) ;
int			NetWorkRecvUDP(			int NetUDPHandle, IPDATA      *RecvIP, int *RecvPort,       void *Buffer, int Length, int Peek ) ;
int			NetWorkRecvUDP_IPv6(	int NetUDPHandle, IPDATA_IPv6 *RecvIP, int *RecvPort,       void *Buffer, int Length, int Peek ) ;

int			CheckNetWorkRecvUDP(	int NetUDPHandle ) ;

/*	使用不可
int			HTTP_FileDownload(			const(char)*FileURL, const(char)*SavePath = NULL , void **SaveBufferP = NULL , int *FileSize = NULL , char **ParamList = NULL ) ;
int			HTTP_GetFileSize(			const(char)*FileURL ) ;

int			HTTP_StartFileDownload(		const(char)*FileURL, const(char)*SavePath, void **SaveBufferP = NULL , char **ParamList = NULL ) ;
int			HTTP_StartGetFileSize(		const(char)*FileURL ) ;
int			HTTP_Close(					int HttpHandle ) ;
int			HTTP_CloseAll() ;
int			HTTP_GetState(				int HttpHandle ) ;
int			HTTP_GetError(				int HttpHandle ) ;
int			HTTP_GetDownloadFileSize(	int HttpHandle ) ;
int			HTTP_GetDownloadedFileSize( int HttpHandle ) ;

int			fgetsForNetHandle(			int NetHandle, char *strbuffer ) ;
int			URLAnalys(					const(char)*URL, char *HostBuf = NULL , char *PathBuf = NULL , char *FileNameBuf = NULL , int *PortBuf = NULL ) ;
int			URLConvert(					char *URL, int ParamConvert = TRUE , int NonConvert = FALSE ) ;
int			URLParamAnalysis(			char **ParamList, char **ParamStringP ) ;
*/





















int			StockInputChar(		TCHAR CharCode ) ;
int			ClearInputCharBuf() ;
TCHAR		GetInputChar(		int DeleteFlag ) ;
TCHAR		GetInputCharWait(	int DeleteFlag ) ;

int			GetOneChar(			TCHAR *CharBuffer, int DeleteFlag ) ;
int			GetOneCharWait(		TCHAR *CharBuffer, int DeleteFlag ) ;
int			GetCtrlCodeCmp(		TCHAR Char ) ;



int			DrawIMEInputString(				int x, int y, int SelectStringNum ) ;
int			SetUseIMEFlag(					int UseFlag ) ;
int			SetInputStringMaxLengthIMESync(	int Flag ) ;
int			SetIMEInputStringMaxLength(		int Length ) ;


int			GetStringPoint(				const(TCHAR)*String, int Point ) ;
int			GetStringPoint2(			const(TCHAR)*String, int Point ) ;
int			GetStringLength(			const(TCHAR)*String ) ;

int			DrawObtainsString(			int x, int y, int AddY, const(TCHAR)*String, uint StrColor, uint StrEdgeColor = 0 , int FontHandle = -1 , uint SelectBackColor = 0xffffffff , uint SelectStrColor = 0 , uint SelectStrEdgeColor = 0xffffffff , int SelectStart = -1 , int SelectEnd = -1 ) ;
int			DrawObtainsString_CharClip(	int x, int y, int AddY, const(TCHAR)*String, uint StrColor, uint StrEdgeColor = 0 , int FontHandle = -1 , uint SelectBackColor = 0xffffffff , uint SelectStrColor = 0 , uint SelectStrEdgeColor = 0xffffffff , int SelectStart = -1 , int SelectEnd = -1 ) ;
int			DrawObtainsBox(				int x1, int y1, int x2, int y2, int AddY, uint Color, int FillFlag ) ;


int			InputStringToCustom(		int x, int y, int BufLength, TCHAR *StrBuffer, int CancelValidFlag, int SingleCharOnlyFlag, int NumCharOnlyFlag, int DoubleCharOnlyFlag = FALSE ) ;

int			KeyInputString(				int x, int y, int CharMaxLength, TCHAR *StrBuffer, int CancelValidFlag ) ;
int			KeyInputSingleCharString(	int x, int y, int CharMaxLength, TCHAR *StrBuffer, int CancelValidFlag ) ;
int			KeyInputNumber(				int x, int y, int MaxNum, int MinNum, int CancelValidFlag ) ;

int			GetIMEInputModeStr(			TCHAR *GetBuffer ) ;
const(IMEINPUTDATA)* GetIMEInputData() ;
int			SetKeyInputStringColor(		ULONGLONG NmlStr, ULONGLONG NmlCur, ULONGLONG IMEStrBack, ULONGLONG IMECur, ULONGLONG IMELine, ULONGLONG IMESelectStr, ULONGLONG IMEModeStr , ULONGLONG NmlStrE = 0 , ULONGLONG IMESelectStrE = 0 , ULONGLONG IMEModeStrE = 0 , ULONGLONG IMESelectWinE = 0xffffffffffffffff ,	ULONGLONG IMESelectWinF = 0xffffffffffffffff , ULONGLONG SelectStrBackColor = 0xffffffffffffffff , ULONGLONG SelectStrColor = 0xffffffffffffffff , ULONGLONG SelectStrEdgeColor = 0xffffffffffffffff, ULONGLONG IMEStr = 0xffffffffffffffff, ULONGLONG IMEStrE = 0xffffffffffffffff ) ;
int			SetKeyInputStringColor2(	int TargetColor /* DX_KEYINPSTRCOLOR_NORMAL_STR 等 */, uint Color ) ;
int			ResetKeyInputStringColor2(	int TargetColor /* DX_KEYINPSTRCOLOR_NORMAL_STR 等 */ ) ;
int			SetKeyInputStringFont(		int FontHandle ) ;
int			SetKeyInputStringEndCharaMode( int EndCharaMode /* DX_KEYINPSTR_ENDCHARAMODE_OVERWRITE 等 */ ) ;
int			DrawKeyInputModeString(		int x, int y ) ;

int			InitKeyInput() ;
int			MakeKeyInput(				int MaxStrLength, int CancelValidFlag, int SingleCharOnlyFlag, int NumCharOnlyFlag, int DoubleCharOnlyFlag = FALSE ) ;
int			DeleteKeyInput(				int InputHandle ) ;
int			SetActiveKeyInput(			int InputHandle ) ;
int			GetActiveKeyInput() ;
int			CheckKeyInput(				int InputHandle ) ;
int			ReStartKeyInput(			int InputHandle ) ;
int			ProcessActKeyInput() ;
int			DrawKeyInputString(			int x, int y, int InputHandle ) ;

int			SetKeyInputSelectArea(		int  SelectStart, int  SelectEnd, int InputHandle ) ;
int			GetKeyInputSelectArea(		int *SelectStart, int *SelectEnd, int InputHandle ) ;
int			SetKeyInputDrawStartPos(	int DrawStartPos, int InputHandle ) ;
int			GetKeyInputDrawStartPos(	int InputHandle ) ;
int			SetKeyInputCursorBrinkTime(	int Time ) ;
int			SetKeyInputCursorBrinkFlag(	int Flag ) ;
int			SetKeyInputString(			const(TCHAR)*String, int InputHandle ) ;
int			SetKeyInputNumber(			int   Number,        int InputHandle ) ;
int			SetKeyInputNumberToFloat(	float Number,        int InputHandle ) ;
int			GetKeyInputString(			TCHAR *StrBuffer,    int InputHandle ) ;
int			GetKeyInputNumber(			int InputHandle ) ;
float		GetKeyInputNumberToFloat(	int InputHandle ) ;
int			SetKeyInputCursorPosition(	int Position,        int InputHandle ) ;
int			GetKeyInputCursorPosition(	int InputHandle ) ;















int			FileRead_open(				const(TCHAR)*FilePath , int ASync = FALSE ) ;
LONGLONG	FileRead_size(				const(TCHAR)*FilePath ) ;
int			FileRead_close(				int FileHandle ) ;
LONGLONG	FileRead_tell(				int FileHandle ) ;
int			FileRead_seek(				int FileHandle , LONGLONG Offset , int Origin ) ;
int			FileRead_read(				void *Buffer , int ReadSize , int FileHandle ) ;
int			FileRead_idle_chk(			int FileHandle ) ;
int			FileRead_eof(				int FileHandle ) ;
int			FileRead_gets(				TCHAR *Buffer , int BufferSize , int FileHandle ) ;
TCHAR		FileRead_getc(				int FileHandle ) ;
int			FileRead_scanf(				int FileHandle , const(TCHAR)*Format , ... ) ;

DWORD_PTR	FileRead_createInfo(		const(TCHAR)*ObjectPath ) ;
int			FileRead_getInfoNum(		DWORD_PTR FileInfoHandle ) ;
int			FileRead_getInfo(			int Index , FILEINFO *Buffer , DWORD_PTR FileInfoHandle ) ;
int			FileRead_deleteInfo(		DWORD_PTR FileInfoHandle ) ;

DWORD_PTR	FileRead_findFirst(			const(TCHAR)*FilePath, FILEINFO *Buffer ) ;
int			FileRead_findNext(			DWORD_PTR FindHandle, FILEINFO *Buffer ) ;
int			FileRead_findClose(			DWORD_PTR FindHandle ) ;

int			FileRead_fullyLoad(			const(TCHAR)*FilePath ) ;
int			FileRead_fullyLoad_delete(	int FLoadHandle ) ;
const(void)*	FileRead_fullyLoad_getImage( int FLoadHandle ) ;
LONGLONG	FileRead_fullyLoad_getSize(	int FLoadHandle ) ;


int			GetStreamFunctionDefault() ;
int			ChangeStreamFunction(		const(STREAMDATASHREDTYPE2)*StreamThread  ) ;
int			ChangeStreamFunctionW(		const(STREAMDATASHREDTYPE2W)*StreamThreadW ) ;


int			ConvertFullPath( const(TCHAR)*Src, TCHAR *Dest, const(TCHAR)*CurrentDir = NULL ) ;
















int			CheckHitKey(							int KeyCode ) ;
int			CheckHitKeyAll(							int CheckType = DX_CHECKINPUT_ALL ) ;
int			GetHitKeyStateAll(						DX_CHAR *KeyStateBuf ) ;
int			GetJoypadNum() ;
int			GetJoypadInputState(					int InputType ) ;
int			GetJoypadAnalogInput(					int *XBuf, int *YBuf, int InputType ) ;
int			GetJoypadAnalogInputRight(				int *XBuf, int *YBuf, int InputType ) ;
int			GetJoypadDirectInputState(				int InputType, DINPUT_JOYSTATE *DInputState ) ;
int			CheckJoypadXInput(						int InputType ) ;
int			GetJoypadXInputState(					int InputType, XINPUT_STATE *XInputState ) ;
int			SetJoypadInputToKeyInput(				int InputType, int PadInput, int KeyInput1, int KeyInput2 = -1 , int KeyInput3 = -1 , int KeyInput4 = -1  ) ;
int			SetJoypadDeadZone(						int InputType, double Zone ) ;
int			StartJoypadVibration(					int InputType, int Power, int Time, int EffectIndex = -1 ) ;
int			StopJoypadVibration(					int InputType, int EffectIndex = -1 ) ;
int			GetJoypadPOVState(						int InputType, int POVNumber ) ;
int			ReSetupJoypad() ;

int			SetUseJoypadVibrationFlag(				int Flag ) ;












int			MakeGraph(						int SizeX, int SizeY, int NotUse3DFlag = FALSE ) ;
int			MakeScreen(						int SizeX, int SizeY, int UseAlphaChannel = FALSE ) ;
int			DerivationGraph(				int SrcX, int SrcY, int Width, int Height, int SrcGraphHandle ) ;
int			DeleteGraph(					int GrHandle, int LogOutFlag = FALSE ) ;
int			DeleteSharingGraph(				int GrHandle ) ;
int			GetGraphNum() ;
int			FillGraph(						int GrHandle, int Red, int Green, int Blue, int Alpha = 255 ) ;
int			SetGraphLostFlag(				int GrHandle, int *LostFlag ) ;
int			InitGraph(						int LogOutFlag = FALSE ) ;
int			ReloadFileGraphAll() ;


int			MakeShadowMap(					int SizeX, int SizeY ) ;
int			DeleteShadowMap(				int SmHandle ) ;
int			SetShadowMapLightDirection(		int SmHandle, VECTOR Direction ) ;
int			ShadowMap_DrawSetup(			int SmHandle ) ;
int			ShadowMap_DrawEnd() ;
int			SetUseShadowMap(				int SmSlotIndex, int SmHandle ) ;
int			SetShadowMapDrawArea(			int SmHandle, VECTOR MinPosition, VECTOR MaxPosition ) ;
int			ResetShadowMapDrawArea(			int SmHandle ) ;
int			SetShadowMapAdjustDepth(		int SmHandle, float Depth ) ;
int			TestDrawShadowMap(				int SmHandle, int x1, int y1, int x2, int y2 ) ;


int			BltBmpToGraph(					const(COLORDATA)*BmpColorData, HBITMAP RgbBmp, HBITMAP AlphaBmp,                                                                      int CopyPointX, int CopyPointY,                              int  GrHandle ) ;
int			BltBmpToDivGraph(				const(COLORDATA)*BmpColorData, HBITMAP RgbBmp, HBITMAP AlphaBmp,                                                                      int AllNum, int XNum, int YNum, int Width, int Height, const(int)*GrHandle, int ReverseFlag ) ;
int			BltBmpOrGraphImageToGraph(		const(COLORDATA)*BmpColorData, HBITMAP RgbBmp, HBITMAP AlphaBmp, int BmpFlag, const(BASEIMAGE)*RgbBaseImage, const(BASEIMAGE)*AlphaBaseImage, int CopyPointX, int CopyPointY,                              int  GrHandle ) ;
int			BltBmpOrGraphImageToGraph2(		const(COLORDATA)*BmpColorData, HBITMAP RgbBmp, HBITMAP AlphaBmp, int BmpFlag, const(BASEIMAGE)*RgbBaseImage, const(BASEIMAGE)*AlphaBaseImage, const(RECT)*SrcRect, int DestX, int DestY,                   int  GrHandle ) ;
int			BltBmpOrGraphImageToDivGraph(	const(COLORDATA)*BmpColorData, HBITMAP RgbBmp, HBITMAP AlphaBmp, int BmpFlag, const(BASEIMAGE)*RgbBaseImage, const(BASEIMAGE)*AlphaBaseImage, int AllNum, int XNum, int YNum, int Width, int Height, const(int)*GrHandle, int ReverseFlag ) ;


int			LoadBmpToGraph(					const(TCHAR)*FileName, int TextureFlag, int ReverseFlag, int SurfaceMode = DX_MOVIESURFACE_NORMAL ) ;
int			LoadGraph(						const(TCHAR)*FileName, int NotUse3DFlag = FALSE ) ;
int			LoadReverseGraph(				const(TCHAR)*FileName, int NotUse3DFlag = FALSE ) ;
int			LoadDivGraph(					const(TCHAR)*FileName, int AllNum, int XNum, int YNum, int XSize, int YSize, int *HandleBuf, int NotUse3DFlag = FALSE ) ;
int			LoadDivBmpToGraph(				const(TCHAR)*FileName, int AllNum, int XNum, int YNum, int SizeX, int SizeY, int *HandleBuf, int TextureFlag, int ReverseFlag ) ;
int			LoadReverseDivGraph(			const(TCHAR)*FileName, int AllNum, int XNum, int YNum, int XSize, int YSize, int *HandleBuf, int NotUse3DFlag = FALSE ) ;
int			LoadBlendGraph(					const(TCHAR)*FileName ) ;

int			CreateGraphFromMem(				const(void)*RGBFileImage, int RGBFileImageSize,               const(void)*AlphaFileImage = NULL , int AlphaFileImageSize = 0 ,                  int TextureFlag = TRUE , int ReverseFlag = FALSE ) ;
int			ReCreateGraphFromMem(           const(void)*RGBFileImage, int RGBFileImageSize, int GrHandle, const(void)*AlphaFileImage = NULL , int AlphaFileImageSize = 0 ,                  int TextureFlag = TRUE , int ReverseFlag = FALSE ) ;
int			CreateDivGraphFromMem(          const(void)*RGBFileImage, int RGBFileImageSize, int AllNum, int XNum, int YNum, int SizeX, int SizeY,       int *HandleBuf,                     int TextureFlag = TRUE , int ReverseFlag = FALSE , const(void)*AlphaFileImage = NULL , int AlphaFileImageSize = 0 ) ;
int			ReCreateDivGraphFromMem(        const(void)*RGBFileImage, int RGBFileImageSize, int AllNum, int XNum, int YNum, int SizeX, int SizeY, const(int)*HandleBuf,                     int TextureFlag = TRUE , int ReverseFlag = FALSE , const(void)*AlphaFileImage = NULL , int AlphaFileImageSize = 0 ) ;
int			CreateGraphFromBmp(             const(BITMAPINFO)*RGBBmpInfo, const(void)*RGBBmpImage,               const(BITMAPINFO)*AlphaBmpInfo = NULL , const(void)*AlphaBmpImage = NULL , int TextureFlag = TRUE , int ReverseFlag = FALSE ) ;
int			ReCreateGraphFromBmp(           const(BITMAPINFO)*RGBBmpInfo, const(void)*RGBBmpImage, int GrHandle, const(BITMAPINFO)*AlphaBmpInfo = NULL , const(void)*AlphaBmpImage = NULL , int TextureFlag = TRUE , int ReverseFlag = FALSE ) ;
int			CreateDivGraphFromBmp(          const(BITMAPINFO)*RGBBmpInfo, const(void)*RGBBmpImage, int AllNum, int XNum, int YNum, int SizeX, int SizeY,       int *HandleBuf,              int TextureFlag = TRUE , int ReverseFlag = FALSE , const(BITMAPINFO)*AlphaBmpInfo = NULL , const(void)*AlphaBmpImage = NULL ) ;
int			ReCreateDivGraphFromBmp(        const(BITMAPINFO)*RGBBmpInfo, const(void)*RGBBmpImage, int AllNum, int XNum, int YNum, int SizeX, int SizeY, const(int)*HandleBuf,              int TextureFlag = TRUE , int ReverseFlag = FALSE , const(BITMAPINFO)*AlphaBmpInfo = NULL , const(void)*AlphaBmpImage = NULL ) ;
int			CreateDXGraph(					const(BASEIMAGE)*RgbBaseImage, const(BASEIMAGE)*AlphaBaseImage,                                                                                 int TextureFlag ) ;
int			CreateGraphFromGraphImage(      const(BASEIMAGE)*RgbBaseImage,                                                                                                                  int TextureFlag = TRUE , int ReverseFlag = FALSE ) ;
int			CreateGraphFromGraphImage(      const(BASEIMAGE)*RgbBaseImage, const(BASEIMAGE)*AlphaBaseImage,                                                                                 int TextureFlag = TRUE , int ReverseFlag = FALSE ) ;
int			ReCreateGraphFromGraphImage(    const(BASEIMAGE)*RgbBaseImage,                                  int GrHandle,                                                                   int TextureFlag = TRUE , int ReverseFlag = FALSE ) ;
int			ReCreateGraphFromGraphImage(    const(BASEIMAGE)*RgbBaseImage, const(BASEIMAGE)*AlphaBaseImage, int GrHandle,                                                                   int TextureFlag = TRUE , int ReverseFlag = FALSE ) ;
int			CreateDivGraphFromGraphImage(         BASEIMAGE *RgbBaseImage,                                  int AllNum, int XNum, int YNum, int SizeX, int SizeY,       int *HandleBuf,     int TextureFlag = TRUE , int ReverseFlag = FALSE ) ;
int			CreateDivGraphFromGraphImage(         BASEIMAGE *RgbBaseImage, const(BASEIMAGE)*AlphaBaseImage, int AllNum, int XNum, int YNum, int SizeX, int SizeY,       int *HandleBuf,     int TextureFlag = TRUE , int ReverseFlag = FALSE ) ;
int			ReCreateDivGraphFromGraphImage(       BASEIMAGE *RgbBaseImage,                                  int AllNum, int XNum, int YNum, int SizeX, int SizeY, const(int)*HandleBuf,     int TextureFlag = TRUE , int ReverseFlag = FALSE ) ;
int			ReCreateDivGraphFromGraphImage(       BASEIMAGE *RgbBaseImage, const(BASEIMAGE)*AlphaBaseImage, int AllNum, int XNum, int YNum, int SizeX, int SizeY, const(int)*HandleBuf,     int TextureFlag = TRUE , int ReverseFlag = FALSE ) ;
int			CreateGraph(                    int Width, int Height, int Pitch, const(void)*RGBImage, const(void)*AlphaImage = NULL , int GrHandle = -1 ) ;
int			CreateDivGraph(                 int Width, int Height, int Pitch, const(void)*RGBImage, int AllNum, int XNum, int YNum, int SizeX, int SizeY, int *HandleBuf, const(void)*AlphaImage = NULL ) ;
int			ReCreateGraph(                  int Width, int Height, int Pitch, const(void)*RGBImage, int GrHandle, const(void)*AlphaImage = NULL ) ;
int			CreateBlendGraphFromSoftImage(  int SIHandle ) ;
int			CreateGraphFromSoftImage(       int SIHandle ) ;
int			CreateGraphFromRectSoftImage(   int SIHandle, int x, int y, int SizeX, int SizeY ) ;
int			ReCreateGraphFromSoftImage(     int SIHandle, int GrHandle ) ;
int			ReCreateGraphFromRectSoftImage( int SIHandle, int x, int y, int SizeX, int SizeY, int GrHandle ) ;
int			CreateDivGraphFromSoftImage(    int SIHandle, int AllNum, int XNum, int YNum, int SizeX, int SizeY, int *HandleBuf ) ;
int			CreateGraphFromBaseImage(       const(BASEIMAGE)*BaseImage ) ;
int			CreateGraphFromRectBaseImage(   const(BASEIMAGE)*BaseImage, int x, int y, int SizeX, int SizeY ) ;
int			ReCreateGraphFromBaseImage(     const(BASEIMAGE)*BaseImage,                                     int GrHandle ) ;
int			ReCreateGraphFromRectBaseImage( const(BASEIMAGE)*BaseImage, int x, int y, int SizeX, int SizeY, int GrHandle ) ;
int			CreateDivGraphFromBaseImage(          BASEIMAGE *BaseImage, int AllNum, int XNum, int YNum, int SizeX, int SizeY, int *HandleBuf ) ;
int			ReloadGraph(					const(TCHAR)*FileName, int GrHandle, int ReverseFlag = FALSE ) ;
int			ReloadDivGraph(					const(TCHAR)*FileName, int AllNum, int XNum, int YNum, int XSize, int YSize, const(int)*HandleBuf, int ReverseFlag = FALSE ) ;
int			ReloadReverseGraph(				const(TCHAR)*FileName, int GrHandle ) ;
int			ReloadReverseDivGraph(			const(TCHAR)*FileName, int AllNum, int XNum, int YNum, int XSize, int YSize, const(int)*HandleBuf ) ;


int			SetGraphColorBitDepth(						int ColorBitDepth ) ;
int			GetGraphColorBitDepth() ;
int			SetCreateGraphColorBitDepth(				int BitDepth ) ;
int			GetCreateGraphColorBitDepth() ;
int			SetCreateGraphChannelBitDepth(				int BitDepth ) ;
int			GetCreateGraphChannelBitDepth() ;
int			SetDrawValidGraphCreateFlag(				int Flag ) ;
int			GetDrawValidGraphCreateFlag() ;
int			SetDrawValidFlagOf3DGraph(					int Flag ) ;
int			SetLeftUpColorIsTransColorFlag(				int Flag ) ;
int			SetUseBlendGraphCreateFlag(					int Flag ) ;
int			GetUseBlendGraphCreateFlag() ;
int			SetUseAlphaTestGraphCreateFlag(				int Flag ) ;
int			GetUseAlphaTestGraphCreateFlag() ;
int			SetUseAlphaTestFlag(						int Flag ) ;
int			GetUseAlphaTestFlag() ;
int			SetCubeMapTextureCreateFlag(				int Flag ) ;
int			GetCubeMapTextureCreateFlag() ;
int			SetUseNoBlendModeParam(						int Flag ) ;
int			SetDrawValidAlphaChannelGraphCreateFlag(	int Flag ) ;
int			GetDrawValidAlphaChannelGraphCreateFlag() ;
int			SetDrawValidFloatTypeGraphCreateFlag(		int Flag ) ;
int			GetDrawValidFloatTypeGraphCreateFlag() ;
int			SetDrawValidGraphCreateZBufferFlag(			int Flag ) ;
int			GetDrawValidGraphCreateZBufferFlag() ;
int			SetCreateDrawValidGraphZBufferBitDepth(		int BitDepth ) ;
int			GetCreateDrawValidGraphZBufferBitDepth() ;
int			SetCreateDrawValidGraphChannelNum(			int ChannelNum ) ;
int			GetCreateDrawValidGraphChannelNum() ;
int			SetCreateDrawValidGraphMultiSample(			int Samples, int Quality ) ;
int			SetDrawValidMultiSample(					int Samples, int Quality ) ;
int			GetMultiSampleQuality(						int Samples ) ;
int			SetUseTransColor(							int Flag ) ;
int			SetUseTransColorGraphCreateFlag(			int Flag ) ;
int			SetUseGraphAlphaChannel(					int Flag ) ;
int			GetUseGraphAlphaChannel() ;
int			SetUseAlphaChannelGraphCreateFlag(			int Flag ) ;
int			GetUseAlphaChannelGraphCreateFlag() ;
int			SetUseNotManageTextureFlag(					int Flag ) ;
int			GetUseNotManageTextureFlag() ;
int			SetUsePlatformTextureFormat(				int PlatformTextureFormat ) ;
int			GetUsePlatformTextureFormat() ;
int			SetTransColor(								int Red, int Green, int Blue ) ;
int			GetTransColor(								int *Red, int *Green, int *Blue ) ;
int			SetUseDivGraphFlag(							int Flag ) ;
int			SetUseAlphaImageLoadFlag(					int Flag ) ;
int			SetUseMaxTextureSize(						int Size ) ;
int			SetUseGraphBaseDataBackup(					int Flag ) ;
int			GetUseGraphBaseDataBackup() ;
int			SetUseSystemMemGraphCreateFlag(				int Flag ) ;
int			GetUseSystemMemGraphCreateFlag() ;


const(uint)* GetFullColorImage(				int GrHandle ) ;

int			GraphLock(						int GrHandle, int *PitchBuf, void **DataPointBuf, COLORDATA **ColorDataPP = NULL, int WriteOnly = FALSE ) ;
int			GraphUnLock(					int GrHandle ) ;

int			SetUseGraphZBuffer(				int GrHandle, int UseFlag, int BitDepth = -1 ) ;
int			CopyGraphZBufferImage(			int DestGrHandle, int SrcGrHandle ) ;

int			SetDeviceLostDeleteGraphFlag(	int GrHandle, int DeleteFlag ) ;

int			GetGraphSize(					int GrHandle, int *SizeXBuf, int *SizeYBuf ) ;
int			GetGraphTextureSize(			int GrHandle, int *SizeXBuf, int *SizeYBuf ) ;
int			GetGraphMipmapCount(			int GrHandle ) ;
int			GetGraphFilePath(				int GrHandle, TCHAR *FilePathBuffer ) ;

const(COLORDATA)* GetTexColorData(			int AlphaCh, int AlphaTest, int ColorBitDepth, int DrawValid = FALSE ) ;
const(COLORDATA)* GetTexColorData(			const(IMAGEFORMATDESC)*Format ) ;
const(COLORDATA)* GetTexColorData(			int FormatIndex ) ;
int			GetMaxGraphTextureSize(			int *SizeX, int *SizeY ) ;
int			GetValidRestoreShredPoint() ;
int			GetCreateGraphColorData(		COLORDATA *ColorData, IMAGEFORMATDESC *Format ) ;


int			GetGraphPalette(				int GrHandle, int ColorIndex, int *Red, int *Green, int *Blue ) ;
int			GetGraphOriginalPalette(		int GrHandle, int ColorIndex, int *Red, int *Green, int *Blue ) ;
int			SetGraphPalette(				int GrHandle, int ColorIndex, uint Color ) ;
int			ResetGraphPalette(				int GrHandle ) ;


int			DrawLine(       int x1, int y1, int x2, int y2,                                 uint Color, int Thickness = 1 ) ;
int			DrawBox(        int x1, int y1, int x2, int y2,                                 uint Color, int FillFlag ) ;
int			DrawFillBox(    int x1, int y1, int x2, int y2,                                 uint Color ) ;
int			DrawLineBox(    int x1, int y1, int x2, int y2,                                 uint Color ) ;
int			DrawCircle(     int x, int y, int r,                                            uint Color, int FillFlag = TRUE, int LineThickness = 1 ) ;
int			DrawOval(       int x, int y, int rx, int ry,                                   uint Color, int FillFlag,        int LineThickness = 1 ) ;
int			DrawTriangle(   int x1, int y1, int x2, int y2, int x3, int y3,                 uint Color, int FillFlag ) ;
int			DrawQuadrangle( int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, uint Color, int FillFlag ) ;
int			DrawRoundRect(	int x1, int y1, int x2, int y2, int rx, int ry,                 uint Color, int FillFlag ) ;
int			DrawPixel(      int x, int y,                                                   uint Color ) ;

int			Paint(			int x, int y, uint FillColor, ULONGLONG BoundaryColor = 0xffffffffffffffff ) ;

int			DrawPixelSet(   const(POINTDATA)*PointData, int Num ) ;
int			DrawLineSet(    const(LINEDATA)*LineData,   int Num ) ;

int			DrawPixel3D(     VECTOR   Pos,                                                                 uint Color ) ;
int			DrawPixel3DD(    VECTOR_D Pos,                                                                 uint Color ) ;
int			DrawLine3D(      VECTOR   Pos1,   VECTOR   Pos2,                                               uint Color ) ;
int			DrawLine3DD(     VECTOR_D Pos1,   VECTOR_D Pos2,                                               uint Color ) ;
int			DrawTriangle3D(  VECTOR   Pos1,   VECTOR   Pos2, VECTOR   Pos3,                                uint Color, int FillFlag ) ;
int			DrawTriangle3DD( VECTOR_D Pos1,   VECTOR_D Pos2, VECTOR_D Pos3,                                uint Color, int FillFlag ) ;
int			DrawCube3D(      VECTOR   Pos1,   VECTOR   Pos2,                            uint DifColor, uint SpcColor, int FillFlag ) ;
int			DrawCube3DD(     VECTOR_D Pos1,   VECTOR_D Pos2,                            uint DifColor, uint SpcColor, int FillFlag ) ;
int			DrawSphere3D(    VECTOR   CenterPos,                  float  r, int DivNum, uint DifColor, uint SpcColor, int FillFlag ) ;
int			DrawSphere3DD(   VECTOR_D CenterPos,                  double r, int DivNum, uint DifColor, uint SpcColor, int FillFlag ) ;
int			DrawCapsule3D(   VECTOR   Pos1,   VECTOR   Pos2,      float  r, int DivNum, uint DifColor, uint SpcColor, int FillFlag ) ;
int			DrawCapsule3DD(  VECTOR_D Pos1,   VECTOR_D Pos2,      double r, int DivNum, uint DifColor, uint SpcColor, int FillFlag ) ;
int			DrawCone3D(      VECTOR   TopPos, VECTOR   BottomPos, float  r, int DivNum, uint DifColor, uint SpcColor, int FillFlag ) ;
int			DrawCone3DD(     VECTOR_D TopPos, VECTOR_D BottomPos, double r, int DivNum, uint DifColor, uint SpcColor, int FillFlag ) ;


int			LoadGraphScreen(          int x, int y, const(TCHAR)*GraphName, int TransFlag ) ;

int			DrawGraph(                int x, int y,                                                                 int GrHandle, int TransFlag ) ;
int			DrawExtendGraph(          int x1, int y1, int x2, int y2,                                               int GrHandle, int TransFlag ) ;
int			DrawRotaGraph(            int x, int y,                 double ExRate,                    double Angle, int GrHandle, int TransFlag, int TurnFlag = FALSE  ) ;
int			DrawRotaGraph2(           int x, int y, int cx, int cy, double ExtRate,                   double Angle, int GrHandle, int TransFlag, int TurnFlag = FALSE  ) ;
int			DrawRotaGraph3(           int x, int y, int cx, int cy, double ExtRateX, double ExtRateY, double Angle, int GrHandle, int TransFlag, int TurnFlag = FALSE ) ;
int			DrawModiGraph(            int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4,               int GrHandle, int TransFlag ) ;
int			DrawTurnGraph(            int x, int y,                                                                 int GrHandle, int TransFlag ) ;

int			DrawGraphF(               float xf, float yf,                                                                       int GrHandle, int TransFlag ) ;
int			DrawExtendGraphF(         float x1f, float y1f, float x2f, float y2,                                                int GrHandle, int TransFlag ) ;
int			DrawRotaGraphF(           float xf, float yf,                       double ExRate,                    double Angle, int GrHandle, int TransFlag, int TurnFlag = FALSE  ) ;
int			DrawRotaGraph2F(          float xf, float yf, float cxf, float cyf, double ExtRate,                   double Angle, int GrHandle, int TransFlag, int TurnFlag = FALSE  ) ;
int			DrawRotaGraph3F(          float xf, float yf, float cxf, float cyf, double ExtRateX, double ExtRateY, double Angle, int GrHandle, int TransFlag, int TurnFlag = FALSE ) ;
int			DrawModiGraphF(           float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4,           int GrHandle, int TransFlag ) ;
int			DrawTurnGraphF(           float xf, float yf,                                                                       int GrHandle, int TransFlag ) ;

int			DrawChipMap(              int Sx, int Sy, int XNum, int YNum, const(int)*MapData, int ChipTypeNum, int MapDataPitch, const(int)*ChipGrHandle, int TransFlag ) ;
int			DrawChipMap(              int MapWidth, int MapHeight,        const(int)*MapData, int ChipTypeNum,                   const(int)*ChipGrHandle, int TransFlag, int MapDrawPointX, int MapDrawPointY, int MapDrawWidth, int MapDrawHeight, int ScreenX, int ScreenY ) ;
int			DrawTile(                 int x1, int y1, int x2, int y2, int Tx, int Ty, double ExtRate, double Angle, int GrHandle, int TransFlag ) ;

int			DrawRectGraph(            int DestX,  int DestY,                          int SrcX, int SrcY, int    Width, int    Height,                         int GraphHandle, int TransFlag, int TurnFlag ) ;
int			DrawRectExtendGraph(      int DestX1, int DestY1, int DestX2, int DestY2, int SrcX, int SrcY, int SrcWidth, int SrcHeight,                         int GraphHandle, int TransFlag ) ;
int			DrawRectRotaGraph(        int x, int y, int SrcX, int SrcY, int Width, int Height, double ExtRate, double Angle,                                   int GraphHandle, int TransFlag, int TurnFlag ) ;
int			DrawRectRotaGraph2(       int x, int y, int SrcX, int SrcY, int Width, int Height, int cx, int cy, double ExtRate,  double Angle,                  int GraphHandle, int TransFlag, int TurnFlag ) ;
int			DrawRectRotaGraph3(       int x, int y, int SrcX, int SrcY, int Width, int Height, int cx, int cy, double ExtRateX, double ExtRateY, double Angle, int GraphHandle, int TransFlag, int TurnFlag ) ;
int			DrawRectModiGraph(        int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, int SrcX, int SrcY, int Width, int Height,               int GraphHandle, int TransFlag ) ;

int			DrawRectGraphF(           float DestX,  float DestY,                              int SrcX, int SrcY, int    Width, int    Height,                           int GraphHandle, int TransFlag, int TurnFlag ) ;
int			DrawRectExtendGraphF(     float DestX1, float DestY1, float DestX2, float DestY2, int SrcX, int SrcY, int SrcWidth, int SrcHeight,                           int GraphHandle, int TransFlag ) ;
int			DrawRectRotaGraphF(       float x, float y, int SrcX, int SrcY, int Width, int Height,                       double ExtRate,                   double Angle, int GraphHandle, int TransFlag, int TurnFlag ) ;
int			DrawRectRotaGraph2F(      float x, float y, int SrcX, int SrcY, int Width, int Height, float cxf, float cyf, double ExtRate,                   double Angle, int GraphHandle, int TransFlag, int TurnFlag ) ;
int			DrawRectRotaGraph3F(      float x, float y, int SrcX, int SrcY, int Width, int Height, float cxf, float cyf, double ExtRateX, double ExtRateY, double Angle, int GraphHandle, int TransFlag, int TurnFlag ) ;
int			DrawRectModiGraphF(       float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4, int SrcX, int SrcY, int Width, int Height,         int GraphHandle, int TransFlag ) ;

int			DrawBlendGraph(           int x, int y, int GrHandle, int TransFlag,                 int BlendGraph, int BorderParam, int BorderRange ) ;
int			DrawBlendGraphPos(        int x, int y, int GrHandle, int TransFlag, int bx, int by, int BlendGraph, int BorderParam, int BorderRange ) ;

int			DrawCircleGauge(          int CenterX, int CenterY, double Percent, int GrHandle, double StartPercent = 0.0 ) ;

int			DrawGraphToZBuffer(       int X, int Y,                                                                 int GrHandle, int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawTurnGraphToZBuffer(   int x, int y,                                                                 int GrHandle, int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawExtendGraphToZBuffer( int x1, int y1, int x2, int y2,                                               int GrHandle, int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawRotaGraphToZBuffer(   int x, int y, double ExRate, double Angle,                                    int GrHandle, int WriteZMode /* DX_ZWRITE_MASK 等 */ , int TurnFlag = FALSE ) ;
int			DrawRotaGraph2ToZBuffer(  int x, int y, int cx, int cy, double ExtRate,                   double Angle, int GrHandle, int WriteZMode /* DX_ZWRITE_MASK 等 */ , int TurnFlag = FALSE ) ;
int			DrawRotaGraph3ToZBuffer(  int x, int y, int cx, int cy, double ExtRateX, double ExtRateY, double Angle, int GrHandle, int WriteZMode /* DX_ZWRITE_MASK 等 */ , int TurnFlag = FALSE ) ;
int			DrawModiGraphToZBuffer(   int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4,               int GrHandle, int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawBoxToZBuffer(         int x1, int y1, int x2, int y2,                                               int FillFlag, int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawCircleToZBuffer(      int x, int y, int r,                                                          int FillFlag, int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawTriangleToZBuffer(    int x1, int y1, int x2, int y2, int x3, int y3,                               int FillFlag, int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawQuadrangleToZBuffer(  int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4,               int FillFlag, int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawRoundRectToZBuffer(   int x1, int y1, int x2, int y2, int rx, int ry,                               int FillFlag, int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;

int			DrawPolygon(                             const(VERTEX)*Vertex, int PolygonNum,                                                                                                    int GrHandle, int TransFlag, int UVScaling = FALSE ) ;
int			DrawPolygon2D(                           const(VERTEX2D)*Vertex, int PolygonNum,                                                                                                    int GrHandle, int TransFlag ) ;
int			DrawPolygon3D(                           const(VERTEX3D)*Vertex, int PolygonNum,                                                                                                    int GrHandle, int TransFlag ) ;
int			DrawPolygonIndexed2D(                    const(VERTEX2D)*Vertex, int VertexNum, const(ushort)*Indices, int PolygonNum,                                                      int GrHandle, int TransFlag ) ;
int			DrawPolygonIndexed3D(                    const(VERTEX3D)*Vertex, int VertexNum, const(ushort)*Indices, int PolygonNum,                                                      int GrHandle, int TransFlag ) ;
int			DrawPolygonIndexed3DBase(                const(VERTEX_3D)*Vertex, int VertexNum, const(ushort)*Indices, int IndexNum,   int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */, int GrHandle, int TransFlag ) ;
int			DrawPolygon3DBase(                       const(VERTEX_3D)*Vertex, int VertexNum,                                                int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */, int GrHandle, int TransFlag ) ;
int			DrawPolygon3D(                           const(VERTEX_3D)*Vertex, int PolygonNum,                                                                                                    int GrHandle, int TransFlag ) ;

int			DrawPolygonBase(                         const(VERTEX)*Vertex, int VertexNum,                                                int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */, int GrHandle, int TransFlag, int UVScaling = FALSE ) ;
int			DrawPrimitive2D(                         const(VERTEX2D)*Vertex, int VertexNum,                                                int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */, int GrHandle, int TransFlag ) ;
int			DrawPrimitive3D(                         const(VERTEX3D)*Vertex, int VertexNum,                                                int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */, int GrHandle, int TransFlag ) ;
int			DrawPrimitiveIndexed2D(                  const(VERTEX2D)*Vertex, int VertexNum, const(ushort)*Indices, int IndexNum,   int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */, int GrHandle, int TransFlag ) ;
int			DrawPrimitiveIndexed3D(                  const(VERTEX3D)*Vertex, int VertexNum, const(ushort)*Indices, int IndexNum,   int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */, int GrHandle, int TransFlag ) ;

int			DrawPolygon3D_UseVertexBuffer(           int VertexBufHandle,                                                                                                                                                               int GrHandle, int TransFlag ) ;
int			DrawPrimitive3D_UseVertexBuffer(         int VertexBufHandle,                     int PrimitiveType  /* DX_PRIMTYPE_TRIANGLELIST 等 */,                                                                                     int GrHandle, int TransFlag ) ;
int			DrawPrimitive3D_UseVertexBuffer2(        int VertexBufHandle,                     int PrimitiveType  /* DX_PRIMTYPE_TRIANGLELIST 等 */,                 int StartVertex, int UseVertexNum,                                  int GrHandle, int TransFlag ) ;
int			DrawPolygonIndexed3D_UseVertexBuffer(    int VertexBufHandle, int IndexBufHandle,                                                                                                                                           int GrHandle, int TransFlag ) ;
int			DrawPrimitiveIndexed3D_UseVertexBuffer(  int VertexBufHandle, int IndexBufHandle, int PrimitiveType  /* DX_PRIMTYPE_TRIANGLELIST 等 */,                                                                                     int GrHandle, int TransFlag ) ;
int			DrawPrimitiveIndexed3D_UseVertexBuffer2( int VertexBufHandle, int IndexBufHandle, int PrimitiveType  /* DX_PRIMTYPE_TRIANGLELIST 等 */, int BaseVertex, int StartVertex, int UseVertexNum, int StartIndex, int UseIndexNum, int GrHandle, int TransFlag ) ;

int			DrawGraph3D(                             float x, float y, float z,                                                                     int GrHandle, int TransFlag ) ;
int			DrawExtendGraph3D(                       float x, float y, float z, double ExRateX, double ExRateY,                                     int GrHandle, int TransFlag ) ;
int			DrawRotaGraph3D(                         float x, float y, float z, double ExRate, double Angle,                                        int GrHandle, int TransFlag, int TurnFlag = FALSE ) ;
int			DrawRota2Graph3D(                        float x, float y, float z, float cx, float cy, double ExtRateX, double ExtRateY, double Angle, int GrHandle, int TransFlag, int TurnFlag = FALSE ) ;
int			DrawModiBillboard3D(                     VECTOR Pos, float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4,    int GrHandle, int TransFlag ) ;
int			DrawBillboard3D(                         VECTOR Pos, float cx, float cy, float Size, float Angle,                                       int GrHandle, int TransFlag, int TurnFlag = FALSE ) ;



int			SetDrawMode(						int DrawMode ) ;
int			GetDrawMode() ;
int			SetDrawBlendMode(					int BlendMode, int BlendParam ) ;
int			GetDrawBlendMode(					int *BlendMode, int *BlendParam ) ;
int			SetDrawAlphaTest(					int TestMode, int TestParam ) ;
int			SetBlendGraph(						int BlendGraph, int BorderParam, int BorderRange ) ;
int			SetBlendGraphParam(					int BlendGraph, int BlendType, ... ) ;



int			SetBlendGraphPosition(				int x, int y ) ;
int			SetDrawBright(						int RedBright, int GreenBright, int BlueBright ) ;
int			GetDrawBright(						int *Red, int *Green, int *Blue ) ;
int			SetIgnoreDrawGraphColor(			int EnableFlag ) ;
int			SetMaxAnisotropy(					int MaxAnisotropy ) ;
int			SetUseLarge3DPositionSupport(		int UseFlag ) ;

int			SetUseZBufferFlag(					int Flag ) ;
int			SetWriteZBufferFlag(				int Flag ) ;
int			SetZBufferCmpType(					int CmpType /* DX_CMP_NEVER 等 */ ) ;
int			SetZBias(							int Bias ) ;
int			SetUseZBuffer3D(					int Flag ) ;
int			SetWriteZBuffer3D(					int Flag ) ;
int			SetZBufferCmpType3D(				int CmpType /* DX_CMP_NEVER 等 */ ) ;
int			SetZBias3D(							int Bias ) ;
int			SetDrawZ(							float Z ) ;

int			SetDrawArea(						int x1, int y1, int x2, int y2 ) ;
int			GetDrawArea(						RECT *Rect ) ;
int			SetDrawAreaFull() ;
int			SetDraw3DScale(						float Scale ) ;

int			SetRestoreShredPoint(				void  function()ShredPoint ) ;
int			SetRestoreGraphCallback(			void  function()Callback ) ;
int			RunRestoreShred() ;
int			SetGraphicsDeviceRestoreCallbackFunction( void  function( void *Data )Callback, void *CallbackData ) ;
int			SetGraphicsDeviceLostCallbackFunction(    void  function( void *Data )Callback, void *CallbackData ) ;

int			SetTransformToWorld(				const(MATRIX)*Matrix ) ;
int			SetTransformToWorldD(				const(MATRIX_D)*Matrix ) ;
int			GetTransformToWorldMatrix(			      MATRIX   *MatBuf ) ;
int			GetTransformToWorldMatrixD(			      MATRIX_D *MatBuf ) ;
int			SetTransformToView(					const(MATRIX)*Matrix ) ;
int			SetTransformToViewD(				const(MATRIX_D)*Matrix ) ;
int			GetTransformToViewMatrix(			      MATRIX   *MatBuf ) ;
int			GetTransformToViewMatrixD(			      MATRIX_D *MatBuf ) ;
int			SetTransformToProjection(			const(MATRIX)*Matrix ) ;
int			SetTransformToProjectionD(			const(MATRIX_D)*Matrix ) ;
int			GetTransformToProjectionMatrix(		      MATRIX   *MatBuf ) ;
int			GetTransformToProjectionMatrixD(	      MATRIX_D *MatBuf ) ;
int			SetTransformToViewport(				const(MATRIX)*Matrix ) ;
int			SetTransformToViewportD(			const(MATRIX_D)*Matrix ) ;
int			GetTransformToViewportMatrix(	    MATRIX   *MatBuf ) ;
int			GetTransformToViewportMatrixD(	    MATRIX_D *MatBuf ) ;
int			GetTransformToAPIViewportMatrix(    MATRIX   *MatBuf ) ;
int			GetTransformToAPIViewportMatrixD(   MATRIX_D *MatBuf ) ;
int			SetDefTransformMatrix() ;
int			GetTransformPosition(				VECTOR   *LocalPos, float  *x, float  *y ) ;
int			GetTransformPositionD(				VECTOR_D *LocalPos, double *x, double *y ) ;
float		GetBillboardPixelSize(				VECTOR   WorldPos, float  WorldSize ) ;
double		GetBillboardPixelSizeD(				VECTOR_D WorldPos, double WorldSize ) ;
VECTOR		ConvWorldPosToViewPos(				VECTOR   WorldPos ) ;
VECTOR_D	ConvWorldPosToViewPosD(				VECTOR_D WorldPos ) ;
VECTOR		ConvWorldPosToScreenPos(			VECTOR   WorldPos ) ;
VECTOR_D	ConvWorldPosToScreenPosD(			VECTOR_D WorldPos ) ;
FLOAT4		ConvWorldPosToScreenPosPlusW(		VECTOR   WorldPos ) ;
DOUBLE4		ConvWorldPosToScreenPosPlusWD(		VECTOR_D WorldPos ) ;
VECTOR		ConvScreenPosToWorldPos(			VECTOR   ScreenPos ) ;
VECTOR_D	ConvScreenPosToWorldPosD(			VECTOR_D ScreenPos ) ;
VECTOR		ConvScreenPosToWorldPos_ZLinear(	VECTOR   ScreenPos ) ;
VECTOR_D	ConvScreenPosToWorldPos_ZLinearD(	VECTOR_D ScreenPos ) ;

int			SetUseCullingFlag(					int Flag ) ;
int			SetUseBackCulling(					int Flag /* DX_CULLING_LEFT 等 */ ) ;
int			GetUseBackCulling() ;

int			SetTextureAddressMode(				int Mode /* DX_TEXADDRESS_WRAP 等 */ , int Stage = -1 ) ;
int			SetTextureAddressModeUV(			int ModeU, int ModeV, int Stage = -1 ) ;
int			SetTextureAddressTransform(			float TransU, float TransV, float ScaleU, float ScaleV, float RotCenterU, float RotCenterV, float Rotate ) ;
int			SetTextureAddressTransformMatrix(	MATRIX Matrix ) ;
int			ResetTextureAddressTransform() ;

int			SetFogEnable(						int Flag ) ;
int			GetFogEnable() ;
int			SetFogMode(							int Mode /* DX_FOGMODE_NONE 等 */ ) ;
int			GetFogMode() ;
int			SetFogColor(						int  r, int  g, int  b ) ;
int			GetFogColor(						int *r, int *g, int *b ) ;
int			SetFogStartEnd(						float  start, float  end ) ;
int			GetFogStartEnd(						float *start, float *end ) ;
int			SetFogDensity(						float density ) ;
float		GetFogDensity() ;



uint	GetPixel(									int x, int y ) ;
int				SetBackgroundColor(							int Red, int Green, int Blue ) ;
int				GetDrawScreenGraph(							                             int x1, int y1, int x2, int y2,                       int GrHandle, int UseClientFlag = TRUE ) ;
int				BltDrawValidGraph(							int TargetDrawValidGrHandle, int x1, int y1, int x2, int y2, int DestX, int DestY, int DestGrHandle ) ;
int				ScreenFlip() ;
int				ScreenCopy() ;
int				WaitVSync(									int SyncNum ) ;
int				ClearDrawScreen(					        const(RECT)*ClearRect = NULL ) ;
int				ClearDrawScreenZBuffer(						const(RECT)*ClearRect = NULL ) ;
int				ClsDrawScreen() ;
int				SetDrawScreen(								int DrawScreen ) ;
int				GetDrawScreen() ;
int				GetActiveGraph() ;
int				SetUseSetDrawScreenSettingReset(			int UseFlag ) ;
int				GetUseSetDrawScreenSettingReset() ;
int				SetDrawZBuffer(								int DrawScreen ) ;
int				SetGraphMode(								int ScreenSizeX, int ScreenSizeY, int ColorBitDepth, int RefreshRate = 60 ) ;
int				SetFullScreenResolutionMode(				int ResolutionMode /* DX_FSRESOLUTIONMODE_NATIVE 等 */ ) ;
int				SetFullScreenScalingMode(					int ScalingMode /* DX_FSSCALINGMODE_NEAREST 等 */ ) ;
int				SetEmulation320x240(						int Flag ) ;
int				SetZBufferSize(								int ZBufferSizeX, int ZBufferSizeY ) ;
int				SetZBufferBitDepth(							int BitDepth ) ;
int				SetWaitVSyncFlag(							int Flag ) ;
int				GetWaitVSyncFlag() ;
int				SetFullSceneAntiAliasingMode(				int Samples, int Quality ) ;
int				SetGraphDisplayArea(						int x1, int y1, int x2, int y2 ) ;
int				SetChangeScreenModeGraphicsSystemResetFlag(	int Flag ) ;
int				GetScreenState(								int *SizeX, int *SizeY, int *ColorBitDepth ) ;
int				GetDrawScreenSize(							int *XBuf, int *YBuf ) ;
int				GetScreenBitDepth() ;
int				GetColorBitDepth() ;
int				GetChangeDisplayFlag() ;
int				GetVideoMemorySize(							int *AllSize, int *FreeSize ) ;
int				GetRefreshRate() ;
int				GetDisplayNum() ;
int				GetDisplayModeNum(							int DisplayIndex = 0 ) ;
DISPLAYMODEDATA	GetDisplayMode(								int ModeIndex, int DisplayIndex = 0 ) ;
int				GetDisplayMaxResolution(					int *SizeX, int *SizeY, int DisplayIndex = 0 ) ;
const(COLORDATA)* GetDispColorData() ;
int				GetMultiDrawScreenNum() ;
int				GetDrawFloatCoordType() ;


int			SetUseNormalDrawShader(						int Flag ) ;
int			SetUseSoftwareRenderModeFlag(				int Flag ) ;
int			SetNotUse3DFlag(							int Flag ) ;
int			SetUse3DFlag(								int Flag ) ;
int			GetUse3DFlag() ;
int			SetScreenMemToVramFlag(						int Flag ) ;
int			GetScreenMemToSystemMemFlag() ;

int			SetWindowDrawRect(							const(RECT)*DrawRect ) ;
int			RestoreGraphSystem() ;
int			SetUseHardwareVertexProcessing(				int Flag ) ;
int			SetUsePixelLighting(						int Flag ) ;
int			SetUseOldDrawModiGraphCodeFlag(				int Flag ) ;
int			SetUseVramFlag(								int Flag ) ;
int			GetUseVramFlag() ;
int			SetBasicBlendFlag(							int Flag ) ;
int			SetUseBasicGraphDraw3DDeviceMethodFlag(		int Flag ) ;
int			SetUseDisplayIndex(							int Index ) ;
int			RenderVertex() ;





int			SaveDrawScreen(       int x1, int y1, int x2, int y2, const(TCHAR)*FileName, int SaveType = DX_IMAGESAVETYPE_BMP , int Jpeg_Quality = 80 , int Jpeg_Sample2x1 = TRUE , int Png_CompressionLevel = -1 ) ;
int			SaveDrawScreenToBMP(  int x1, int y1, int x2, int y2, const(TCHAR)*FileName ) ;
int			SaveDrawScreenToJPEG( int x1, int y1, int x2, int y2, const(TCHAR)*FileName, int Quality = 80 , int Sample2x1 = TRUE ) ;
int			SaveDrawScreenToPNG(  int x1, int y1, int x2, int y2, const(TCHAR)*FileName, int CompressionLevel = -1 ) ;



int			CreateVertexBuffer(		int VertexNum, int VertexType /* DX_VERTEX_TYPE_NORMAL_3D 等 */ ) ;
int			DeleteVertexBuffer(		int VertexBufHandle ) ;
int			InitVertexBuffer() ;
int			SetVertexBufferData(	int SetIndex, const(void)*VertexData, int VertexNum, int VertexBufHandle ) ;
int			CreateIndexBuffer(		int IndexNum, int IndexType /* DX_INDEX_TYPE_16BIT 等 */  ) ;
int			DeleteIndexBuffer(		int IndexBufHandle ) ;
int			InitIndexBuffer() ;
int			SetIndexBufferData(		int SetIndex, const(void)*IndexData, int IndexNum, int IndexBufHandle ) ;
int			GetMaxPrimitiveCount() ;
int			GetMaxVertexIndex() ;


int			GetValidShaderVersion() ;

int			LoadVertexShader(			const(TCHAR)*FileName ) ;
int			LoadPixelShader(			const(TCHAR)*FileName ) ;
int			LoadVertexShaderFromMem(	const(void)*ImageAddress, int ImageSize ) ;
int			LoadPixelShaderFromMem(		const(void)*ImageAddress, int ImageSize ) ;
int			DeleteShader(				int ShaderHandle ) ;
int			InitShader() ;

int			GetConstIndexToShader(           const(TCHAR)*ConstantName, int ShaderHandle ) ;
int			GetConstCountToShader(           const(TCHAR)*ConstantName, int ShaderHandle ) ;
const(FLOAT4)*GetConstDefaultParamFToShader( const(TCHAR)*ConstantName, int ShaderHandle ) ;
int			SetVSConstSF(         int ConstantIndex,       float  Param ) ;
int			SetVSConstF(          int ConstantIndex,       FLOAT4 Param ) ;
int			SetVSConstFMtx(       int ConstantIndex,       MATRIX Param ) ;
int			SetVSConstFMtxT(      int ConstantIndex,       MATRIX Param ) ;
int			SetVSConstSI(         int ConstantIndex,       int    Param ) ;
int			SetVSConstI(          int ConstantIndex,       INT4   Param ) ;
int			SetVSConstB(          int ConstantIndex,       BOOL   Param ) ;
int			SetVSConstSFArray(    int ConstantIndex, const(float)*ParamArray, int ParamNum ) ;
int			SetVSConstFArray(     int ConstantIndex, const(FLOAT4)*ParamArray, int ParamNum ) ;
int			SetVSConstFMtxArray(  int ConstantIndex, const(MATRIX)*ParamArray, int ParamNum ) ;
int			SetVSConstFMtxTArray( int ConstantIndex, const(MATRIX)*ParamArray, int ParamNum ) ;
int			SetVSConstSIArray(    int ConstantIndex, const(int)*ParamArray, int ParamNum ) ;
int			SetVSConstIArray(     int ConstantIndex, const(INT4)*ParamArray, int ParamNum ) ;
int			SetVSConstBArray(     int ConstantIndex, const(BOOL)*ParamArray, int ParamNum ) ;
int			ResetVSConstF(        int ConstantIndex, int ParamNum ) ;
int			ResetVSConstI(        int ConstantIndex, int ParamNum ) ;
int			ResetVSConstB(        int ConstantIndex, int ParamNum ) ;

int			SetPSConstSF(         int ConstantIndex,       float  Param ) ;
int			SetPSConstF(          int ConstantIndex,       FLOAT4 Param ) ;
int			SetPSConstFMtx(       int ConstantIndex,       MATRIX Param ) ;
int			SetPSConstFMtxT(      int ConstantIndex,       MATRIX Param ) ;
int			SetPSConstSI(         int ConstantIndex,       int    Param ) ;
int			SetPSConstI(          int ConstantIndex,       INT4   Param ) ;
int			SetPSConstB(          int ConstantIndex,       BOOL   Param ) ;
int			SetPSConstSFArray(    int ConstantIndex, const(float)*ParamArray, int ParamNum ) ;
int			SetPSConstFArray(     int ConstantIndex, const(FLOAT4)*ParamArray, int ParamNum ) ;
int			SetPSConstFMtxArray(  int ConstantIndex, const(MATRIX)*ParamArray, int ParamNum ) ;
int			SetPSConstFMtxTArray( int ConstantIndex, const(MATRIX)*ParamArray, int ParamNum ) ;
int			SetPSConstSIArray(    int ConstantIndex, const(int)*ParamArray, int ParamNum ) ;
int			SetPSConstIArray(     int ConstantIndex, const(INT4)*ParamArray, int ParamNum ) ;
int			SetPSConstBArray(     int ConstantIndex, const(BOOL)*ParamArray, int ParamNum ) ;
int			ResetPSConstF(        int ConstantIndex, int ParamNum ) ;
int			ResetPSConstI(        int ConstantIndex, int ParamNum ) ;
int			ResetPSConstB(        int ConstantIndex, int ParamNum ) ;

int			SetRenderTargetToShader( int TargetIndex, int DrawScreen, int SurfaceIndex = 0 ) ;
int			SetUseTextureToShader(   int StageIndex, int GraphHandle ) ;
int			SetUseVertexShader(      int ShaderHandle ) ;
int			SetUsePixelShader(       int ShaderHandle ) ;

int			CalcPolygonBinormalAndTangentsToShader(        VERTEX3DSHADER *Vertex, int PolygonNum ) ;
int			CalcPolygonIndexedBinormalAndTangentsToShader( VERTEX3DSHADER *Vertex, int VertexNum, const(ushort)*Indices, int PolygonNum ) ;

int			DrawPolygon2DToShader(          const(VERTEX2DSHADER)*Vertex, int PolygonNum ) ;
int			DrawPolygon3DToShader(          const(VERTEX3DSHADER)*Vertex, int PolygonNum ) ;
int			DrawPolygonIndexed2DToShader(   const(VERTEX2DSHADER)*Vertex, int VertexNum, const(ushort)*Indices, int PolygonNum ) ;
int			DrawPolygonIndexed3DToShader(   const(VERTEX3DSHADER)*Vertex, int VertexNum, const(ushort)*Indices, int PolygonNum ) ;
int			DrawPrimitive2DToShader(        const(VERTEX2DSHADER)*Vertex, int VertexNum,                                              int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */ ) ;
int			DrawPrimitive3DToShader(        const(VERTEX3DSHADER)*Vertex, int VertexNum,                                              int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */ ) ;
int			DrawPrimitiveIndexed2DToShader( const(VERTEX2DSHADER)*Vertex, int VertexNum, const(ushort)*Indices, int IndexNum, int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */ ) ;
int			DrawPrimitiveIndexed3DToShader( const(VERTEX3DSHADER)*Vertex, int VertexNum, const(ushort)*Indices, int IndexNum, int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */ ) ;
int			DrawPolygon3DToShader_UseVertexBuffer(           int VertexBufHandle ) ;
int			DrawPolygonIndexed3DToShader_UseVertexBuffer(    int VertexBufHandle, int IndexBufHandle ) ;
int			DrawPrimitive3DToShader_UseVertexBuffer(         int VertexBufHandle,                     int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */ ) ;
int			DrawPrimitive3DToShader_UseVertexBuffer2(        int VertexBufHandle,                     int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */, int StartVertex, int UseVertexNum ) ;
int			DrawPrimitiveIndexed3DToShader_UseVertexBuffer(  int VertexBufHandle, int IndexBufHandle, int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */ ) ;
int			DrawPrimitiveIndexed3DToShader_UseVertexBuffer2( int VertexBufHandle, int IndexBufHandle, int PrimitiveType /* DX_PRIMTYPE_TRIANGLELIST 等 */, int BaseVertex, int StartVertex, int UseVertexNum, int StartIndex, int UseIndexNum ) ;


int			InitShaderConstantBuffer() ;
int			CreateShaderConstantBuffer(		int BufferSize ) ;
int			DeleteShaderConstantBuffer(		int SConstBufHandle ) ;
void *		GetBufferShaderConstantBuffer(	int SConstBufHandle ) ;
int			UpdateShaderConstantBuffer(		int SConstBufHandle ) ;
int			SetShaderConstantBuffer(		int SConstBufHandle, int TargetShader /* DX_SHADERTYPE_VERTEX など */ , int Slot ) ;


int			GraphFilter(         int    GrHandle,                                                                                                               int FilterType /* DX_GRAPH_FILTER_GAUSS 等 */ , ... ) ;
int			GraphFilterBlt(      int SrcGrHandle, int DestGrHandle,                                                                                             int FilterType /* DX_GRAPH_FILTER_GAUSS 等 */ , ... ) ;
int			GraphFilterRectBlt(  int SrcGrHandle, int DestGrHandle, int SrcX1, int SrcY1, int SrcX2, int SrcY2, int DestX,  int DestY,                          int FilterType /* DX_GRAPH_FILTER_GAUSS 等 */ , ... ) ;













int			GraphBlend(         int    GrHandle, int BlendGrHandle,                                                                                                                                         int BlendRatio /* ブレンド効果の影響度( 0:０％  255:１００％ ) */ , int BlendType /* DX_GRAPH_BLEND_ADD 等 */ , ... ) ;
int			GraphBlendBlt(      int SrcGrHandle, int BlendGrHandle, int DestGrHandle,                                                                                                                       int BlendRatio /* ブレンド効果の影響度( 0:０％  255:１００％ ) */ , int BlendType /* DX_GRAPH_BLEND_ADD 等 */ , ... ) ;
int			GraphBlendRectBlt(  int SrcGrHandle, int BlendGrHandle, int DestGrHandle, int SrcX1, int SrcY1, int SrcX2, int SrcY2, int BlendX,  int BlendY,                            int DestX, int DestY, int BlendRatio /* ブレンド効果の影響度( 0:０％  255:１００％ ) */ , int BlendType /* DX_GRAPH_BLEND_ADD 等 */ , ... ) ;




















int			PlayMovie(							const(TCHAR)*FileName, int ExRate, int PlayType ) ;
int			OpenMovieToGraph(					const(TCHAR)*FileName, int FullColor = TRUE ) ;
int			PlayMovieToGraph(					int GraphHandle, int PlayType = DX_PLAYTYPE_BACK , int SysPlay = 0 ) ;
int			PauseMovieToGraph(					int GraphHandle, int SysPause = 0 ) ;
int			AddMovieFrameToGraph(				int GraphHandle, uint FrameNum ) ;
int			SeekMovieToGraph(					int GraphHandle, int Time ) ;
int			SetPlaySpeedRateMovieToGraph(		int GraphHandle, double SpeedRate ) ;
int			GetMovieStateToGraph(				int GraphHandle ) ;
int			SetMovieVolumeToGraph(				int Volume, int GraphHandle ) ;
int			ChangeMovieVolumeToGraph(			int Volume, int GraphHandle ) ;
const(BASEIMAGE)* GetMovieBaseImageToGraph(		int GraphHandle, int *ImageUpdateFlag = NULL ) ;
int			GetMovieTotalFrameToGraph(			int GraphHandle ) ;
int			TellMovieToGraph(					int GraphHandle ) ;
int			TellMovieToGraphToFrame(			int GraphHandle ) ;
int			SeekMovieToGraphToFrame(			int GraphHandle, int Frame ) ;
LONGLONG	GetOneFrameTimeMovieToGraph(		int GraphHandle ) ;
int			GetLastUpdateTimeMovieToGraph(		int GraphHandle ) ;
int			SetMovieRightImageAlphaFlag(		int Flag ) ;
int			SetMovieColorA8R8G8B8Flag(			int Flag ) ;
int			SetMovieUseYUVFormatSurfaceFlag(	int Flag ) ;


int			SetCameraNearFar(					float  Near, float  Far ) ;
int			SetCameraNearFarD(					double Near, double Far ) ;
int			SetCameraPositionAndTarget_UpVecY(  VECTOR    Position, VECTOR   Target ) ;
int			SetCameraPositionAndTarget_UpVecYD( VECTOR_D  Position, VECTOR_D Target ) ;
int			SetCameraPositionAndTargetAndUpVec( VECTOR    Position, VECTOR   TargetPosition, VECTOR   UpVector ) ;
int			SetCameraPositionAndTargetAndUpVecD( VECTOR_D Position, VECTOR_D TargetPosition, VECTOR_D UpVector ) ;
int			SetCameraPositionAndAngle(			VECTOR   Position, float  VRotate, float  HRotate, float  TRotate ) ;
int			SetCameraPositionAndAngleD(			VECTOR_D Position, double VRotate, double HRotate, double TRotate ) ;
int			SetCameraViewMatrix(				MATRIX   ViewMatrix ) ;
int			SetCameraViewMatrixD(				MATRIX_D ViewMatrix ) ;
int			SetCameraScreenCenter(				float x, float y ) ;
int			SetCameraScreenCenterD(				double x, double y ) ;

int			SetupCamera_Perspective(			float  Fov ) ;
int			SetupCamera_PerspectiveD(			double Fov ) ;
int			SetupCamera_Ortho(					float  Size ) ;
int			SetupCamera_OrthoD(					double Size ) ;
int			SetupCamera_ProjectionMatrix(		MATRIX   ProjectionMatrix ) ;
int			SetupCamera_ProjectionMatrixD(		MATRIX_D ProjectionMatrix ) ;
int			SetCameraDotAspect(					float  DotAspect ) ;
int			SetCameraDotAspectD(				double DotAspect ) ;

int			CheckCameraViewClip(				VECTOR   CheckPos ) ;
int			CheckCameraViewClipD(				VECTOR_D CheckPos ) ;
int			CheckCameraViewClip_Dir(			VECTOR   CheckPos ) ;
int			CheckCameraViewClip_DirD(			VECTOR_D CheckPos ) ;
int			CheckCameraViewClip_Box(			VECTOR   BoxPos1, VECTOR   BoxPos2 ) ;
int			CheckCameraViewClip_BoxD(			VECTOR_D BoxPos1, VECTOR_D BoxPos2 ) ;

float		GetCameraNear() ;
double		GetCameraNearD() ;
float		GetCameraFar() ;
double		GetCameraFarD() ;

VECTOR		GetCameraPosition() ;
VECTOR_D	GetCameraPositionD() ;
VECTOR		GetCameraTarget() ;
VECTOR_D	GetCameraTargetD() ;
VECTOR		GetCameraUpVector() ;
VECTOR_D	GetCameraUpVectorD() ;
float		GetCameraAngleHRotate() ;
double		GetCameraAngleHRotateD() ;
float		GetCameraAngleVRotate() ;
double		GetCameraAngleVRotateD() ;
float		GetCameraAngleTRotate() ;
double		GetCameraAngleTRotateD() ;

MATRIX		GetCameraViewMatrix() ;
MATRIX_D	GetCameraViewMatrixD() ;
MATRIX		GetCameraBillboardMatrix() ;
MATRIX_D	GetCameraBillboardMatrixD() ;
int			GetCameraScreenCenter(				float  *x, float  *y ) ;
int			GetCameraScreenCenterD(				double *x, double *y ) ;
float		GetCameraFov() ;
double		GetCameraFovD() ;
float		GetCameraSize() ;
double		GetCameraSizeD() ;
MATRIX		GetCameraProjectionMatrix() ;
MATRIX_D	GetCameraProjectionMatrixD() ;
float		GetCameraDotAspect() ;
double		GetCameraDotAspectD() ;
MATRIX		GetCameraViewportMatrix() ;
MATRIX_D	GetCameraViewportMatrixD() ;
MATRIX		GetCameraAPIViewportMatrix() ;
MATRIX_D	GetCameraAPIViewportMatrixD() ;


int			SetUseLighting(				int Flag ) ;
int			SetMaterialUseVertDifColor( int UseFlag ) ;
int			SetMaterialUseVertSpcColor( int UseFlag ) ;
int			SetMaterialParam(			MATERIALPARAM Material ) ;
int			SetUseSpecular(				int UseFlag ) ;
int			SetGlobalAmbientLight(		COLOR_F Color ) ;

int			ChangeLightTypeDir(			VECTOR Direction ) ;
int			ChangeLightTypeSpot(		VECTOR Position, VECTOR Direction, float OutAngle, float InAngle, float Range, float Atten0, float Atten1, float Atten2 ) ;
int			ChangeLightTypePoint(		VECTOR Position, float Range, float Atten0, float Atten1, float Atten2 ) ;
int			GetLightType() ;
int			SetLightEnable(				int EnableFlag ) ;
int			GetLightEnable() ;
int			SetLightDifColor(			COLOR_F Color ) ;
COLOR_F		GetLightDifColor() ;
int			SetLightSpcColor(			COLOR_F Color ) ;
COLOR_F		GetLightSpcColor() ;
int			SetLightAmbColor(			COLOR_F Color ) ;
COLOR_F		GetLightAmbColor() ;
int			SetLightDirection(			VECTOR Direction ) ;
VECTOR		GetLightDirection() ;
int			SetLightPosition(			VECTOR Position ) ;
VECTOR		GetLightPosition() ;
int			SetLightRangeAtten(			float Range, float Atten0, float Atten1, float Atten2 ) ;
int			GetLightRangeAtten(			float *Range, float *Atten0, float *Atten1, float *Atten2 )	;
int			SetLightAngle(				float OutAngle, float InAngle ) ;
int			GetLightAngle(				float *OutAngle, float *InAngle ) ;
int			SetLightUseShadowMap(		int SmSlotIndex, int UseFlag ) ;

int			CreateDirLightHandle(       VECTOR Direction ) ;
int			CreateSpotLightHandle(      VECTOR Position, VECTOR Direction, float OutAngle, float InAngle, float Range, float Atten0, float Atten1, float Atten2 ) ;
int			CreatePointLightHandle(     VECTOR Position, float Range, float Atten0, float Atten1, float Atten2 ) ;
int			DeleteLightHandle(          int LHandle ) ;
int			DeleteLightHandleAll() ;
int			SetLightTypeHandle(         int LHandle, int LightType ) ;
int			SetLightEnableHandle(       int LHandle, int EnableFlag ) ;
int			SetLightDifColorHandle(     int LHandle, COLOR_F Color ) ;
int			SetLightSpcColorHandle(     int LHandle, COLOR_F Color ) ;
int			SetLightAmbColorHandle(     int LHandle, COLOR_F Color ) ;
int			SetLightDirectionHandle(    int LHandle, VECTOR Direction ) ;
int			SetLightPositionHandle(     int LHandle, VECTOR Position ) ;
int			SetLightRangeAttenHandle(   int LHandle, float Range, float Atten0, float Atten1, float Atten2 ) ;
int			SetLightAngleHandle(        int LHandle, float OutAngle, float InAngle ) ;
int			SetLightUseShadowMapHandle(	int LHandle, int SmSlotIndex, int UseFlag ) ;
int			GetLightTypeHandle(         int LHandle ) ;
int			GetLightEnableHandle(       int LHandle ) ;
COLOR_F		GetLightDifColorHandle(     int LHandle ) ;
COLOR_F		GetLightSpcColorHandle(     int LHandle ) ;
COLOR_F		GetLightAmbColorHandle(     int LHandle ) ;
VECTOR		GetLightDirectionHandle(    int LHandle ) ;
VECTOR		GetLightPositionHandle(     int LHandle ) ;
int			GetLightRangeAttenHandle(   int LHandle, float *Range, float *Atten0, float *Atten1, float *Atten2 ) ;
int			GetLightAngleHandle(        int LHandle, float *OutAngle, float *InAngle ) ;

int			GetEnableLightHandleNum() ;
int			GetEnableLightHandle(		int Index ) ;


int			GetTexFormatIndex(			const(IMAGEFORMATDESC)*Format ) ;












int			CreateMaskScreen() ;
int			DeleteMaskScreen() ;
int			DrawMaskToDirectData(			int x, int y, int Width, int Height, const(void)*MaskData , int TransMode ) ;
int			DrawFillMaskToDirectData(		int x1, int y1, int x2, int y2,  int Width, int Height, const(void)*MaskData ) ;

int			SetUseMaskScreenFlag(			int ValidFlag ) ;
int			GetUseMaskScreenFlag() ;
int			FillMaskScreen(					int Flag ) ;
int			SetMaskScreenGraph(				int GraphHandle ) ;
int			SetMaskScreenGraphUseChannel(	int UseChannel /* DX_MASKGRAPH_CH_A 等 */ ) ;

int			InitMask() ;
int			MakeMask(						int Width, int Height ) ;
int			GetMaskSize(					int *WidthBuf, int *HeightBuf, int MaskHandle ) ;
int			SetDataToMask(					int Width, int Height, const(void)*MaskData, int MaskHandle ) ;
int			DeleteMask(						int MaskHandle ) ;
int			GraphImageBltToMask(			const(BASEIMAGE)*BaseImage, int ImageX, int ImageY, int MaskHandle ) ;
int			LoadMask(						const(TCHAR)*FileName ) ;
int			LoadDivMask(					const(TCHAR)*FileName, int AllNum, int XNum, int YNum, int XSize, int YSize, int *HandleBuf ) ;
int			CreateMaskFromMem(				const(void)*FileImage, int FileImageSize ) ;
int			CreateDivMaskFromMem(			const(void)*FileImage, int FileImageSize, int AllNum, int XNum, int YNum, int XSize, int YSize, int *HandleBuf ) ;
int			DrawMask(						int x, int y, int MaskHandle, int TransMode ) ;
int			DrawFormatStringMask(			int x, int y, int Flag,                 const(TCHAR)*FormatString, ... ) ;
int			DrawFormatStringMaskToHandle(	int x, int y, int Flag, int FontHandle, const(TCHAR)*FormatString, ... ) ;
int			DrawStringMask(					int x, int y, int Flag,                 const(TCHAR)*String ) ;
int			DrawStringMaskToHandle(			int x, int y, int Flag, int FontHandle, const(TCHAR)*String ) ;
int			DrawFillMask(					int x1, int y1, int x2, int y2, int MaskHandle ) ;
int			SetMaskReverseEffectFlag(		int ReverseFlag ) ;

int			GetMaskScreenData(				int x1, int y1, int x2, int y2, int MaskHandle ) ;
int			GetMaskUseFlag() ;





















int			EnumFontName(                           TCHAR   *NameBuffer, int NameBufferNum, int JapanOnlyFlag = TRUE ) ;
int			EnumFontNameEx(                         TCHAR   *NameBuffer, int NameBufferNum,                              int CharSet = -1 /* DX_CHARSET_DEFAULT 等 */ ) ;
int			EnumFontNameEx2(						TCHAR   *NameBuffer, int NameBufferNum, const(TCHAR)*EnumFontName, int CharSet = -1 /* DX_CHARSET_DEFAULT 等 */ ) ;
int			CheckFontName(							const(TCHAR)*FontName, int CharSet = -1 /* DX_CHARSET_DEFAULT 等 */ ) ;

int			InitFontToHandle() ;

int			CreateFontToHandle(                     const(TCHAR)*FontName, int Size, int Thick, int FontType = -1 , int CharSet = -1 , int EdgeSize = -1 , int Italic = FALSE , int Handle = -1 ) ;
int			LoadFontDataToHandle(					const(TCHAR)*FileName,                            int EdgeSize = 0 ) ;
int			LoadFontDataFromMemToHandle(			const(void)*FontDataImage, int FontDataImageSize, int EdgeSize = 0 ) ;
int			SetFontSpaceToHandle(                   int Point, int FontHandle ) ;
int			SetFontCharCodeFormatToHandle(			int CharCodeFormat /* DX_CHARCODEFORMAT_SHIFTJIS 等 */ , int FontHandle ) ;
int			DeleteFontToHandle(                     int FontHandle ) ;
int			SetFontLostFlag(                        int FontHandle, int *LostFlag ) ;
int			AddFontImageToHandle(					int FontHandle, const(TCHAR)*Char, int GrHandle, int DrawX, int DrawY, int AddX ) ;
int			SubFontImageToHandle(					int FontHandle, const(TCHAR)*Char ) ;

int			ChangeFont(                             const(TCHAR)*FontName, int CharSet = -1 /* DX_CHARSET_SHFTJIS 等 */ ) ;
int			ChangeFontType(                         int FontType ) ;
int			SetFontSize(                            int FontSize ) ;
int			GetFontSize() ;
int			SetFontThickness(                       int ThickPal ) ;
int			SetFontSpace(                           int Point ) ;
int			GetFontSpace() ;
int			SetFontCharCodeFormat(					int CharCodeFormat /* DX_CHARCODEFORMAT_SHIFTJIS 等 */ ) ;
int			SetDefaultFontState(                    const(TCHAR)*FontName, int Size, int Thick, int FontType = -1 , int CharSet = -1 , int EdgeSize = -1 , int Italic = FALSE ) ;
int			GetDefaultFontHandle() ;
int			GetFontMaxWidth() ;
int			GetDrawStringWidth(                     const(TCHAR)*String, int StrLen, int VerticalFlag = FALSE ) ;
int			GetDrawFormatStringWidth(               const(TCHAR)*FormatString, ... ) ;
int			GetDrawExtendStringWidth(               double ExRateX, const(TCHAR)*String, int StrLen, int VerticalFlag = FALSE ) ;
int			GetDrawExtendFormatStringWidth(         double ExRateX, const(TCHAR)*FormatString, ... ) ;

int			GetFontMaxWidthToHandle(                int FontHandle ) ;
int			GetFontSizeToHandle(                    int FontHandle ) ;
int			GetFontSpaceToHandle(                   int FontHandle ) ;
int			GetFontCharInfo(                        int FontHandle, const(TCHAR)*Char, int *DrawX, int *DrawY, int *NextCharX, int *SizeX, int *SizeY ) ;
int			GetDrawStringWidthToHandle(             const(TCHAR)*String, int StrLen, int FontHandle, int VerticalFlag = FALSE ) ;
int			GetDrawFormatStringWidthToHandle(       int FontHandle, const(TCHAR)*FormatString, ... ) ;
int			GetDrawExtendStringWidthToHandle(       double ExRateX, const(TCHAR)*String, int StrLen, int FontHandle, int VerticalFlag = FALSE ) ;
int			GetDrawExtendFormatStringWidthToHandle( double ExRateX, int FontHandle, const(TCHAR)*FormatString, ... ) ;
int			GetFontStateToHandle(                   TCHAR   *FontName, int *Size, int *Thick, int FontHandle, int *FontType = NULL , int *CharSet = NULL , int *EdgeSize = NULL , int *Italic = NULL ) ;
int			CheckFontCacheToTextureFlag(            int FontHandle ) ;
int			CheckFontChacheToTextureFlag(           int FontHandle ) ;
int			CheckFontHandleValid(                   int FontHandle ) ;

int			SetFontCacheToTextureFlag(              int Flag ) ;
int			GetFontCacheToTextureFlag() ;
int			SetFontChacheToTextureFlag(             int Flag ) ;
int			GetFontChacheToTextureFlag() ;
int			SetFontCacheTextureColorBitDepth(		int ColorBitDepth ) ;
int			GetFontCacheTextureColorBitDepth() ;
int			SetFontCacheCharNum(                    int CharNum ) ;
int			GetFontCacheCharNum() ;
int			SetFontCacheUsePremulAlphaFlag(         int Flag ) ;
int			GetFontCacheUsePremulAlphaFlag() ;



int			FontCacheStringDrawToHandle(            int x, int y, const(TCHAR)*StrData, uint Color, uint EdgeColor, BASEIMAGE *DestImage, const(RECT)*ClipRect /* NULL 可 */ , int FontHandle, int VerticalFlag = FALSE , SIZE *DrawSizeP = NULL ) ;
int			FontBaseImageBlt(                       int x, int y, const(TCHAR)*StrData, BASEIMAGE *DestImage, BASEIMAGE *DestEdgeImage,                 int VerticalFlag = FALSE ) ;
int			FontBaseImageBltToHandle(               int x, int y, const(TCHAR)*StrData, BASEIMAGE *DestImage, BASEIMAGE *DestEdgeImage, int FontHandle, int VerticalFlag = FALSE ) ;

int			MultiByteCharCheck(                     const(char)*Buf, int CharSet /* DX_CHARSET_SHFTJIS */ ) ;


int			DrawString(                             int x, int y,                                              const(TCHAR)*String, uint Color, uint EdgeColor = 0 ) ;
int			DrawVString(                            int x, int y,                                              const(TCHAR)*String, uint Color, uint EdgeColor = 0 ) ;
int			DrawFormatString(                       int x, int y,                                 uint Color, const(TCHAR)*FormatString, ... ) ;
int			DrawFormatVString(                      int x, int y,                                 uint Color, const(TCHAR)*FormatString, ... ) ;
int			DrawExtendString(                       int x, int y, double ExRateX, double ExRateY,              const(TCHAR)*String, uint Color, uint EdgeColor = 0 ) ;
int			DrawExtendVString(                      int x, int y, double ExRateX, double ExRateY,              const(TCHAR)*String, uint Color, uint EdgeColor = 0 ) ;
int			DrawExtendFormatString(                 int x, int y, double ExRateX, double ExRateY, uint Color, const(TCHAR)*FormatString, ... ) ;
int			DrawExtendFormatVString(                int x, int y, double ExRateX, double ExRateY, uint Color, const(TCHAR)*FormatString, ... ) ;
int			DrawRotaString(							int x, int y, double ExRateX, double ExRateY, double RotCenterX, double RotCenterY, double RotAngle, uint Color, uint EdgeColor = 0 , int VerticalFlag = FALSE , const(TCHAR)*String       = NULL       ) ;
int			DrawRotaFormatString(					int x, int y, double ExRateX, double ExRateY, double RotCenterX, double RotCenterY, double RotAngle, uint Color, uint EdgeColor = 0 , int VerticalFlag = FALSE , const(TCHAR)*FormatString = NULL , ... ) ;

int			DrawStringF(                            float x, float y,                                              const(TCHAR)*String, uint Color, uint EdgeColor = 0 ) ;
int			DrawVStringF(                           float x, float y,                                              const(TCHAR)*String, uint Color, uint EdgeColor = 0 ) ;
int			DrawFormatStringF(                      float x, float y,                                 uint Color, const(TCHAR)*FormatString, ... ) ;
int			DrawFormatVStringF(                     float x, float y,                                 uint Color, const(TCHAR)*FormatString, ... ) ;
int			DrawExtendStringF(                      float x, float y, double ExRateX, double ExRateY,              const(TCHAR)*String, uint Color, uint EdgeColor = 0 ) ;
int			DrawExtendVStringF(                     float x, float y, double ExRateX, double ExRateY,              const(TCHAR)*String, uint Color, uint EdgeColor = 0 ) ;
int			DrawExtendFormatStringF(                float x, float y, double ExRateX, double ExRateY, uint Color, const(TCHAR)*FormatString, ... ) ;
int			DrawExtendFormatVStringF(               float x, float y, double ExRateX, double ExRateY, uint Color, const(TCHAR)*FormatString, ... ) ;
int			DrawRotaStringF(						float x, float y, double ExRateX, double ExRateY, double RotCenterX, double RotCenterY, double RotAngle, uint Color, uint EdgeColor = 0 , int VerticalFlag = FALSE , const(TCHAR)*String       = NULL       ) ;
int			DrawRotaFormatStringF(					float x, float y, double ExRateX, double ExRateY, double RotCenterX, double RotCenterY, double RotAngle, uint Color, uint EdgeColor = 0 , int VerticalFlag = FALSE , const(TCHAR)*FormatString = NULL , ... ) ;

int			DrawNumberToI(                          int x, int y,                          int    Num, int RisesNum, uint Color, uint EdgeColor = 0 ) ;
int			DrawNumberToF(                          int x, int y,                          double Num, int Length,   uint Color, uint EdgeColor = 0 ) ;
int			DrawNumberPlusToI(                      int x, int y, const(TCHAR)*NoteString, int    Num, int RisesNum, uint Color, uint EdgeColor = 0 ) ;
int			DrawNumberPlusToF(                      int x, int y, const(TCHAR)*NoteString, double Num, int Length,   uint Color, uint EdgeColor = 0 ) ;

int			DrawStringToZBuffer(                    int x, int y, const(TCHAR)*String,                                                                   int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawVStringToZBuffer(                   int x, int y, const(TCHAR)*String,                                                                   int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawFormatStringToZBuffer(              int x, int y,                                                                                        int WriteZMode /* DX_ZWRITE_MASK 等 */ , const(TCHAR)*FormatString, ... ) ;
int			DrawFormatVStringToZBuffer(             int x, int y,                                                                                        int WriteZMode /* DX_ZWRITE_MASK 等 */ , const(TCHAR)*FormatString, ... ) ;
int			DrawExtendStringToZBuffer(              int x, int y, double ExRateX, double ExRateY, const(TCHAR)*String,                                   int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawExtendVStringToZBuffer(             int x, int y, double ExRateX, double ExRateY, const(TCHAR)*String,                                   int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawExtendFormatStringToZBuffer(        int x, int y, double ExRateX, double ExRateY,                                                        int WriteZMode /* DX_ZWRITE_MASK 等 */ , const(TCHAR)*FormatString, ... ) ;
int			DrawExtendFormatVStringToZBuffer(       int x, int y, double ExRateX, double ExRateY,                                                        int WriteZMode /* DX_ZWRITE_MASK 等 */ , const(TCHAR)*FormatString, ... ) ;
int			DrawRotaStringToZBuffer(				int x, int y, double ExRateX, double ExRateY, double RotCenterX, double RotCenterY, double RotAngle, int WriteZMode /* DX_ZWRITE_MASK 等 */ , int VerticalFlag = FALSE , const(TCHAR)*String       = NULL       ) ;
int			DrawRotaFormatStringToZBuffer(			int x, int y, double ExRateX, double ExRateY, double RotCenterX, double RotCenterY, double RotAngle, int WriteZMode /* DX_ZWRITE_MASK 等 */ , int VerticalFlag = FALSE , const(TCHAR)*FormatString = NULL , ... ) ;


int			DrawStringToHandle(                     int x, int y, const(TCHAR)*String, uint Color, int FontHandle, uint EdgeColor = 0 , int VerticalFlag = FALSE ) ;
int			DrawVStringToHandle(                    int x, int y, const(TCHAR)*String, uint Color, int FontHandle, uint EdgeColor = 0 ) ;
int			DrawFormatStringToHandle(               int x, int y, uint Color, int FontHandle, const(TCHAR)*FormatString, ... ) ;
int			DrawFormatVStringToHandle(              int x, int y, uint Color, int FontHandle, const(TCHAR)*FormatString, ... ) ;
int			DrawExtendStringToHandle(               int x, int y, double ExRateX, double ExRateY, const(TCHAR)*String, uint Color, int FontHandle, uint EdgeColor = 0 , int VerticalFlag = FALSE ) ;
int			DrawExtendVStringToHandle(              int x, int y, double ExRateX, double ExRateY, const(TCHAR)*String, uint Color, int FontHandle, uint EdgeColor = 0 ) ;
int			DrawExtendFormatStringToHandle(         int x, int y, double ExRateX, double ExRateY, uint Color, int FontHandle, const(TCHAR)*FormatString, ... ) ;
int			DrawExtendFormatVStringToHandle(        int x, int y, double ExRateX, double ExRateY, uint Color, int FontHandle, const(TCHAR)*FormatString, ... ) ;
int			DrawRotaStringToHandle(					int x, int y, double ExRateX, double ExRateY, double RotCenterX, double RotCenterY, double RotAngle, uint Color, int FontHandle, uint EdgeColor = 0 , int VerticalFlag = FALSE , const(TCHAR)*String       = NULL       ) ;
int			DrawRotaFormatStringToHandle(			int x, int y, double ExRateX, double ExRateY, double RotCenterX, double RotCenterY, double RotAngle, uint Color, int FontHandle, uint EdgeColor = 0 , int VerticalFlag = FALSE , const(TCHAR)*FormatString = NULL , ... ) ;

int			DrawStringFToHandle(                    float x, float y, const(TCHAR)*String, uint Color, int FontHandle, uint EdgeColor = 0 , int VerticalFlag = FALSE ) ;
int			DrawVStringFToHandle(                   float x, float y, const(TCHAR)*String, uint Color, int FontHandle, uint EdgeColor = 0 ) ;
int			DrawFormatStringFToHandle(              float x, float y, uint Color, int FontHandle, const(TCHAR)*FormatString, ... ) ;
int			DrawFormatVStringFToHandle(             float x, float y, uint Color, int FontHandle, const(TCHAR)*FormatString, ... ) ;
int			DrawExtendStringFToHandle(              float x, float y, double ExRateX, double ExRateY, const(TCHAR)*String, uint Color, int FontHandle, uint EdgeColor = 0 , int VerticalFlag = FALSE ) ;
int			DrawExtendVStringFToHandle(             float x, float y, double ExRateX, double ExRateY, const(TCHAR)*String, uint Color, int FontHandle, uint EdgeColor = 0 ) ;
int			DrawExtendFormatStringFToHandle(        float x, float y, double ExRateX, double ExRateY, uint Color, int FontHandle, const(TCHAR)*FormatString, ... ) ;
int			DrawExtendFormatVStringFToHandle(       float x, float y, double ExRateX, double ExRateY, uint Color, int FontHandle, const(TCHAR)*FormatString, ... ) ;
int			DrawRotaStringFToHandle(				float x, float y, double ExRateX, double ExRateY, double RotCenterX, double RotCenterY, double RotAngle, uint Color, int FontHandle, uint EdgeColor = 0 , int VerticalFlag = FALSE , const(TCHAR)*String       = NULL       ) ;
int			DrawRotaFormatStringFToHandle(			float x, float y, double ExRateX, double ExRateY, double RotCenterX, double RotCenterY, double RotAngle, uint Color, int FontHandle, uint EdgeColor = 0 , int VerticalFlag = FALSE , const(TCHAR)*FormatString = NULL , ... ) ;

int			DrawNumberToIToHandle(                  int x, int y,                          int    Num, int RisesNum, uint Color, int FontHandle, uint EdgeColor = 0 ) ;
int			DrawNumberToFToHandle(                  int x, int y,                          double Num, int Length,   uint Color, int FontHandle, uint EdgeColor = 0 ) ;
int			DrawNumberPlusToIToHandle(              int x, int y, const(TCHAR)*NoteString, int    Num, int RisesNum, uint Color, int FontHandle, uint EdgeColor = 0 ) ;
int			DrawNumberPlusToFToHandle(              int x, int y, const(TCHAR)*NoteString, double Num, int Length,   uint Color, int FontHandle, uint EdgeColor = 0 ) ;

int			DrawStringToHandleToZBuffer(            int x, int y, const(TCHAR)*String, int FontHandle,                                                                   int WriteZMode /* DX_ZWRITE_MASK 等 */ , int VerticalFlag = FALSE ) ;
int			DrawVStringToHandleToZBuffer(           int x, int y, const(TCHAR)*String, int FontHandle,                                                                   int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawFormatStringToHandleToZBuffer(      int x, int y, int FontHandle,                                                                                        int WriteZMode /* DX_ZWRITE_MASK 等 */ , const(TCHAR)*FormatString, ... ) ;
int			DrawFormatVStringToHandleToZBuffer(     int x, int y, int FontHandle,                                                                                        int WriteZMode /* DX_ZWRITE_MASK 等 */ , const(TCHAR)*FormatString, ... ) ;
int			DrawExtendStringToHandleToZBuffer(      int x, int y, double ExRateX, double ExRateY, const(TCHAR)*String, int FontHandle,                                   int WriteZMode /* DX_ZWRITE_MASK 等 */ , int VerticalFlag = FALSE ) ;
int			DrawExtendVStringToHandleToZBuffer(     int x, int y, double ExRateX, double ExRateY, const(TCHAR)*String, int FontHandle,                                   int WriteZMode /* DX_ZWRITE_MASK 等 */ ) ;
int			DrawExtendFormatStringToHandleToZBuffer(  int x, int y, double ExRateX, double ExRateY, int FontHandle,                                                      int WriteZMode /* DX_ZWRITE_MASK 等 */ , const(TCHAR)*FormatString, ... ) ;
int			DrawExtendFormatVStringToHandleToZBuffer( int x, int y, double ExRateX, double ExRateY, int FontHandle,                                                      int WriteZMode /* DX_ZWRITE_MASK 等 */ , const(TCHAR)*FormatString, ... ) ;
int			DrawRotaStringToHandleToZBuffer(		int x, int y, double ExRateX, double ExRateY, double RotCenterX, double RotCenterY, double RotAngle, int FontHandle, int WriteZMode /* DX_ZWRITE_MASK 等 */ , int VerticalFlag = FALSE , const(TCHAR)*String       = NULL       ) ;
int			DrawRotaFormatStringToHandleToZBuffer(	int x, int y, double ExRateX, double ExRateY, double RotCenterX, double RotCenterY, double RotAngle, int FontHandle, int WriteZMode /* DX_ZWRITE_MASK 等 */ , int VerticalFlag = FALSE , const(TCHAR)*FormatString = NULL , ... ) ;












int			ConvertMatrixFtoD(             MATRIX_D *Out, const(MATRIX)*In ) ;
int			ConvertMatrixDtoF(             MATRIX   *Out, const(MATRIX_D)*In ) ;
int			CreateIdentityMatrix(          MATRIX   *Out ) ;
int			CreateIdentityMatrixD(         MATRIX_D *Out ) ;
int			CreateLookAtMatrix(            MATRIX   *Out, const(VECTOR)*Eye, const(VECTOR)*At, const(VECTOR)*Up ) ;
int			CreateLookAtMatrixD(           MATRIX_D *Out, const(VECTOR_D)*Eye, const(VECTOR_D)*At, const(VECTOR_D)*Up ) ;
int			CreateLookAtMatrix2(           MATRIX   *Out, const(VECTOR)*Eye, double XZAngle, double Oira ) ;
int			CreateLookAtMatrix2D(          MATRIX_D *Out, const(VECTOR_D)*Eye, double XZAngle, double Oira ) ;
int			CreateLookAtMatrixRH(          MATRIX   *Out, const(VECTOR)*Eye, const(VECTOR)*At, const(VECTOR)*Up ) ;
int			CreateLookAtMatrixRHD(         MATRIX_D *Out, const(VECTOR_D)*Eye, const(VECTOR_D)*At, const(VECTOR_D)*Up ) ;
int			CreateMultiplyMatrix(          MATRIX   *Out, const(MATRIX)*In1, const(MATRIX)*In2 ) ;
int			CreateMultiplyMatrixD(         MATRIX_D *Out, const(MATRIX_D)*In1, const(MATRIX_D)*In2 ) ;
int			CreatePerspectiveFovMatrix(    MATRIX   *Out, float  fov,  float  zn, float  zf, float  aspect = -1.0f ) ;
int			CreatePerspectiveFovMatrixD(   MATRIX_D *Out, double fov,  double zn, double zf, double aspect = -1.0f ) ;
int			CreatePerspectiveFovMatrixRH(  MATRIX   *Out, float  fov,  float  zn, float  zf, float  aspect = -1.0f ) ;
int			CreatePerspectiveFovMatrixRHD( MATRIX_D *Out, double fov,  double zn, double zf, double aspect = -1.0f ) ;
int			CreateOrthoMatrix(             MATRIX   *Out, float  size, float  zn, float  zf, float  aspect = -1.0f ) ;
int			CreateOrthoMatrixD(            MATRIX_D *Out, double size, double zn, double zf, double aspect = -1.0f ) ;
int			CreateOrthoMatrixRH(           MATRIX   *Out, float  size, float  zn, float  zf, float  aspect = -1.0f ) ;
int			CreateOrthoMatrixRHD(          MATRIX_D *Out, double size, double zn, double zf, double aspect = -1.0f ) ;
int			CreateScalingMatrix(           MATRIX   *Out, float  sx, float  sy, float  sz ) ;
int			CreateScalingMatrixD(          MATRIX_D *Out, double sx, double sy, double sz ) ;
int			CreateRotationXMatrix(         MATRIX   *Out, float  Angle ) ;
int			CreateRotationXMatrixD(        MATRIX_D *Out, double Angle ) ;
int			CreateRotationYMatrix(         MATRIX   *Out, float  Angle ) ;
int			CreateRotationYMatrixD(        MATRIX_D *Out, double Angle ) ;
int			CreateRotationZMatrix(         MATRIX   *Out, float  Angle ) ;
int			CreateRotationZMatrixD(        MATRIX_D *Out, double Angle ) ;
int			CreateTranslationMatrix(       MATRIX   *Out, float  x, float  y, float  z ) ;
int			CreateTranslationMatrixD(      MATRIX_D *Out, double x, double y, double z ) ;
int			CreateTransposeMatrix(         MATRIX   *Out, const(MATRIX)*In ) ;
int			CreateTransposeMatrixD(        MATRIX_D *Out, const(MATRIX_D)*In ) ;
int			CreateInverseMatrix(           MATRIX   *Out, const(MATRIX)*In ) ;
int			CreateInverseMatrixD(          MATRIX_D *Out, const(MATRIX_D)*In ) ;
int			CreateViewportMatrix(          MATRIX   *Out, float  CenterX, float  CenterY, float  Width, float  Height ) ;
int			CreateViewportMatrixD(         MATRIX_D *Out, double CenterX, double CenterY, double Width, double Height ) ;
int			CreateRotationXYZMatrix(       MATRIX   *Out, float  XRot, float  YRot, float  ZRot ) ;
int			CreateRotationXYZMatrixD(      MATRIX_D *Out, double XRot, double YRot, double ZRot ) ;
int			CreateRotationXZYMatrix(       MATRIX   *Out, float  XRot, float  YRot, float  ZRot ) ;
int			CreateRotationXZYMatrixD(      MATRIX_D *Out, double XRot, double YRot, double ZRot ) ;
int			CreateRotationYXZMatrix(       MATRIX   *Out, float  XRot, float  YRot, float  ZRot ) ;
int			CreateRotationYXZMatrixD(      MATRIX_D *Out, double XRot, double YRot, double ZRot ) ;
int			CreateRotationYZXMatrix(       MATRIX   *Out, float  XRot, float  YRot, float  ZRot ) ;
int			CreateRotationYZXMatrixD(      MATRIX_D *Out, double XRot, double YRot, double ZRot ) ;
int			CreateRotationZXYMatrix(       MATRIX   *Out, float  XRot, float  YRot, float  ZRot ) ;
int			CreateRotationZXYMatrixD(      MATRIX_D *Out, double XRot, double YRot, double ZRot ) ;
int			CreateRotationZYXMatrix(       MATRIX   *Out, float  XRot, float  YRot, float  ZRot ) ;
int			CreateRotationZYXMatrixD(      MATRIX_D *Out, double XRot, double YRot, double ZRot ) ;
int			GetMatrixXYZRotation(          const(MATRIX)*In, float  *OutXRot, float  *OutYRot, float  *OutZRot ) ;
int			GetMatrixXYZRotationD(         const(MATRIX_D)*In, double *OutXRot, double *OutYRot, double *OutZRot ) ;
int			GetMatrixXZYRotation(          const(MATRIX)*In, float  *OutXRot, float  *OutYRot, float  *OutZRot ) ;
int			GetMatrixXZYRotationD(         const(MATRIX_D)*In, double *OutXRot, double *OutYRot, double *OutZRot ) ;
int			GetMatrixYXZRotation(          const(MATRIX)*In, float  *OutXRot, float  *OutYRot, float  *OutZRot ) ;
int			GetMatrixYXZRotationD(         const(MATRIX_D)*In, double *OutXRot, double *OutYRot, double *OutZRot ) ;
int			GetMatrixYZXRotation(          const(MATRIX)*In, float  *OutXRot, float  *OutYRot, float  *OutZRot ) ;
int			GetMatrixYZXRotationD(         const(MATRIX_D)*In, double *OutXRot, double *OutYRot, double *OutZRot ) ;
int			GetMatrixZXYRotation(          const(MATRIX)*In, float  *OutXRot, float  *OutYRot, float  *OutZRot ) ;
int			GetMatrixZXYRotationD(         const(MATRIX_D)*In, double *OutXRot, double *OutYRot, double *OutZRot ) ;
int			GetMatrixZYXRotation(          const(MATRIX)*In, float  *OutXRot, float  *OutYRot, float  *OutZRot ) ;
int			GetMatrixZYXRotationD(         const(MATRIX_D)*In, double *OutXRot, double *OutYRot, double *OutZRot ) ;
int			VectorConvertFtoD(             VECTOR_D *Out, const(VECTOR)*In ) ;
int			VectorConvertDtoF(             VECTOR   *Out, const(VECTOR_D)*In ) ;
int			VectorNormalize(               VECTOR   *Out, const(VECTOR)*In ) ;
int			VectorNormalizeD(              VECTOR_D *Out, const(VECTOR_D)*In ) ;
int			VectorScale(                   VECTOR   *Out, const(VECTOR)*In, float  Scale ) ;
int			VectorScaleD(                  VECTOR_D *Out, const(VECTOR_D)*In, double Scale ) ;
int			VectorMultiply(                VECTOR   *Out, const(VECTOR)*In1, const(VECTOR)*In2 ) ;
int			VectorMultiplyD(               VECTOR_D *Out, const(VECTOR_D)*In1, const(VECTOR_D)*In2 ) ;
int			VectorSub(                     VECTOR   *Out, const(VECTOR)*In1, const(VECTOR)*In2 ) ;
int			VectorSubD(                    VECTOR_D *Out, const(VECTOR_D)*In1, const(VECTOR_D)*In2 ) ;
int			VectorAdd(                     VECTOR   *Out, const(VECTOR)*In1, const(VECTOR)*In2 ) ;
int			VectorAddD(                    VECTOR_D *Out, const(VECTOR_D)*In1, const(VECTOR_D)*In2 ) ;
int			VectorOuterProduct(            VECTOR   *Out, const(VECTOR)*In1, const(VECTOR)*In2 ) ;
int			VectorOuterProductD(           VECTOR_D *Out, const(VECTOR_D)*In1, const(VECTOR_D)*In2 ) ;
float 		VectorInnerProduct(            const(VECTOR)*In1, const(VECTOR)*In2 ) ;
double		VectorInnerProductD(           const(VECTOR_D)*In1, const(VECTOR_D)*In2 ) ;
int			VectorRotationX(               VECTOR   *Out, const(VECTOR)*In, double Angle ) ;
int			VectorRotationXD(              VECTOR_D *Out, const(VECTOR_D)*In, double Angle ) ;
int			VectorRotationY(               VECTOR   *Out, const(VECTOR)*In, double Angle ) ;
int			VectorRotationYD(              VECTOR_D *Out, const(VECTOR_D)*In, double Angle ) ;
int			VectorRotationZ(               VECTOR   *Out, const(VECTOR)*In, double Angle ) ;
int			VectorRotationZD(              VECTOR_D *Out, const(VECTOR_D)*In, double Angle ) ;
int			VectorTransform(               VECTOR   *Out, const(VECTOR)*InVec, const(MATRIX)*InMatrix ) ;
int			VectorTransformD(              VECTOR_D *Out, const(VECTOR_D)*InVec, const(MATRIX_D)*InMatrix ) ;
int			VectorTransformSR(             VECTOR   *Out, const(VECTOR)*InVec, const(MATRIX)*InMatrix ) ;
int			VectorTransformSRD(            VECTOR_D *Out, const(VECTOR_D)*InVec, const(MATRIX_D)*InMatrix ) ;
int			VectorTransform4(              VECTOR   *Out, float  *V4Out, const(VECTOR)*InVec, const(float)*V4In, const(MATRIX)*InMatrix ) ;
int			VectorTransform4D(             VECTOR_D *Out, double *V4Out, const(VECTOR_D)*InVec, const(double)*V4In, const(MATRIX_D)*InMatrix ) ;

int			Segment_Segment_Analyse(      const(VECTOR)*SegmentAPos1, const(VECTOR)*SegmentAPos2, const(VECTOR)*SegmentBPos1, const(VECTOR)*SegmentBPos2, SEGMENT_SEGMENT_RESULT   *Result ) ;
int			Segment_Segment_AnalyseD(     const(VECTOR_D)*SegmentAPos1, const(VECTOR_D)*SegmentAPos2, const(VECTOR_D)*SegmentBPos1, const(VECTOR_D)*SegmentBPos2, SEGMENT_SEGMENT_RESULT_D *Result ) ;
int			Segment_Point_Analyse(        const(VECTOR)*SegmentPos1, const(VECTOR)*SegmentPos2, const(VECTOR)*PointPos, SEGMENT_POINT_RESULT   *Result ) ;
int			Segment_Point_AnalyseD(       const(VECTOR_D)*SegmentPos1, const(VECTOR_D)*SegmentPos2, const(VECTOR_D)*PointPos, SEGMENT_POINT_RESULT_D *Result ) ;
int			Segment_Triangle_Analyse(     const(VECTOR)*SegmentPos1, const(VECTOR)*SegmentPos2, const(VECTOR)*TrianglePos1, const(VECTOR)*TrianglePos2, const(VECTOR)*TrianglePos3, SEGMENT_TRIANGLE_RESULT   *Result ) ;
int			Segment_Triangle_AnalyseD(    const(VECTOR_D)*SegmentPos1, const(VECTOR_D)*SegmentPos2, const(VECTOR_D)*TrianglePos1, const(VECTOR_D)*TrianglePos2, const(VECTOR_D)*TrianglePos3, SEGMENT_TRIANGLE_RESULT_D *Result ) ;
int			Triangle_Point_Analyse(       const(VECTOR)*TrianglePos1, const(VECTOR)*TrianglePos2, const(VECTOR)*TrianglePos3, const(VECTOR)*PointPos, TRIANGLE_POINT_RESULT   *Result ) ;
int			Triangle_Point_AnalyseD(      const(VECTOR_D)*TrianglePos1, const(VECTOR_D)*TrianglePos2, const(VECTOR_D)*TrianglePos3, const(VECTOR_D)*PointPos, TRIANGLE_POINT_RESULT_D *Result ) ;
int			Plane_Point_Analyse(          const(VECTOR)*PlanePos, const(VECTOR)*PlaneNormal, const(VECTOR)*PointPos, PLANE_POINT_RESULT   *Result ) ;
int			Plane_Point_AnalyseD(         const(VECTOR_D)*PlanePos, const(VECTOR_D)*PlaneNormal, const(VECTOR_D)*PointPos, PLANE_POINT_RESULT_D *Result ) ;

void		TriangleBarycenter(           VECTOR   TrianglePos1, VECTOR   TrianglePos2, VECTOR   TrianglePos3, VECTOR   Position, float  *TrianglePos1Weight, float  *TrianglePos2Weight, float  *TrianglePos3Weight ) ;
void		TriangleBarycenterD(          VECTOR_D TrianglePos1, VECTOR_D TrianglePos2, VECTOR_D TrianglePos3, VECTOR_D Position, double *TrianglePos1Weight, double *TrianglePos2Weight, double *TrianglePos3Weight ) ;

float 		Segment_Segment_MinLength(           VECTOR   SegmentAPos1, VECTOR   SegmentAPos2, VECTOR   SegmentBPos1, VECTOR   SegmentBPos2 ) ;
double		Segment_Segment_MinLengthD(          VECTOR_D SegmentAPos1, VECTOR_D SegmentAPos2, VECTOR_D SegmentBPos1, VECTOR_D SegmentBPos2 ) ;
float 		Segment_Segment_MinLength_Square(    VECTOR   SegmentAPos1, VECTOR   SegmentAPos2, VECTOR   SegmentBPos1, VECTOR   SegmentBPos2 ) ;
double		Segment_Segment_MinLength_SquareD(   VECTOR_D SegmentAPos1, VECTOR_D SegmentAPos2, VECTOR_D SegmentBPos1, VECTOR_D SegmentBPos2 ) ;
float 		Segment_Triangle_MinLength(          VECTOR   SegmentPos1, VECTOR   SegmentPos2, VECTOR   TrianglePos1, VECTOR   TrianglePos2, VECTOR   TrianglePos3 ) ;
double		Segment_Triangle_MinLengthD(         VECTOR_D SegmentPos1, VECTOR_D SegmentPos2, VECTOR_D TrianglePos1, VECTOR_D TrianglePos2, VECTOR_D TrianglePos3 ) ;
float 		Segment_Triangle_MinLength_Square(   VECTOR   SegmentPos1, VECTOR   SegmentPos2, VECTOR   TrianglePos1, VECTOR   TrianglePos2, VECTOR   TrianglePos3 ) ;
double		Segment_Triangle_MinLength_SquareD(  VECTOR_D SegmentPos1, VECTOR_D SegmentPos2, VECTOR_D TrianglePos1, VECTOR_D TrianglePos2, VECTOR_D TrianglePos3 ) ;
float 		Segment_Point_MinLength(             VECTOR   SegmentPos1, VECTOR   SegmentPos2, VECTOR   PointPos ) ;
double		Segment_Point_MinLengthD(            VECTOR_D SegmentPos1, VECTOR_D SegmentPos2, VECTOR_D PointPos ) ;
float 		Segment_Point_MinLength_Square(      VECTOR   SegmentPos1, VECTOR   SegmentPos2, VECTOR   PointPos ) ;
double		Segment_Point_MinLength_SquareD(     VECTOR_D SegmentPos1, VECTOR_D SegmentPos2, VECTOR_D PointPos ) ;
float 		Triangle_Point_MinLength(            VECTOR   TrianglePos1, VECTOR   TrianglePos2, VECTOR   TrianglePos3, VECTOR   PointPos ) ;
double		Triangle_Point_MinLengthD(           VECTOR_D TrianglePos1, VECTOR_D TrianglePos2, VECTOR_D TrianglePos3, VECTOR_D PointPos ) ;
float 		Triangle_Point_MinLength_Square(     VECTOR   TrianglePos1, VECTOR   TrianglePos2, VECTOR   TrianglePos3, VECTOR   PointPos ) ;
double		Triangle_Point_MinLength_SquareD(    VECTOR_D TrianglePos1, VECTOR_D TrianglePos2, VECTOR_D TrianglePos3, VECTOR_D PointPos ) ;
float 		Triangle_Triangle_MinLength(         VECTOR   Triangle1Pos1, VECTOR   Triangle1Pos2, VECTOR   Triangle1Pos3, VECTOR   Triangle2Pos1, VECTOR   Triangle2Pos2, VECTOR   Triangle2Pos3 ) ;
double		Triangle_Triangle_MinLengthD(        VECTOR_D Triangle1Pos1, VECTOR_D Triangle1Pos2, VECTOR_D Triangle1Pos3, VECTOR_D Triangle2Pos1, VECTOR_D Triangle2Pos2, VECTOR_D Triangle2Pos3 ) ;
float 		Triangle_Triangle_MinLength_Square(  VECTOR   Triangle1Pos1, VECTOR   Triangle1Pos2, VECTOR   Triangle1Pos3, VECTOR   Triangle2Pos1, VECTOR   Triangle2Pos2, VECTOR   Triangle2Pos3 ) ;
double		Triangle_Triangle_MinLength_SquareD( VECTOR_D Triangle1Pos1, VECTOR_D Triangle1Pos2, VECTOR_D Triangle1Pos3, VECTOR_D Triangle2Pos1, VECTOR_D Triangle2Pos2, VECTOR_D Triangle2Pos3 ) ;
VECTOR  	Plane_Point_MinLength_Position(      VECTOR   PlanePos, VECTOR   PlaneNormal, VECTOR   PointPos ) ;
VECTOR_D	Plane_Point_MinLength_PositionD(     VECTOR_D PlanePos, VECTOR_D PlaneNormal, VECTOR_D PointPos ) ;
float 		Plane_Point_MinLength(               VECTOR   PlanePos, VECTOR   PlaneNormal, VECTOR   PointPos ) ;
double		Plane_Point_MinLengthD(              VECTOR_D PlanePos, VECTOR_D PlaneNormal, VECTOR_D PointPos ) ;

HITRESULT_LINE   HitCheck_Line_Triangle(         VECTOR   LinePos1, VECTOR   LinePos2, VECTOR   TrianglePos1, VECTOR   TrianglePos2, VECTOR   TrianglePos3 ) ;
HITRESULT_LINE_D HitCheck_Line_TriangleD(        VECTOR_D LinePos1, VECTOR_D LinePos2, VECTOR_D TrianglePos1, VECTOR_D TrianglePos2, VECTOR_D TrianglePos3 ) ;
int			HitCheck_Triangle_Triangle(          VECTOR   Triangle1Pos1, VECTOR   Triangle1Pos2, VECTOR   Triangle1Pos3, VECTOR   Triangle2Pos1, VECTOR   Triangle2Pos2, VECTOR   Triangle2Pos3 ) ;
int			HitCheck_Triangle_TriangleD(         VECTOR_D Triangle1Pos1, VECTOR_D Triangle1Pos2, VECTOR_D Triangle1Pos3, VECTOR_D Triangle2Pos1, VECTOR_D Triangle2Pos2, VECTOR_D Triangle2Pos3 ) ;
HITRESULT_LINE   HitCheck_Line_Cube(             VECTOR   LinePos1, VECTOR   LinePos2, VECTOR   CubePos1, VECTOR   CubePos2 );
HITRESULT_LINE_D HitCheck_Line_CubeD(            VECTOR_D LinePos1, VECTOR_D LinePos2, VECTOR_D CubePos1, VECTOR_D CubePos2 );
int			HitCheck_Line_Sphere(                VECTOR   LinePos1, VECTOR   LinePos2, VECTOR   SphereCenterPos, float  SphereR ) ;
int			HitCheck_Line_SphereD(               VECTOR_D LinePos1, VECTOR_D LinePos2, VECTOR_D SphereCenterPos, double SphereR ) ;
int			HitCheck_Sphere_Sphere(              VECTOR   Sphere1CenterPos, float  Sphere1R, VECTOR   Sphere2CenterPos, float  Sphere2R ) ;
int			HitCheck_Sphere_SphereD(             VECTOR_D Sphere1CenterPos, double Sphere1R, VECTOR_D Sphere2CenterPos, double Sphere2R ) ;
int			HitCheck_Sphere_Capsule(             VECTOR   SphereCenterPos, float  SphereR, VECTOR   CapPos1, VECTOR   CapPos2, float  CapR ) ;
int			HitCheck_Sphere_CapsuleD(            VECTOR_D SphereCenterPos, double SphereR, VECTOR_D CapPos1, VECTOR_D CapPos2, double CapR ) ;
int			HitCheck_Sphere_Triangle(            VECTOR   SphereCenterPos, float  SphereR, VECTOR   TrianglePos1, VECTOR   TrianglePos2, VECTOR   TrianglePos3 ) ;
int			HitCheck_Sphere_TriangleD(           VECTOR_D SphereCenterPos, double SphereR, VECTOR_D TrianglePos1, VECTOR_D TrianglePos2, VECTOR_D TrianglePos3 ) ;
int			HitCheck_Capsule_Capsule(            VECTOR   Cap1Pos1, VECTOR   Cap1Pos2, float  Cap1R, VECTOR   Cap2Pos1, VECTOR   Cap2Pos2, float  Cap2R ) ;
int			HitCheck_Capsule_CapsuleD(           VECTOR_D Cap1Pos1, VECTOR_D Cap1Pos2, double Cap1R, VECTOR_D Cap2Pos1, VECTOR_D Cap2Pos2, double Cap2R ) ;
int			HitCheck_Capsule_Triangle(           VECTOR   CapPos1, VECTOR   CapPos2, float  CapR, VECTOR   TrianglePos1, VECTOR   TrianglePos2, VECTOR   TrianglePos3 ) ;
int			HitCheck_Capsule_TriangleD(          VECTOR_D CapPos1, VECTOR_D CapPos2, double CapR, VECTOR_D TrianglePos1, VECTOR_D TrianglePos2, VECTOR_D TrianglePos3 ) ;


int			RectClipping( RECT *Rect, const(RECT)*ClippuRect ) ;
int			RectAdjust(   RECT *Rect ) ;
int			GetRectSize(  const(RECT)*Rect, int *Width, int *Height ) ;


MATRIX		MGetIdent() ;
MATRIX_D	MGetIdentD() ;
MATRIX		MMult(          MATRIX   In1, MATRIX   In2 ) ;
MATRIX_D	MMultD(         MATRIX_D In1, MATRIX_D In2 ) ;
MATRIX		MScale(         MATRIX   InM, float  Scale ) ;
MATRIX_D	MScaleD(        MATRIX_D InM, double Scale ) ;
MATRIX		MAdd(           MATRIX   In1, MATRIX   In2 ) ;
MATRIX_D	MAddD(          MATRIX_D In1, MATRIX_D In2 ) ;
MATRIX		MGetScale(      VECTOR   Scale ) ;
MATRIX_D	MGetScaleD(     VECTOR_D Scale ) ;
MATRIX		MGetRotX(       float  XAxisRotate ) ;
MATRIX_D	MGetRotXD(      double XAxisRotate ) ;
MATRIX		MGetRotY(       float  YAxisRotate ) ;
MATRIX_D	MGetRotYD(      double YAxisRotate ) ;
MATRIX		MGetRotZ(       float  ZAxisRotate ) ;
MATRIX_D	MGetRotZD(      double ZAxisRotate ) ;
MATRIX		MGetRotAxis(    VECTOR   RotateAxis, float  Rotate ) ;
MATRIX_D	MGetRotAxisD(   VECTOR_D RotateAxis, double Rotate ) ;
MATRIX		MGetRotVec2(    VECTOR   In1, VECTOR   In2 ) ;
MATRIX_D	MGetRotVec2D(   VECTOR_D In1, VECTOR_D In2 ) ;
MATRIX		MGetTranslate(  VECTOR   Trans ) ;
MATRIX_D	MGetTranslateD( VECTOR_D Trans ) ;
MATRIX		MGetAxis1(      VECTOR   XAxis, VECTOR   YAxis, VECTOR   ZAxis, VECTOR   Pos ) ;
MATRIX_D	MGetAxis1D(     VECTOR_D XAxis, VECTOR_D YAxis, VECTOR_D ZAxis, VECTOR_D Pos ) ;
MATRIX		MGetAxis2(      VECTOR   XAxis, VECTOR   YAxis, VECTOR   ZAxis, VECTOR   Pos ) ;
MATRIX_D	MGetAxis2D(     VECTOR_D XAxis, VECTOR_D YAxis, VECTOR_D ZAxis, VECTOR_D Pos ) ;
MATRIX		MTranspose(     MATRIX   InM ) ;
MATRIX_D	MTransposeD(    MATRIX_D InM ) ;
MATRIX		MInverse(       MATRIX   InM ) ;
MATRIX_D	MInverseD(      MATRIX_D InM ) ;
VECTOR		MGetSize(       MATRIX   InM ) ;
VECTOR_D	MGetSizeD(      MATRIX_D InM ) ;


VECTOR_D VConvFtoD( ref  const VECTOR In )
{
	VECTOR_D Result ;

	Result.x = In.x ;
	Result.y = In.y ;
	Result.z = In.z ;

	return Result ;
}

VECTOR VConvDtoF( ref  const VECTOR_D In )
{
	VECTOR Result ;

	Result.x = cast(float)In.x ;
	Result.y = cast(float)In.y ;
	Result.z = cast(float)In.z ;

	return Result ;
}


VECTOR VGet( float x, float y, float z )
{
	VECTOR Result;
	Result.x = x ;
	Result.y = y ;
	Result.z = z ;
	return Result ;
}

VECTOR_D VGetD( double x, double y, double z )
{
	VECTOR_D Result;
	Result.x = x ;
	Result.y = y ;
	Result.z = z ;
	return Result ;
}


FLOAT4 F4Get( float x, float y, float z, float w )
{
	FLOAT4 Result;
	Result.x = x ;
	Result.y = y ;
	Result.z = z ;
	Result.w = w ;
	return Result ;
}

DOUBLE4 D4Get( double x, double y, double z, double w )
{
	DOUBLE4 Result;
	Result.x = x ;
	Result.y = y ;
	Result.z = z ;
	Result.w = w ;
	return Result ;
}


VECTOR		VAdd( ref  const VECTOR In1, ref  const VECTOR In2 )
{
	VECTOR Result ;
	Result.x = In1.x + In2.x ;
	Result.y = In1.y + In2.y ;
	Result.z = In1.z + In2.z ;
	return Result ;
}

VECTOR_D	VAddD( ref  const VECTOR_D In1, ref  const VECTOR_D In2 )
{
	VECTOR_D Result ;
	Result.x = In1.x + In2.x ;
	Result.y = In1.y + In2.y ;
	Result.z = In1.z + In2.z ;
	return Result ;
}


VECTOR		VSub( ref  const VECTOR In1, ref  const VECTOR In2 )
{
	VECTOR Result ;
	Result.x = In1.x - In2.x ;
	Result.y = In1.y - In2.y ;
	Result.z = In1.z - In2.z ;
	return Result ;
}

VECTOR_D	VSubD( ref  const VECTOR_D In1, ref  const VECTOR_D In2 )
{
	VECTOR_D Result ;
	Result.x = In1.x - In2.x ;
	Result.y = In1.y - In2.y ;
	Result.z = In1.z - In2.z ;
	return Result ;
}


FLOAT4		F4Add( ref  const FLOAT4 In1, ref  const FLOAT4 In2 )
{
	FLOAT4 Result ;
	Result.x = In1.x + In2.x ;
	Result.y = In1.y + In2.y ;
	Result.z = In1.z + In2.z ;
	Result.w = In1.w + In2.w ;
	return Result ;
}

DOUBLE4	D4Add( ref  const DOUBLE4 In1, ref  const DOUBLE4 In2 )
{
	DOUBLE4 Result ;
	Result.x = In1.x + In2.x ;
	Result.y = In1.y + In2.y ;
	Result.z = In1.z + In2.z ;
	Result.w = In1.w + In2.w ;
	return Result ;
}


FLOAT4		F4Sub( ref  const FLOAT4 In1, ref  const FLOAT4 In2 )
{
	FLOAT4 Result ;
	Result.x = In1.x - In2.x ;
	Result.y = In1.y - In2.y ;
	Result.z = In1.z - In2.z ;
	Result.w = In1.w - In2.w ;
	return Result ;
}

DOUBLE4	D4Sub( ref  const DOUBLE4 In1, ref  const DOUBLE4 In2 )
{
	DOUBLE4 Result ;
	Result.x = In1.x - In2.x ;
	Result.y = In1.y - In2.y ;
	Result.z = In1.z - In2.z ;
	Result.w = In1.w - In2.w ;
	return Result ;
}


float		VDot( ref  const VECTOR In1, ref  const VECTOR In2 )
{
	return In1.x * In2.x + In1.y * In2.y + In1.z * In2.z ;
}

double		VDotD( ref  const VECTOR_D In1, ref  const VECTOR_D In2 )
{
	return In1.x * In2.x + In1.y * In2.y + In1.z * In2.z ;
}


VECTOR		VCross( ref  const VECTOR In1, ref  const VECTOR In2 )
{
	VECTOR Result ;
	Result.x = In1.y * In2.z - In1.z * In2.y ;
	Result.y = In1.z * In2.x - In1.x * In2.z ;
	Result.z = In1.x * In2.y - In1.y * In2.x ;
	return Result ;
}

VECTOR_D	VCrossD( ref  const VECTOR_D In1, ref  const VECTOR_D In2 )
{
	VECTOR_D Result ;
	Result.x = In1.y * In2.z - In1.z * In2.y ;
	Result.y = In1.z * In2.x - In1.x * In2.z ;
	Result.z = In1.x * In2.y - In1.y * In2.x ;
	return Result ;
}


VECTOR		VScale( ref  const VECTOR In, float Scale )
{
	VECTOR Result ;
	Result.x = In.x * Scale ;
	Result.y = In.y * Scale ;
	Result.z = In.z * Scale ;
	return Result ;
}

VECTOR_D	VScaleD( ref  const VECTOR_D In, double Scale )
{
	VECTOR_D Result ;
	Result.x = In.x * Scale ;
	Result.y = In.y * Scale ;
	Result.z = In.z * Scale ;
	return Result ;
}


FLOAT4		F4Scale( ref  const FLOAT4 In, float Scale )
{
	FLOAT4 Result ;
	Result.x = In.x * Scale ;
	Result.y = In.y * Scale ;
	Result.z = In.z * Scale ;
	Result.w = In.w * Scale ;
	return Result ;
}

DOUBLE4	D4Scale( ref  const DOUBLE4 In, double Scale )
{
	DOUBLE4 Result ;
	Result.x = In.x * Scale ;
	Result.y = In.y * Scale ;
	Result.z = In.z * Scale ;
	Result.w = In.w * Scale ;
	return Result ;
}


VECTOR		VNorm(  VECTOR   In ) ;
VECTOR_D		VNormD( VECTOR_D In ) ;


float		VSize(  VECTOR   In ) ;
double		VSizeD( VECTOR_D In ) ;


float		VSquareSize( ref   const VECTOR   In )
{
	return In.x * In.x + In.y * In.y + In.z * In.z ;
}

double		VSquareSizeD( ref  const VECTOR_D In )
{
	return In.x * In.x + In.y * In.y + In.z * In.z ;
}


VECTOR		VTransform( ref  const VECTOR InV, ref  const MATRIX InM )
{
	VECTOR Result ;
	Result.x = InV.x * InM.m[0][0] + InV.y * InM.m[1][0] + InV.z * InM.m[2][0] + InM.m[3][0] ;
	Result.y = InV.x * InM.m[0][1] + InV.y * InM.m[1][1] + InV.z * InM.m[2][1] + InM.m[3][1] ;
	Result.z = InV.x * InM.m[0][2] + InV.y * InM.m[1][2] + InV.z * InM.m[2][2] + InM.m[3][2] ;
	return Result ;
}

VECTOR_D	VTransformD( ref  const VECTOR_D InV, ref  const MATRIX_D InM )
{
	VECTOR_D Result ;
	Result.x = InV.x * InM.m[0][0] + InV.y * InM.m[1][0] + InV.z * InM.m[2][0] + InM.m[3][0] ;
	Result.y = InV.x * InM.m[0][1] + InV.y * InM.m[1][1] + InV.z * InM.m[2][1] + InM.m[3][1] ;
	Result.z = InV.x * InM.m[0][2] + InV.y * InM.m[1][2] + InV.z * InM.m[2][2] + InM.m[3][2] ;
	return Result ;
}


VECTOR		VTransformSR( ref  const VECTOR InV, ref  const MATRIX InM )
{
	VECTOR Result ;
	Result.x = InV.x * InM.m[0][0] + InV.y * InM.m[1][0] + InV.z * InM.m[2][0] ;
	Result.y = InV.x * InM.m[0][1] + InV.y * InM.m[1][1] + InV.z * InM.m[2][1] ;
	Result.z = InV.x * InM.m[0][2] + InV.y * InM.m[1][2] + InV.z * InM.m[2][2] ;
	return Result ;
}

VECTOR_D	VTransformSRD( ref  const VECTOR_D InV, ref  const MATRIX_D InM )
{
	VECTOR_D Result ;
	Result.x = InV.x * InM.m[0][0] + InV.y * InM.m[1][0] + InV.z * InM.m[2][0] ;
	Result.y = InV.x * InM.m[0][1] + InV.y * InM.m[1][1] + InV.z * InM.m[2][1] ;
	Result.z = InV.x * InM.m[0][2] + InV.y * InM.m[1][2] + InV.z * InM.m[2][2] ;
	return Result ;
}


float		VCos(  VECTOR   In1, VECTOR   In2 ) ;
double		VCosD( VECTOR_D In1, VECTOR_D In2 ) ;


float		VRad(  VECTOR   In1, VECTOR   In2 ) ;
double		VRadD( VECTOR_D In1, VECTOR_D In2 ) ;











int			CreateGraphImageOrDIBGraph(    const(TCHAR)*FileName, const(void)*DataImage, int DataImageSize, int DataImageType /* LOADIMAGE_TYPE_FILE 等 */ , int BmpFlag, int ReverseFlag, BASEIMAGE *BaseImage, BITMAPINFO **BmpInfo, void **GraphData ) ;
int			CreateGraphImageType2(         STREAMDATA *Src, BASEIMAGE *Dest ) ;
int			CreateBmpInfo(                 BITMAPINFO *BmpInfo, int Width, int Height, int Pitch, const(void)*SrcGrData, void **DestGrData ) ;
int			GetImageSize_File(             const(TCHAR)*FileName, int *SizeX, int *SizeY ) ;
int			GetImageSize_Mem(              const(void)*FileImage, int FileImageSize, int *SizeX, int *SizeY ) ;
uint GetGraphImageFullColorCode(    const(BASEIMAGE)*GraphImage, int x, int y ) ;
int			CreateGraphImage_plus_Alpha(   const(TCHAR)*FileName, const(void)*RgbBaseImage, int RgbImageSize, int RgbImageType, const(void)*AlphaImage, int AlphaImageSize, int AlphaImageType, BASEIMAGE *RgbGraphImage, BASEIMAGE *AlphaGraphImage, int ReverseFlag ) ;
int			ReverseGraphImage(             BASEIMAGE *GraphImage ) ;




int			AddUserGraphLoadFunction4( int  function( STREAMDATA *Src, BASEIMAGE *BaseImage )UserLoadFunc ) ;



int			SubUserGraphLoadFunction4( int  function( STREAMDATA *Src, BASEIMAGE *BaseImage )UserLoadFunc ) ;

int			SetUseFastLoadFlag(            int Flag ) ;
int			SetGraphDataShavedMode(        int ShavedMode /* DX_SHAVEDMODE_NONE 等 */ ) ;
int			GetGraphDataShavedMode() ;
int			SetUsePremulAlphaConvertLoad(  int UseFlag ) ;


int			CreateBaseImage(               const(TCHAR)*FileName, const(void)*FileImage, int FileImageSize, int DataType /*=LOADIMAGE_TYPE_FILE*/ , BASEIMAGE *BaseImage,  int ReverseFlag ) ;
int			CreateGraphImage(              const(TCHAR)*FileName, const(void)*DataImage, int DataImageSize, int DataImageType,                      BASEIMAGE *GraphImage, int ReverseFlag ) ;
int			CreateBaseImageToFile(         const(TCHAR)*FileName,                                                                                   BASEIMAGE *BaseImage,  int ReverseFlag = FALSE ) ;
int			CreateBaseImageToMem(                                 const(void)*FileImage, int FileImageSize,                                         BASEIMAGE *BaseImage,  int ReverseFlag = FALSE ) ;
int			CreateARGBF32ColorBaseImage(   int SizeX, int SizeY,                             BASEIMAGE *BaseImage ) ;
int			CreateARGBF16ColorBaseImage(   int SizeX, int SizeY,                             BASEIMAGE *BaseImage ) ;
int			CreateARGB8ColorBaseImage(     int SizeX, int SizeY,                             BASEIMAGE *BaseImage ) ;
int			CreateXRGB8ColorBaseImage(     int SizeX, int SizeY,                             BASEIMAGE *BaseImage ) ;
int			CreateRGB8ColorBaseImage(      int SizeX, int SizeY,                             BASEIMAGE *BaseImage ) ;
int			CreateARGB4ColorBaseImage(     int SizeX, int SizeY,                             BASEIMAGE *BaseImage ) ;
int			CreatePAL8ColorBaseImage(      int SizeX, int SizeY,                             BASEIMAGE *BaseImage, int UseAlpha = FALSE ) ;
int			CreateColorDataBaseImage(      int SizeX, int SizeY, const(COLORDATA)*ColorData, BASEIMAGE *BaseImage ) ;
int			GetBaseImageGraphDataSize(     const(BASEIMAGE)*BaseImage ) ;
int			DerivationBaseImage(           const(BASEIMAGE)*BaseImage, int x1, int y1, int x2, int y2, BASEIMAGE *NewBaseImage ) ;

int			ReleaseBaseImage(              BASEIMAGE *BaseImage ) ;
int			ReleaseGraphImage(             BASEIMAGE *GraphImage ) ;

int			ConvertNormalFormatBaseImage(  BASEIMAGE *BaseImage, int ReleaseOrigGraphData = TRUE ) ;
int			ConvertPremulAlphaBaseImage(   BASEIMAGE *BaseImage ) ;
int			ConvertInterpAlphaBaseImage(   BASEIMAGE *BaseImage ) ;

int			GetDrawScreenBaseImage(        int x1, int y1, int x2, int y2, BASEIMAGE *BaseImage ) ;
int			GetDrawScreenBaseImageDestPos( int x1, int y1, int x2, int y2, BASEIMAGE *BaseImage, int DestX, int DestY ) ;
int			FillBaseImage(                       BASEIMAGE *BaseImage, int r, int g, int b, int a ) ;
int			FillRectBaseImage(                   BASEIMAGE *BaseImage, int x, int y, int w, int h, int r, int g, int b, int a ) ;
int			ClearRectBaseImage(                  BASEIMAGE *BaseImage, int x, int y, int w, int h ) ;
int			GetPaletteBaseImage(           const(BASEIMAGE)*BaseImage, int PaletteNo, int *r, int *g, int *b, int *a ) ;
int			SetPaletteBaseImage(                 BASEIMAGE *BaseImage, int PaletteNo, int  r, int  g, int  b, int  a ) ;
int			SetPixelPalCodeBaseImage(            BASEIMAGE *BaseImage, int x, int y, int palNo ) ;
int			GetPixelPalCodeBaseImage(      const(BASEIMAGE)*BaseImage, int x, int y ) ;
int			SetPixelBaseImage(                   BASEIMAGE *BaseImage, int x, int y, int    r, int    g, int    b, int    a ) ;
int			SetPixelBaseImageF(                  BASEIMAGE *BaseImage, int x, int y, float  r, float  g, float  b, float  a ) ;
int			GetPixelBaseImage(             const(BASEIMAGE)*BaseImage, int x, int y, int   *r, int   *g, int   *b, int   *a ) ;
int			GetPixelBaseImageF(            const(BASEIMAGE)*BaseImage, int x, int y, float *r, float *g, float *b, float *a ) ;
int			DrawLineBaseImage(                   BASEIMAGE *BaseImage, int x1, int y1, int x2, int y2, int r, int g, int b, int a ) ;
int			DrawCircleBaseImage(                 BASEIMAGE *BaseImage, int x, int y, int radius, int r, int g, int b, int a, int FillFlag = TRUE ) ;
int			BltBaseImage(                        int SrcX, int SrcY, int SrcSizeX, int SrcSizeY, int DestX, int DestY, BASEIMAGE *SrcBaseImage, BASEIMAGE *DestBaseImage ) ;
int			BltBaseImage(                                                                        int DestX, int DestY, BASEIMAGE *SrcBaseImage, BASEIMAGE *DestBaseImage ) ;
int			BltBaseImageWithTransColor(          int SrcX, int SrcY, int SrcSizeX, int SrcSizeY, int DestX, int DestY, BASEIMAGE *SrcBaseImage, BASEIMAGE *DestBaseImage, int Tr, int Tg, int Tb, int Ta ) ;
int			BltBaseImageWithAlphaBlend(          int SrcX, int SrcY, int SrcSizeX, int SrcSizeY, int DestX, int DestY, BASEIMAGE *SrcBaseImage, BASEIMAGE *DestBaseImage, int Opacity = 255 ) ;
int			ReverseBaseImageH(                   BASEIMAGE *BaseImage ) ;
int			ReverseBaseImageV(                   BASEIMAGE *BaseImage ) ;
int			ReverseBaseImage(                    BASEIMAGE *BaseImage ) ;
int			CheckPixelAlphaBaseImage(      const(BASEIMAGE)*BaseImage ) ;
int			GetBaseImageUseMaxPaletteNo(   const(BASEIMAGE)*BaseImage ) ;


int			SaveBaseImageToBmp(            const(TCHAR)*FilePath, const(BASEIMAGE)*BaseImage ) ;
int			SaveBaseImageToPng(            const(TCHAR)*FilePath,       BASEIMAGE *BaseImage, int CompressionLevel ) ;
int			SaveBaseImageToJpeg(           const(TCHAR)*FilePath,       BASEIMAGE *BaseImage, int Quality, int Sample2x1 ) ;



int			DrawBaseImage(					int x, int y, BASEIMAGE *BaseImage ) ;


int			GraphColorMatchBltVer2(       void *DestGraphData, int DestPitch,  const(COLORDATA)*DestColorData,
											const(void)*SrcGraphData,  int SrcPitch,   const(COLORDATA)*SrcColorData,
											const(void)*AlphaMask,     int AlphaPitch, const(COLORDATA)*AlphaColorData,
											POINT DestPoint, const(RECT)*SrcRect, int ReverseFlag,
											int TransColorAlphaTestFlag, uint TransColor,
											int ImageShavedMode, int AlphaOnlyFlag = FALSE ,
											int RedIsAlphaFlag = FALSE , int TransColorNoMoveFlag = FALSE ,
											int Pal8ColorMatch = FALSE ) ;



COLOR_F			GetColorF(              float Red, float Green, float Blue, float Alpha ) ;
COLOR_U8		GetColorU8(             int Red, int Green, int Blue, int Alpha ) ;
uint	GetColor(               int Red, int Green, int Blue ) ;
int				GetColor2(              uint Color, int *Red, int *Green, int *Blue ) ;
uint	GetColor3(              const(COLORDATA)*ColorData, int Red, int Green, int Blue, int Alpha = 255 ) ;
uint	GetColor4(              const(COLORDATA)*DestColorData, const(COLORDATA)* SrcColorData, uint SrcColor ) ;
int				GetColor5(              const(COLORDATA)*ColorData, uint Color, int *Red, int *Green, int *Blue, int *Alpha = NULL ) ;
int				CreatePaletteColorData( COLORDATA *ColorDataBuf ) ;
int				CreateARGBF32ColorData( COLORDATA *ColorDataBuf ) ;
int				CreateARGBF16ColorData( COLORDATA *ColorDataBuf ) ;
int				CreateXRGB8ColorData(   COLORDATA *ColorDataBuf ) ;
int				CreateARGB8ColorData(   COLORDATA *ColorDataBuf ) ;
int				CreateARGB4ColorData(   COLORDATA *ColorDataBuf ) ;
int				CreateFullColorData(    COLORDATA *ColorDataBuf ) ;
int				CreateGrayColorData(    COLORDATA *ColorDataBuf ) ;
int				CreatePal8ColorData(    COLORDATA *ColorDataBuf, int UseAlpha = FALSE ) ;
int				CreateColorData(        COLORDATA *ColorDataBuf, int ColorBitDepth,
										        DWORD RedMask, DWORD GreenMask, DWORD BlueMask, DWORD AlphaMask,
												int ChannelNum = 0, int ChannelBitDepth = 0, int FloatTypeFlag = FALSE ) ;
void			SetColorDataNoneMask(   COLORDATA *ColorData ) ;
int				CmpColorData(           const(COLORDATA)*ColorData1, const(COLORDATA)*ColorData2 ) ;














int			InitSoftImage() ;
int			LoadSoftImage(                   const(TCHAR)*FileName ) ;
int			LoadSoftImageToMem(              const(void)*FileImage, int FileImageSize ) ;
int			MakeSoftImage(                   int SizeX, int SizeY ) ;
int			MakeARGBF32ColorSoftImage(       int SizeX, int SizeY ) ;
int			MakeARGBF16ColorSoftImage(       int SizeX, int SizeY ) ;
int			MakeARGB8ColorSoftImage(         int SizeX, int SizeY ) ;
int			MakeXRGB8ColorSoftImage(         int SizeX, int SizeY ) ;
int			MakeARGB4ColorSoftImage(         int SizeX, int SizeY ) ;
int			MakeRGB8ColorSoftImage(          int SizeX, int SizeY ) ;
int			MakePAL8ColorSoftImage(          int SizeX, int SizeY, int UseAlpha = FALSE ) ;

int			DeleteSoftImage(                 int SIHandle ) ;

int			GetSoftImageSize(                int SIHandle, int *Width, int *Height ) ;
int			CheckPaletteSoftImage(           int SIHandle ) ;
int			CheckAlphaSoftImage(             int SIHandle ) ;
int			CheckPixelAlphaSoftImage(        int SIHandle ) ;

int			GetDrawScreenSoftImage(          int x1, int y1, int x2, int y2, int SIHandle ) ;
int			GetDrawScreenSoftImageDestPos(   int x1, int y1, int x2, int y2, int SIHandle, int DestX, int DestY ) ;
int			FillSoftImage(                   int SIHandle, int r, int g, int b, int a ) ;
int			ClearRectSoftImage(              int SIHandle, int x, int y, int w, int h ) ;
int			GetPaletteSoftImage(             int SIHandle, int PaletteNo, int *r, int *g, int *b, int *a ) ;
int			SetPaletteSoftImage(             int SIHandle, int PaletteNo, int  r, int  g, int  b, int  a ) ;
int			DrawPixelPalCodeSoftImage(       int SIHandle, int x, int y, int palNo ) ;
int			GetPixelPalCodeSoftImage(        int SIHandle, int x, int y ) ;
void		*GetImageAddressSoftImage(       int SIHandle ) ;
int			GetPitchSoftImage(               int SIHandle ) ;
int			DrawPixelSoftImage(              int SIHandle, int x, int y, int    r, int    g, int    b, int    a ) ;
int			DrawPixelSoftImageF(             int SIHandle, int x, int y, float  r, float  g, float  b, float  a ) ;
void		DrawPixelSoftImage_Unsafe_XRGB8( int SIHandle, int x, int y, int    r, int    g, int    b ) ;
void		DrawPixelSoftImage_Unsafe_ARGB8( int SIHandle, int x, int y, int    r, int    g, int    b, int    a ) ;
int			GetPixelSoftImage(               int SIHandle, int x, int y, int   *r, int   *g, int   *b, int   *a ) ;
int			GetPixelSoftImageF(              int SIHandle, int x, int y, float *r, float *g, float *b, float *a ) ;
void		GetPixelSoftImage_Unsafe_XRGB8(  int SIHandle, int x, int y, int   *r, int   *g, int   *b ) ;
void		GetPixelSoftImage_Unsafe_ARGB8(  int SIHandle, int x, int y, int   *r, int   *g, int   *b, int   *a ) ;
int			DrawLineSoftImage(               int SIHandle, int x1, int y1, int x2, int y2, int r, int g, int b, int a ) ;
int			DrawCircleSoftImage(             int SIHandle, int x, int y, int radius, int r, int g, int b, int a, int FillFlag = TRUE ) ;
int			BltSoftImage(                    int SrcX, int SrcY, int SrcSizeX, int SrcSizeY, int SrcSIHandle, int DestX, int DestY, int DestSIHandle ) ;
int			BltSoftImageWithTransColor(      int SrcX, int SrcY, int SrcSizeX, int SrcSizeY, int SrcSIHandle, int DestX, int DestY, int DestSIHandle, int Tr, int Tg, int Tb, int Ta ) ;
int			BltSoftImageWithAlphaBlend(      int SrcX, int SrcY, int SrcSizeX, int SrcSizeY, int SrcSIHandle, int DestX, int DestY, int DestSIHandle, int Opacity = 255 ) ;
int			ReverseSoftImageH(               int SIHandle ) ;
int			ReverseSoftImageV(               int SIHandle ) ;
int			ReverseSoftImage(                int SIHandle ) ;

int			BltStringSoftImage(              int x, int y, const(TCHAR)*StrData, int DestSIHandle, int DestEdgeSIHandle = -1 ,                                        int VerticalFlag = FALSE ) ;
int			BltStringSoftImageToHandle(      int x, int y, const(TCHAR)*StrData, int DestSIHandle, int DestEdgeSIHandle /* 縁が必要ない場合は -1 */ , int FontHandle, int VerticalFlag = FALSE ) ;

int			DrawSoftImage(                   int x, int y, int SIHandle ) ;


int			SaveSoftImageToBmp(              const(TCHAR)*FilePath, int SIHandle ) ;
int			SaveSoftImageToPng(              const(TCHAR)*FilePath, int SIHandle, int CompressionLevel ) ;
int			SaveSoftImageToJpeg(             const(TCHAR)*FilePath, int SIHandle, int Quality, int Sample2x1 ) ;
























int			InitSoundMem(                        int LogOutFlag = FALSE ) ;

int			AddSoundData(                        int Handle = -1 ) ;
int			AddStreamSoundMem(                   STREAMDATA *Stream, int LoopNum,  int SoundHandle, int StreamDataType, int *CanStreamCloseFlag, int UnionHandle = -1 ) ;
int			AddStreamSoundMemToMem(              const(void)*FileImage, int FileImageSize, int LoopNum,  int SoundHandle, int StreamDataType, int UnionHandle = -1 ) ;
int			AddStreamSoundMemToFile(             const(TCHAR)*WaveFile, int LoopNum,  int SoundHandle, int StreamDataType, int UnionHandle = -1 ) ;
int			SetupStreamSoundMem(                 int SoundHandle ) ;
int			PlayStreamSoundMem(                  int SoundHandle, int PlayType = DX_PLAYTYPE_LOOP , int TopPositionFlag = TRUE ) ;
int			CheckStreamSoundMem(                 int SoundHandle ) ;
int			StopStreamSoundMem(                  int SoundHandle ) ;
int			SetStreamSoundCurrentPosition(       int Byte, int SoundHandle ) ;
int			GetStreamSoundCurrentPosition(       int SoundHandle ) ;
int			SetStreamSoundCurrentTime(           int Time, int SoundHandle ) ;
int			GetStreamSoundCurrentTime(           int SoundHandle ) ;
int			ProcessStreamSoundMem(               int SoundHandle ) ;
int			ProcessStreamSoundMemAll() ;


int			LoadSoundMem2(                       const(TCHAR)*FileName1, const(TCHAR)*FileName2 ) ;
int			LoadBGM(                             const(TCHAR)*FileName ) ;

int			LoadSoundMemBase(                    const(TCHAR)*FileName, int BufferNum,      int UnionHandle = -1 ) ;
int			LoadSoundMem(                        const(TCHAR)*FileName, int BufferNum = 3 , int UnionHandle = -1 ) ;
int			LoadSoundMemToBufNumSitei(           const(TCHAR)*FileName, int BufferNum ) ;
int			DuplicateSoundMem(                   int SrcSoundHandle, int BufferNum = 3 ) ;

int			LoadSoundMemByMemImageBase(          const(void)*FileImage, int FileImageSize, int BufferNum, int UnionHandle = -1 ) ;
int			LoadSoundMemByMemImage(              const(void)*FileImage, int FileImageSize,                int UnionHandle = -1 ) ;
int			LoadSoundMemByMemImage2(             const(void)*WaveImage, int WaveImageSize, const(WAVEFORMATEX)*WaveFormat, int WaveHeaderSize ) ;
int			LoadSoundMemByMemImageToBufNumSitei( const(void)*FileImage, int FileImageSize, int BufferNum ) ;
int			LoadSoundMem2ByMemImage(             const(void)*FileImage1, int FileImageSize1, const(void)*FileImage2, int FileImageSize2 ) ;
int			LoadSoundMemFromSoftSound(           int SoftSoundHandle, int BufferNum = 3 ) ;

int			DeleteSoundMem(                      int SoundHandle, int LogOutFlag = FALSE ) ;

int			PlaySoundMem(                        int SoundHandle, int PlayType, int TopPositionFlag = TRUE ) ;
int			StopSoundMem(                                                                        int SoundHandle ) ;
int			CheckSoundMem(                                                                       int SoundHandle ) ;
int			SetPanSoundMem(                      int PanPal,                                     int SoundHandle ) ;
int			ChangePanSoundMem(                   int PanPal,                                     int SoundHandle ) ;
int			GetPanSoundMem(                                                                      int SoundHandle ) ;
int			SetVolumeSoundMem(                   int VolumePal,                                  int SoundHandle ) ;
int			ChangeVolumeSoundMem(                int VolumePal,                                  int SoundHandle ) ;
int			GetVolumeSoundMem(                                                                   int SoundHandle ) ;
int			SetChannelVolumeSoundMem(            int Channel, int VolumePal,                     int SoundHandle ) ;
int			ChangeChannelVolumeSoundMem(         int Channel, int VolumePal,                     int SoundHandle ) ;
int			GetChannelVolumeSoundMem(            int Channel,                                    int SoundHandle ) ;
int			SetFrequencySoundMem(                int FrequencyPal,                               int SoundHandle ) ;
int			GetFrequencySoundMem(                                                                int SoundHandle ) ;
int			ResetFrequencySoundMem(                                                              int SoundHandle ) ;

int			SetNextPlayPanSoundMem(              int PanPal,                                     int SoundHandle ) ;
int			ChangeNextPlayPanSoundMem(           int PanPal,                                     int SoundHandle ) ;
int			SetNextPlayVolumeSoundMem(           int VolumePal,                                  int SoundHandle ) ;
int			ChangeNextPlayVolumeSoundMem(        int VolumePal,                                  int SoundHandle ) ;
int			SetNextPlayChannelVolumeSoundMem(    int Channel, int VolumePal,                     int SoundHandle ) ;
int			ChangeNextPlayChannelVolumeSoundMem( int Channel, int VolumePal,                     int SoundHandle ) ;
int			SetNextPlayFrequencySoundMem(        int FrequencyPal,                               int SoundHandle ) ;

int			SetCurrentPositionSoundMem(          int SamplePosition,                             int SoundHandle ) ;
int			GetCurrentPositionSoundMem(                                                          int SoundHandle ) ;
int			SetSoundCurrentPosition(             int Byte,                                       int SoundHandle ) ;
int			GetSoundCurrentPosition(                                                             int SoundHandle ) ;
int			SetSoundCurrentTime(                 int Time,                                       int SoundHandle ) ;
int			GetSoundCurrentTime(                                                                 int SoundHandle ) ;
int			GetSoundTotalSample(                                                                 int SoundHandle ) ;
int			GetSoundTotalTime(                                                                   int SoundHandle ) ;

int			SetLoopPosSoundMem(                  int LoopTime,                                   int SoundHandle ) ;
int			SetLoopTimePosSoundMem(              int LoopTime,                                   int SoundHandle ) ;
int			SetLoopSamplePosSoundMem(            int LoopSamplePosition,                         int SoundHandle ) ;

int			SetLoopStartTimePosSoundMem(         int LoopStartTime,                              int SoundHandle ) ;
int			SetLoopStartSamplePosSoundMem(       int LoopStartSamplePosition,                    int SoundHandle ) ;

int			SetPlayFinishDeleteSoundMem(         int DeleteFlag,                                 int SoundHandle ) ;

int			Set3DReverbParamSoundMem(            const(SOUND3D_REVERB_PARAM)*Param,              int SoundHandle ) ;
int			Set3DPresetReverbParamSoundMem(      int PresetNo /* DX_REVERB_PRESET_DEFAULT 等 */ , int SoundHandle ) ;
int			Set3DReverbParamSoundMemAll(         const(SOUND3D_REVERB_PARAM)*Param, int PlaySoundOnly = FALSE ) ;
int			Set3DPresetReverbParamSoundMemAll(   int PresetNo /* DX_REVERB_PRESET_DEFAULT 等 */ , int PlaySoundOnly = FALSE  ) ;
int			Get3DReverbParamSoundMem(            SOUND3D_REVERB_PARAM *ParamBuffer,              int SoundHandle ) ;
int			Get3DPresetReverbParamSoundMem(      SOUND3D_REVERB_PARAM *ParamBuffer, int PresetNo /* DX_REVERB_PRESET_DEFAULT 等 */ ) ;

int			Set3DPositionSoundMem(               VECTOR Position,                                int SoundHandle ) ;
int			Set3DRadiusSoundMem(                 float Radius,                                   int SoundHandle ) ;
int			Set3DVelocitySoundMem(               VECTOR Velocity,                                int SoundHandle ) ;

int			SetNextPlay3DPositionSoundMem(       VECTOR Position,                                int SoundHandle ) ;
int			SetNextPlay3DRadiusSoundMem(         float Radius,                                   int SoundHandle ) ;
int			SetNextPlay3DVelocitySoundMem(       VECTOR Velocity,                                int SoundHandle ) ;


int			SetCreateSoundDataType(              int SoundDataType ) ;
int			GetCreateSoundDataType() ;
int			SetCreateSoundPitchRate(             float Cents ) ;
float		GetCreateSoundPitchRate() ;
int			SetCreateSoundTimeStretchRate(       float Rate ) ;
float		GetCreateSoundTimeStretchRate() ;
int			SetDisableReadSoundFunctionMask(     int Mask ) ;
int			GetDisableReadSoundFunctionMask() ;
int			SetEnableSoundCaptureFlag(           int Flag ) ;
int			SetUseOldVolumeCalcFlag(             int Flag ) ;

int			SetCreate3DSoundFlag(                     int Flag ) ;
int			Set3DSoundOneMetre(                       float Distance ) ;
int			Set3DSoundListenerPosAndFrontPos_UpVecY(  VECTOR Position, VECTOR FrontPosition ) ;
int			Set3DSoundListenerPosAndFrontPosAndUpVec( VECTOR Position, VECTOR FrontPosition, VECTOR UpVector ) ;
int			Set3DSoundListenerVelocity(               VECTOR Velocity ) ;
int			Set3DSoundListenerConeAngle(              float InnerAngle, float OuterAngle ) ;
int			Set3DSoundListenerConeVolume(             float InnerAngleVolume, float OuterAngleVolume ) ;


int			SetBeepFrequency(					int Freq ) ;
int			PlayBeep() ;
int			StopBeep() ;


int			PlaySoundFile(						const(TCHAR)*FileName, int PlayType ) ;
int			PlaySound(							const(TCHAR)*FileName, int PlayType ) ;
int			CheckSoundFile() ;
int			CheckSound() ;
int			StopSoundFile() ;
int			StopSound() ;
int			SetVolumeSoundFile(					int VolumePal ) ;
int			SetVolumeSound(						int VolumePal ) ;


int			InitSoftSound() ;
int			LoadSoftSound(						const(TCHAR)*FileName ) ;
int			LoadSoftSoundFromMemImage(			const(void)*FileImage, int FileImageSize ) ;
int			MakeSoftSound(						int UseFormat_SoftSoundHandle, int SampleNum ) ;
int			MakeSoftSound2Ch16Bit44KHz(			int SampleNum ) ;
int			MakeSoftSound2Ch16Bit22KHz(			int SampleNum ) ;
int			MakeSoftSound2Ch8Bit44KHz(			int SampleNum ) ;
int			MakeSoftSound2Ch8Bit22KHz(			int SampleNum ) ;
int			MakeSoftSound1Ch16Bit44KHz(			int SampleNum ) ;
int			MakeSoftSound1Ch16Bit22KHz(			int SampleNum ) ;
int			MakeSoftSound1Ch8Bit44KHz(			int SampleNum ) ;
int			MakeSoftSound1Ch8Bit22KHz(			int SampleNum ) ;
int			MakeSoftSoundCustom(				int ChannelNum, int BitsPerSample, int SamplesPerSec, int SampleNum, int IsFloatType = 0 ) ;
int			DeleteSoftSound(					int SoftSoundHandle ) ;
int			SaveSoftSound(						int SoftSoundHandle, const(TCHAR)*FileName ) ;
int			GetSoftSoundSampleNum(				int SoftSoundHandle ) ;
int			GetSoftSoundFormat(					int SoftSoundHandle, int *Channels, int *BitsPerSample, int *SamplesPerSec, int *IsFloatType = NULL ) ;
int			ReadSoftSoundData(					int SoftSoundHandle, int SamplePosition, int *Channel1, int *Channel2 ) ;
int			ReadSoftSoundDataF(					int SoftSoundHandle, int SamplePosition, float *Channel1, float *Channel2 ) ;
int			WriteSoftSoundData(					int SoftSoundHandle, int SamplePosition, int Channel1, int Channel2 ) ;
int			WriteSoftSoundDataF(				int SoftSoundHandle, int SamplePosition, float Channel1, float Channel2 ) ;
int			WriteTimeStretchSoftSoundData(		int SrcSoftSoundHandle, int DestSoftSoundHandle ) ;
int			WritePitchShiftSoftSoundData(		int SrcSoftSoundHandle, int DestSoftSoundHandle ) ;
void*		GetSoftSoundDataImage(				int SoftSoundHandle ) ;
int			GetFFTVibrationSoftSound(			int SoftSoundHandle, int Channel, int SamplePosition, int SampleNum, float *Buffer, int BufferLength ) ;

int			InitSoftSoundPlayer() ;
int			MakeSoftSoundPlayer(				int UseFormat_SoftSoundHandle ) ;
int			MakeSoftSoundPlayer2Ch16Bit44KHz() ;
int			MakeSoftSoundPlayer2Ch16Bit22KHz() ;
int			MakeSoftSoundPlayer2Ch8Bit44KHz() ;
int			MakeSoftSoundPlayer2Ch8Bit22KHz() ;
int			MakeSoftSoundPlayer1Ch16Bit44KHz() ;
int			MakeSoftSoundPlayer1Ch16Bit22KHz() ;
int			MakeSoftSoundPlayer1Ch8Bit44KHz() ;
int			MakeSoftSoundPlayer1Ch8Bit22KHz() ;
int			MakeSoftSoundPlayerCustom(			int ChannelNum, int BitsPerSample, int SamplesPerSec ) ;
int			DeleteSoftSoundPlayer(				int SSoundPlayerHandle ) ;
int			AddDataSoftSoundPlayer(				int SSoundPlayerHandle, int SoftSoundHandle, int AddSamplePosition, int AddSampleNum ) ;
int			AddDirectDataSoftSoundPlayer(		int SSoundPlayerHandle, const(void)*SoundData, int AddSampleNum ) ;
int			AddOneDataSoftSoundPlayer(			int SSoundPlayerHandle, int Channel1, int Channel2 ) ;
int			GetSoftSoundPlayerFormat(			int SSoundPlayerHandle, int *Channels, int *BitsPerSample, int *SamplesPerSec ) ;
int			StartSoftSoundPlayer(				int SSoundPlayerHandle ) ;
int			CheckStartSoftSoundPlayer(			int SSoundPlayerHandle ) ;
int			StopSoftSoundPlayer(				int SSoundPlayerHandle ) ;
int			ResetSoftSoundPlayer(				int SSoundPlayerHandle ) ;
int			GetStockDataLengthSoftSoundPlayer(	int SSoundPlayerHandle ) ;
int			CheckSoftSoundPlayerNoneData(		int SSoundPlayerHandle ) ;





int			DeleteMusicMem(						int MusicHandle ) ;
int			LoadMusicMem(						const(TCHAR)*FileName ) ;
int			LoadMusicMemByMemImage(				const(void)*FileImage, int FileImageSize ) ;
int			PlayMusicMem(						int MusicHandle, int PlayType ) ;
int			StopMusicMem(						int MusicHandle ) ;
int			CheckMusicMem(						int MusicHandle ) ;
int			SetVolumeMusicMem(					int Volume, int MusicHandle ) ;
int			GetMusicMemPosition(				int MusicHandle ) ;
int			InitMusicMem() ;
int			ProcessMusicMem() ;

int			PlayMusic(							const(TCHAR)*FileName, int PlayType ) ;
int			PlayMusicByMemImage(				const(void)*FileImage, int FileImageSize, int PlayType ) ;
int			PlayMusicByResource(				const(TCHAR)*ResourceName, const(TCHAR)*ResourceType, int PlayType ) ;
int			SetVolumeMusic(						int Volume ) ;
int			StopMusic() ;
int			CheckMusic() ;
int			GetMusicPosition() ;

int			SelectMidiMode(						int Mode ) ;












int			SetUseDXArchiveFlag(		int Flag ) ;
int			SetDXArchivePriority(		int Priority = 0 ) ;
int			SetDXArchiveExtension(		const(TCHAR)*Extension = NULL ) ;
int			SetDXArchiveKeyString(		const(TCHAR)*KeyString = NULL ) ;

int			DXArchivePreLoad(			const(TCHAR)*FilePath , int ASync = FALSE ) ;
int			DXArchiveCheckIdle(			const(TCHAR)*FilePath ) ;
int			DXArchiveRelease(			const(TCHAR)*FilePath ) ;
int			DXArchiveCheckFile(			const(TCHAR)*FilePath, const(TCHAR)*TargetFilePath ) ;
int			DXArchiveSetMemImage(		void *ArchiveImage, int ArchiveImageSize, const(TCHAR)*EmulateFilePath, int ArchiveImageCopyFlag = FALSE, int ArchiveImageReadOnly = TRUE ) ;
int			DXArchiveReleaseMemImage(	void *ArchiveImage ) ;

























int			MV1LoadModel(						const(TCHAR)*FileName ) ;
int			MV1LoadModelFromMem(				const(void)*FileImage, int FileSize, int  function( const(TCHAR)*FilePath, void **FileImageAddr, int *FileSize, void *FileReadFuncData )FileReadFunc, int  function( void *MemoryAddr, void *FileReadFuncData )FileReleaseFunc, void *FileReadFuncData = NULL ) ;
int			MV1DuplicateModel(					int SrcMHandle ) ;
int			MV1CreateCloneModel(				int SrcMHandle ) ;

int			MV1DeleteModel(						int MHandle ) ;
int			MV1InitModel() ;

int			MV1SetLoadModelReMakeNormal(		int Flag ) ;
int			MV1SetLoadModelReMakeNormalSmoothingAngle( float SmoothingAngle = 1.562069f ) ;
int			MV1SetLoadModelIgnoreScaling(       int Flag ) ;
int			MV1SetLoadModelPositionOptimize(	int Flag ) ;
int			MV1SetLoadModelUsePhysicsMode(		int PhysicsMode /* DX_LOADMODEL_PHYSICS_LOADCALC 等 */ ) ;
int			MV1SetLoadModelPhysicsWorldGravity( float Gravity ) ;
int			MV1SetLoadCalcPhysicsWorldGravity(	int GravityNo, VECTOR Gravity ) ;
int			MV1SetLoadModelPhysicsCalcPrecision( int Precision ) ;
int			MV1SetLoadModelAnimFilePath(		const(TCHAR)*FileName ) ;
int			MV1SetLoadModelUsePackDraw(			int Flag ) ;
int			MV1SetLoadModelTriangleListUseMaxBoneNum( int UseMaxBoneNum ) ;


int			MV1SaveModelToMV1File( int MHandle, const(TCHAR)*FileName, int SaveType = MV1_SAVETYPE_NORMAL , int AnimMHandle = -1 , int AnimNameCheck = TRUE , int Normal8BitFlag = 1 , int Position16BitFlag = 1 , int Weight8BitFlag = 0 , int Anim16BitFlag = 1 ) ;
int			MV1SaveModelToXFile(   int MHandle, const(TCHAR)*FileName, int SaveType = MV1_SAVETYPE_NORMAL , int AnimMHandle = -1 , int AnimNameCheck = TRUE ) ;


int			MV1DrawModel(						int MHandle ) ;
int			MV1DrawFrame(						int MHandle, int FrameIndex ) ;
int			MV1DrawMesh(						int MHandle, int MeshIndex ) ;
int			MV1DrawTriangleList(				int MHandle, int TriangleListIndex ) ;
int			MV1DrawModelDebug(					int MHandle, uint Color, int IsNormalLine, float NormalLineLength, int IsPolyLine, int IsCollisionBox ) ;


int			MV1SetUseOrigShader(				int UseFlag ) ;
int			MV1SetSemiTransDrawMode(			int DrawMode /* DX_SEMITRANSDRAWMODE_ALWAYS 等 */ ) ;


MATRIX		MV1GetLocalWorldMatrix(				int MHandle ) ;
MATRIX_D	MV1GetLocalWorldMatrixD(			int MHandle ) ;
int			MV1SetPosition(						int MHandle, VECTOR   Position ) ;
int			MV1SetPositionD(					int MHandle, VECTOR_D Position ) ;
VECTOR		MV1GetPosition(						int MHandle ) ;
VECTOR_D	MV1GetPositionD(					int MHandle ) ;
int			MV1SetScale(						int MHandle, VECTOR Scale ) ;
VECTOR		MV1GetScale(						int MHandle ) ;
int			MV1SetRotationXYZ(					int MHandle, VECTOR Rotate ) ;
VECTOR		MV1GetRotationXYZ(					int MHandle ) ;
int			MV1SetRotationZYAxis(				int MHandle, VECTOR ZAxisDirection, VECTOR YAxisDirection, float ZAxisTwistRotate ) ;
int			MV1SetRotationMatrix(				int MHandle, MATRIX Matrix ) ;
MATRIX		MV1GetRotationMatrix(				int MHandle ) ;
int			MV1SetMatrix(						int MHandle, MATRIX   Matrix ) ;
int			MV1SetMatrixD(						int MHandle, MATRIX_D Matrix ) ;
MATRIX		MV1GetMatrix(						int MHandle ) ;
MATRIX_D	MV1GetMatrixD(						int MHandle ) ;
int			MV1SetVisible(						int MHandle, int VisibleFlag ) ;
int			MV1GetVisible(						int MHandle ) ;
int			MV1SetMeshCategoryVisible(			int MHandle, int MeshCategory, int VisibleFlag ) ;
int			MV1GetMeshCategoryVisible(			int MHandle, int MeshCategory ) ;
int			MV1SetDifColorScale(				int MHandle, COLOR_F Scale ) ;
COLOR_F		MV1GetDifColorScale(				int MHandle ) ;
int			MV1SetSpcColorScale(				int MHandle, COLOR_F Scale ) ;
COLOR_F		MV1GetSpcColorScale(				int MHandle ) ;
int			MV1SetEmiColorScale(				int MHandle, COLOR_F Scale ) ;
COLOR_F		MV1GetEmiColorScale(				int MHandle ) ;
int			MV1SetAmbColorScale(				int MHandle, COLOR_F Scale ) ;
COLOR_F		MV1GetAmbColorScale(				int MHandle ) ;
int			MV1GetSemiTransState(				int MHandle ) ;
int			MV1SetOpacityRate(					int MHandle, float Rate ) ;
float		MV1GetOpacityRate(					int MHandle ) ;
int			MV1SetUseDrawMulAlphaColor(			int MHandle, int Flag ) ;
int			MV1GetUseDrawMulAlphaColor(			int MHandle ) ;
int			MV1SetUseZBuffer(					int MHandle, int Flag ) ;
int			MV1SetWriteZBuffer(					int MHandle, int Flag ) ;
int			MV1SetZBufferCmpType(				int MHandle, int CmpType /* DX_CMP_NEVER 等 */ ) ;
int			MV1SetZBias(						int MHandle, int Bias ) ;
int			MV1SetUseVertDifColor(				int MHandle, int UseFlag ) ;
int			MV1SetUseVertSpcColor(				int MHandle, int UseFlag ) ;
int			MV1SetSampleFilterMode(				int MHandle, int FilterMode ) ;
int			MV1SetMaxAnisotropy(				int MHandle, int MaxAnisotropy ) ;
int			MV1SetWireFrameDrawFlag(			int MHandle, int Flag ) ;
int			MV1RefreshVertColorFromMaterial(	int MHandle ) ;
int			MV1SetPhysicsWorldGravity(			int MHandle, VECTOR Gravity ) ;
int			MV1PhysicsCalculation(				int MHandle, float MillisecondTime ) ;
int			MV1PhysicsResetState(				int MHandle ) ;
int			MV1SetUseShapeFlag(					int MHandle, int UseFlag ) ;
int			MV1GetMaterialNumberOrderFlag(		int MHandle ) ;


int			MV1AttachAnim(						int MHandle, int AnimIndex, int AnimSrcMHandle = -1 , int NameCheck = TRUE ) ;
int			MV1DetachAnim(						int MHandle, int AttachIndex ) ;
int			MV1SetAttachAnimTime(				int MHandle, int AttachIndex, float Time ) ;
float		MV1GetAttachAnimTime(				int MHandle, int AttachIndex ) ;
float		MV1GetAttachAnimTotalTime(			int MHandle, int AttachIndex ) ;
int			MV1SetAttachAnimBlendRate(			int MHandle, int AttachIndex, float Rate = 1.0f ) ;
float		MV1GetAttachAnimBlendRate(			int MHandle, int AttachIndex ) ;
int			MV1SetAttachAnimBlendRateToFrame(	int MHandle, int AttachIndex, int FrameIndex, float Rate, int SetChild = TRUE ) ;
float		MV1GetAttachAnimBlendRateToFrame(	int MHandle, int AttachIndex, int FrameIndex ) ;
int			MV1GetAttachAnim(					int MHandle, int AttachIndex ) ;
int			MV1SetAttachAnimUseShapeFlag(		int MHandle, int AttachIndex, int UseFlag ) ;
int			MV1GetAttachAnimUseShapeFlag(		int MHandle, int AttachIndex ) ;
VECTOR		MV1GetAttachAnimFrameLocalPosition(	int MHandle, int AttachIndex, int FrameIndex ) ;
MATRIX		MV1GetAttachAnimFrameLocalMatrix(	int MHandle, int AttachIndex, int FrameIndex ) ;

int			MV1GetAnimNum(						int MHandle ) ;
const(TCHAR)*MV1GetAnimName(					int MHandle, int AnimIndex ) ;
int			MV1SetAnimName(						int MHandle, int AnimIndex, const(TCHAR)*AnimName ) ;
int			MV1GetAnimIndex(					int MHandle, const(TCHAR)*AnimName ) ;
float		MV1GetAnimTotalTime(				int MHandle, int AnimIndex ) ;
int			MV1GetAnimTargetFrameNum(			int MHandle, int AnimIndex ) ;
const(TCHAR)*MV1GetAnimTargetFrameName(			int MHandle, int AnimIndex, int AnimFrameIndex ) ;
int			MV1GetAnimTargetFrame(				int MHandle, int AnimIndex, int AnimFrameIndex ) ;
int			MV1GetAnimTargetFrameKeySetNum(		int MHandle, int AnimIndex, int AnimFrameIndex ) ;
int			MV1GetAnimTargetFrameKeySet(		int MHandle, int AnimIndex, int AnimFrameIndex, int Index ) ;

int			MV1GetAnimKeySetNum(				int MHandle ) ;
int			MV1GetAnimKeySetType(				int MHandle, int AnimKeySetIndex ) ;
int			MV1GetAnimKeySetDataType(			int MHandle, int AnimKeySetIndex ) ;
int			MV1GetAnimKeySetTimeType(			int MHandle, int AnimKeySetIndex ) ;
int			MV1GetAnimKeySetDataNum(			int MHandle, int AnimKeySetIndex ) ;
float		MV1GetAnimKeyDataTime(				int MHandle, int AnimKeySetIndex, int Index ) ;
int			MV1GetAnimKeyDataIndexFromTime(		int MHandle, int AnimKeySetIndex, float Time ) ;
FLOAT4		MV1GetAnimKeyDataToQuaternion(		int MHandle, int AnimKeySetIndex, int Index ) ;
FLOAT4		MV1GetAnimKeyDataToQuaternionFromTime( int MHandle, int AnimKeySetIndex, float Time ) ;
VECTOR		MV1GetAnimKeyDataToVector(			int MHandle, int AnimKeySetIndex, int Index ) ;
VECTOR		MV1GetAnimKeyDataToVectorFromTime(	int MHandle, int AnimKeySetIndex, float Time ) ;
MATRIX		MV1GetAnimKeyDataToMatrix(			int MHandle, int AnimKeySetIndex, int Index ) ;
MATRIX		MV1GetAnimKeyDataToMatrixFromTime(	int MHandle, int AnimKeySetIndex, float Time ) ;
float		MV1GetAnimKeyDataToFlat(			int MHandle, int AnimKeySetIndex, int Index ) ;
float		MV1GetAnimKeyDataToFlatFromTime(	int MHandle, int AnimKeySetIndex, float Time ) ;
float		MV1GetAnimKeyDataToLinear(			int MHandle, int AnimKeySetIndex, int Index ) ;
float		MV1GetAnimKeyDataToLinearFromTime(	int MHandle, int AnimKeySetIndex, float Time ) ;


int			MV1GetMaterialNum(					int MHandle ) ;
const(TCHAR)*MV1GetMaterialName(				int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialTypeAll(				int MHandle,                    int Type ) ;
int			MV1SetMaterialType(					int MHandle, int MaterialIndex, int Type ) ;
int			MV1GetMaterialType(					int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialDifColor(				int MHandle, int MaterialIndex, COLOR_F Color ) ;
COLOR_F		MV1GetMaterialDifColor( 			int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialSpcColor( 			int MHandle, int MaterialIndex, COLOR_F Color ) ;
COLOR_F		MV1GetMaterialSpcColor( 			int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialEmiColor( 			int MHandle, int MaterialIndex, COLOR_F Color ) ;
COLOR_F		MV1GetMaterialEmiColor( 			int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialAmbColor( 			int MHandle, int MaterialIndex, COLOR_F Color ) ;
COLOR_F		MV1GetMaterialAmbColor( 			int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialSpcPower( 			int MHandle, int MaterialIndex, float Power ) ;
float		MV1GetMaterialSpcPower( 			int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialDifMapTexture(		int MHandle, int MaterialIndex, int TexIndex ) ;
int			MV1GetMaterialDifMapTexture(		int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialSpcMapTexture(		int MHandle, int MaterialIndex, int TexIndex ) ;
int			MV1GetMaterialSpcMapTexture(		int MHandle, int MaterialIndex ) ;
int			MV1GetMaterialNormalMapTexture(		int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialDifGradTexture(		int MHandle, int MaterialIndex, int TexIndex ) ;
int			MV1GetMaterialDifGradTexture(		int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialSpcGradTexture(		int MHandle, int MaterialIndex, int TexIndex ) ;
int			MV1GetMaterialSpcGradTexture(		int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialSphereMapTexture(		int MHandle, int MaterialIndex, int TexIndex ) ;
int			MV1GetMaterialSphereMapTexture(		int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialDifGradBlendTypeAll(	int MHandle,                    int BlendType ) ;
int			MV1SetMaterialDifGradBlendType(		int MHandle, int MaterialIndex, int BlendType ) ;
int			MV1GetMaterialDifGradBlendType(		int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialSpcGradBlendTypeAll(	int MHandle,                    int BlendType ) ;
int			MV1SetMaterialSpcGradBlendType(		int MHandle, int MaterialIndex, int BlendType ) ;
int			MV1GetMaterialSpcGradBlendType(		int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialSphereMapBlendTypeAll( int MHandle,                   int BlendType ) ;
int			MV1SetMaterialSphereMapBlendType(	int MHandle, int MaterialIndex, int BlendType ) ;
int			MV1GetMaterialSphereMapBlendType(	int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialOutLineWidthAll(		int MHandle,                    float Width ) ;
int			MV1SetMaterialOutLineWidth(			int MHandle, int MaterialIndex, float Width ) ;
float		MV1GetMaterialOutLineWidth(			int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialOutLineDotWidthAll(	int MHandle,                    float Width ) ;
int			MV1SetMaterialOutLineDotWidth(		int MHandle, int MaterialIndex, float Width ) ;
float		MV1GetMaterialOutLineDotWidth(		int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialOutLineColorAll(		int MHandle,                    COLOR_F Color ) ;
int			MV1SetMaterialOutLineColor(			int MHandle, int MaterialIndex, COLOR_F Color ) ;
COLOR_F		MV1GetMaterialOutLineColor(			int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialDrawBlendModeAll(		int MHandle,                    int BlendMode ) ;
int			MV1SetMaterialDrawBlendMode(		int MHandle, int MaterialIndex, int BlendMode ) ;
int			MV1GetMaterialDrawBlendMode(		int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialDrawBlendParamAll(	int MHandle,                    int BlendParam ) ;
int			MV1SetMaterialDrawBlendParam(		int MHandle, int MaterialIndex, int BlendParam ) ;
int			MV1GetMaterialDrawBlendParam(		int MHandle, int MaterialIndex ) ;
int			MV1SetMaterialDrawAlphaTestAll(		int MHandle,                    int Enable, int Mode, int Param ) ;
int			MV1SetMaterialDrawAlphaTest(		int MHandle, int MaterialIndex,	int Enable, int Mode, int Param ) ;
int			MV1GetMaterialDrawAlphaTestEnable(	int MHandle, int MaterialIndex ) ;
int			MV1GetMaterialDrawAlphaTestMode(	int MHandle, int MaterialIndex ) ;
int			MV1GetMaterialDrawAlphaTestParam(	int MHandle, int MaterialIndex ) ;


int			MV1GetTextureNum(					int MHandle ) ;
const(TCHAR)*MV1GetTextureName(					int MHandle, int TexIndex ) ;
int			MV1SetTextureColorFilePath(			int MHandle, int TexIndex, const(TCHAR)*FilePath ) ;
const(TCHAR)*MV1GetTextureColorFilePath(		int MHandle, int TexIndex ) ;
int			MV1SetTextureAlphaFilePath(			int MHandle, int TexIndex, const(TCHAR)*FilePath ) ;
const(TCHAR)*MV1GetTextureAlphaFilePath(		int MHandle, int TexIndex ) ;
int			MV1SetTextureGraphHandle(			int MHandle, int TexIndex, int GrHandle, int SemiTransFlag ) ;
int			MV1GetTextureGraphHandle(			int MHandle, int TexIndex ) ;
int			MV1SetTextureAddressMode(			int MHandle, int TexIndex, int AddrUMode, int AddrVMode ) ;
int			MV1GetTextureAddressModeU(			int MHandle, int TexIndex ) ;
int			MV1GetTextureAddressModeV(			int MHandle, int TexIndex ) ;
int			MV1GetTextureWidth(					int MHandle, int TexIndex ) ;
int			MV1GetTextureHeight(				int MHandle, int TexIndex ) ;
int			MV1GetTextureSemiTransState(		int MHandle, int TexIndex ) ;
int			MV1SetTextureBumpImageFlag(			int MHandle, int TexIndex, int Flag ) ;
int			MV1GetTextureBumpImageFlag(			int MHandle, int TexIndex ) ;
int			MV1SetTextureBumpImageNextPixelLength( int MHandle, int TexIndex, float Length ) ;
float		MV1GetTextureBumpImageNextPixelLength( int MHandle, int TexIndex ) ;
int			MV1SetTextureSampleFilterMode(		int MHandle, int TexIndex, int FilterMode ) ;
int			MV1GetTextureSampleFilterMode(		int MHandle, int TexIndex ) ;
int			MV1LoadTexture(						const(TCHAR)*FilePath ) ;


int			MV1GetFrameNum(						int MHandle ) ;
int			MV1SearchFrame(						int MHandle, const(TCHAR)*FrameName ) ;
int			MV1SearchFrameChild(				int MHandle, int FrameIndex = -1 , const(TCHAR)*ChildName = NULL ) ;
const(TCHAR)*MV1GetFrameName(					int MHandle, int FrameIndex ) ;
int			MV1GetFrameName2(					int MHandle, int FrameIndex, TCHAR *StrBuffer ) ;
int			MV1GetFrameParent(					int MHandle, int FrameIndex ) ;
int			MV1GetFrameChildNum(				int MHandle, int FrameIndex = -1 ) ;
int			MV1GetFrameChild(					int MHandle, int FrameIndex = -1 , int ChildIndex = 0 ) ;
VECTOR		MV1GetFramePosition(				int MHandle, int FrameIndex ) ;
VECTOR_D	MV1GetFramePositionD(				int MHandle, int FrameIndex ) ;
MATRIX		MV1GetFrameBaseLocalMatrix(			int MHandle, int FrameIndex ) ;
MATRIX_D	MV1GetFrameBaseLocalMatrixD(		int MHandle, int FrameIndex ) ;
MATRIX		MV1GetFrameLocalMatrix(				int MHandle, int FrameIndex ) ;
MATRIX_D	MV1GetFrameLocalMatrixD(			int MHandle, int FrameIndex ) ;
MATRIX		MV1GetFrameLocalWorldMatrix(		int MHandle, int FrameIndex ) ;
MATRIX_D	MV1GetFrameLocalWorldMatrixD(		int MHandle, int FrameIndex ) ;
int			MV1SetFrameUserLocalMatrix(			int MHandle, int FrameIndex, MATRIX   Matrix ) ;
int			MV1SetFrameUserLocalMatrixD(		int MHandle, int FrameIndex, MATRIX_D Matrix ) ;
int			MV1ResetFrameUserLocalMatrix(		int MHandle, int FrameIndex ) ;
VECTOR		MV1GetFrameMaxVertexLocalPosition(	int MHandle, int FrameIndex ) ;
VECTOR_D	MV1GetFrameMaxVertexLocalPositionD(	int MHandle, int FrameIndex ) ;
VECTOR		MV1GetFrameMinVertexLocalPosition(	int MHandle, int FrameIndex ) ;
VECTOR_D	MV1GetFrameMinVertexLocalPositionD(	int MHandle, int FrameIndex ) ;
VECTOR		MV1GetFrameAvgVertexLocalPosition(	int MHandle, int FrameIndex ) ;
VECTOR_D	MV1GetFrameAvgVertexLocalPositionD(	int MHandle, int FrameIndex ) ;
int			MV1GetFrameTriangleNum(				int MHandle, int FrameIndex ) ;
int			MV1GetFrameMeshNum(					int MHandle, int FrameIndex ) ;
int			MV1GetFrameMesh(					int MHandle, int FrameIndex, int Index ) ;
int			MV1SetFrameVisible(					int MHandle, int FrameIndex, int VisibleFlag ) ;
int			MV1GetFrameVisible(					int MHandle, int FrameIndex ) ;
int			MV1SetFrameDifColorScale(			int MHandle, int FrameIndex, COLOR_F Scale ) ;
int			MV1SetFrameSpcColorScale(			int MHandle, int FrameIndex, COLOR_F Scale ) ;
int			MV1SetFrameEmiColorScale(			int MHandle, int FrameIndex, COLOR_F Scale ) ;
int			MV1SetFrameAmbColorScale(			int MHandle, int FrameIndex, COLOR_F Scale ) ;
COLOR_F		MV1GetFrameDifColorScale(			int MHandle, int FrameIndex ) ;
COLOR_F		MV1GetFrameSpcColorScale(			int MHandle, int FrameIndex ) ;
COLOR_F		MV1GetFrameEmiColorScale(			int MHandle, int FrameIndex ) ;
COLOR_F		MV1GetFrameAmbColorScale(			int MHandle, int FrameIndex ) ;
int			MV1GetFrameSemiTransState(			int MHandle, int FrameIndex ) ;
int			MV1SetFrameOpacityRate(				int MHandle, int FrameIndex, float Rate ) ;
float		MV1GetFrameOpacityRate(				int MHandle, int FrameIndex ) ;
int			MV1SetFrameBaseVisible(				int MHandle, int FrameIndex, int VisibleFlag ) ;
int			MV1GetFrameBaseVisible(				int MHandle, int FrameIndex ) ;
int			MV1SetFrameTextureAddressTransform( int MHandle, int FrameIndex, float TransU, float TransV, float ScaleU, float ScaleV, float RotCenterU, float RotCenterV, float Rotate ) ;
int			MV1SetFrameTextureAddressTransformMatrix( int MHandle, int FrameIndex, MATRIX Matrix ) ;
int			MV1ResetFrameTextureAddressTransform( int MHandle, int FrameIndex ) ;


int			MV1GetMeshNum(						int MHandle ) ;
int			MV1GetMeshMaterial(					int MHandle, int MeshIndex ) ;
int			MV1GetMeshTriangleNum(				int MHandle, int MeshIndex ) ;
int			MV1SetMeshVisible(					int MHandle, int MeshIndex, int VisibleFlag ) ;
int			MV1GetMeshVisible(					int MHandle, int MeshIndex ) ;
int			MV1SetMeshDifColorScale(			int MHandle, int MeshIndex, COLOR_F Scale ) ;
int			MV1SetMeshSpcColorScale( 			int MHandle, int MeshIndex, COLOR_F Scale ) ;
int			MV1SetMeshEmiColorScale( 			int MHandle, int MeshIndex, COLOR_F Scale ) ;
int			MV1SetMeshAmbColorScale( 			int MHandle, int MeshIndex, COLOR_F Scale ) ;
COLOR_F		MV1GetMeshDifColorScale( 			int MHandle, int MeshIndex ) ;
COLOR_F		MV1GetMeshSpcColorScale( 			int MHandle, int MeshIndex ) ;
COLOR_F		MV1GetMeshEmiColorScale( 			int MHandle, int MeshIndex ) ;
COLOR_F		MV1GetMeshAmbColorScale( 			int MHandle, int MeshIndex ) ;
int			MV1SetMeshOpacityRate( 				int MHandle, int MeshIndex, float Rate ) ;
float		MV1GetMeshOpacityRate( 				int MHandle, int MeshIndex ) ;
int			MV1SetMeshDrawBlendMode( 			int MHandle, int MeshIndex, int BlendMode ) ;
int			MV1SetMeshDrawBlendParam( 			int MHandle, int MeshIndex, int BlendParam ) ;
int			MV1GetMeshDrawBlendMode( 			int MHandle, int MeshIndex ) ;
int			MV1GetMeshDrawBlendParam( 			int MHandle, int MeshIndex ) ;
int			MV1SetMeshBaseVisible( 				int MHandle, int MeshIndex, int VisibleFlag ) ;
int			MV1GetMeshBaseVisible( 				int MHandle, int MeshIndex ) ;
int			MV1SetMeshBackCulling( 				int MHandle, int MeshIndex, int CullingFlag ) ;
int			MV1GetMeshBackCulling( 				int MHandle, int MeshIndex ) ;
VECTOR		MV1GetMeshMaxPosition( 				int MHandle, int MeshIndex ) ;
VECTOR		MV1GetMeshMinPosition( 				int MHandle, int MeshIndex ) ;
int			MV1GetMeshTListNum( 				int MHandle, int MeshIndex ) ;
int			MV1GetMeshTList( 					int MHandle, int MeshIndex, int Index ) ;
int			MV1GetMeshSemiTransState( 			int MHandle, int MeshIndex ) ;
int			MV1SetMeshUseVertDifColor( 			int MHandle, int MeshIndex, int UseFlag ) ;
int			MV1SetMeshUseVertSpcColor( 			int MHandle, int MeshIndex, int UseFlag ) ;
int			MV1GetMeshUseVertDifColor( 			int MHandle, int MeshIndex ) ;
int			MV1GetMeshUseVertSpcColor( 			int MHandle, int MeshIndex ) ;
int			MV1GetMeshShapeFlag(				int MHandle, int MeshIndex ) ;


int			MV1GetShapeNum(						int MHandle ) ;
int			MV1SearchShape(						int MHandle, const(TCHAR)*ShapeName ) ;
const(TCHAR)*MV1GetShapeName(					int MHandle, int ShapeIndex ) ;
int			MV1GetShapeTargetMeshNum(			int MHandle, int ShapeIndex ) ;
int			MV1GetShapeTargetMesh(				int MHandle, int ShapeIndex, int Index ) ;
int			MV1SetShapeRate(					int MHandle, int ShapeIndex, float Rate ) ;
float		MV1GetShapeRate(					int MHandle, int ShapeIndex ) ;


int			MV1GetTriangleListNum(					int MHandle ) ;
int			MV1GetTriangleListVertexType(			int MHandle, int TListIndex ) ;
int			MV1GetTriangleListPolygonNum(			int MHandle, int TListIndex ) ;
int			MV1GetTriangleListVertexNum(			int MHandle, int TListIndex ) ;
int			MV1GetTriangleListLocalWorldMatrixNum(	int MHandle, int TListIndex ) ;
MATRIX		MV1GetTriangleListLocalWorldMatrix(		int MHandle, int TListIndex, int LWMatrixIndex ) ;


int							MV1SetupCollInfo(				int MHandle, int FrameIndex = -1 , int XDivNum = 32 , int YDivNum = 8 , int ZDivNum = 32 ) ;
int							MV1TerminateCollInfo(			int MHandle, int FrameIndex = -1 ) ;
int							MV1RefreshCollInfo(				int MHandle, int FrameIndex = -1 ) ;
MV1_COLL_RESULT_POLY		MV1CollCheck_Line(				int MHandle, int FrameIndex, VECTOR PosStart, VECTOR PosEnd ) ;
MV1_COLL_RESULT_POLY_DIM	MV1CollCheck_LineDim(			int MHandle, int FrameIndex, VECTOR PosStart, VECTOR PosEnd ) ;
MV1_COLL_RESULT_POLY_DIM	MV1CollCheck_Sphere(			int MHandle, int FrameIndex, VECTOR CenterPos, float r ) ;
MV1_COLL_RESULT_POLY_DIM	MV1CollCheck_Capsule(			int MHandle, int FrameIndex, VECTOR Pos1, VECTOR Pos2, float r ) ;
MV1_COLL_RESULT_POLY_DIM	MV1CollCheck_Triangle(			int MHandle, int FrameIndex, VECTOR Pos1, VECTOR Pos2, VECTOR Pos3 ) ;
MV1_COLL_RESULT_POLY		MV1CollCheck_GetResultPoly(		MV1_COLL_RESULT_POLY_DIM ResultPolyDim, int PolyNo ) ;
int							MV1CollResultPolyDimTerminate(	MV1_COLL_RESULT_POLY_DIM ResultPolyDim ) ;


int					MV1SetupReferenceMesh(		int MHandle, int FrameIndex, int IsTransform, int IsPositionOnly = FALSE ) ;
int					MV1TerminateReferenceMesh(	int MHandle, int FrameIndex, int IsTransform, int IsPositionOnly = FALSE ) ;
int					MV1RefreshReferenceMesh(	int MHandle, int FrameIndex, int IsTransform, int IsPositionOnly = FALSE ) ;
MV1_REF_POLYGONLIST	MV1GetReferenceMesh(		int MHandle, int FrameIndex, int IsTransform, int IsPositionOnly = FALSE ) ;




}











