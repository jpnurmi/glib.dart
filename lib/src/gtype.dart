import 'gtypes.dart';

typedef GType = gsize;
const GType G_TYPE_FUNDAMENTAL_MAX = 1020;
const GType G_TYPE_INVALID = 0;
const GType G_TYPE_NONE = 4;
const GType G_TYPE_INTERFACE = 8;
const GType G_TYPE_CHAR = 12;
const GType G_TYPE_UCHAR = 16;
const GType G_TYPE_BOOLEAN = 20;
const GType G_TYPE_INT = 24;
const GType G_TYPE_UINT = 28;
const GType G_TYPE_LONG = 32;
const GType G_TYPE_ULONG = 36;
const GType G_TYPE_INT64 = 40;
const GType G_TYPE_UINT64 = 44;
const GType G_TYPE_ENUM = 48;
const GType G_TYPE_FLAGS = 52;
const GType G_TYPE_FLOAT = 56;
const GType G_TYPE_DOUBLE = 60;
const GType G_TYPE_STRING = 64;
const GType G_TYPE_POINTER = 68;
const GType G_TYPE_BOXED = 72;
const GType G_TYPE_PARAM = 76;
const GType G_TYPE_OBJECT = 80;
const GType G_TYPE_VARIANT = 84;
const GType G_TYPE_FUNDAMENTAL_SHIFT = 2;
const GType G_TYPE_RESERVED_GLIB_FIRST = 22;
const GType G_TYPE_RESERVED_GLIB_LAST = 31;
const GType G_TYPE_RESERVED_BSE_FIRST = 32;
const GType G_TYPE_RESERVED_BSE_LAST = 48;
const GType G_TYPE_RESERVED_USER_FIRST = 49;
const GType G_TYPE_FLAG_RESERVED_ID_BIT = 1;

bool G_TYPE_IS_FUNDAMENTAL(GType type) => type <= G_TYPE_FUNDAMENTAL_MAX;
bool G_TYPE_IS_DERIVED(GType type) => type > G_TYPE_FUNDAMENTAL_MAX;
bool G_TYPE_IS_INTERFACE(GType type) =>           (G_TYPE_FUNDAMENTAL (type) == G_TYPE_INTERFACE)
bool G_TYPE_IS_CLASSED(GType type) =>             (g_type_test_flags ((type), G_TYPE_FLAG_CLASSED))
bool G_TYPE_IS_INSTANTIATABLE(GType type) =>      (g_type_test_flags ((type), G_TYPE_FLAG_INSTANTIATABLE))
bool G_TYPE_IS_DERIVABLE(GType type) =>           (g_type_test_flags ((type), G_TYPE_FLAG_DERIVABLE))
bool G_TYPE_IS_DEEP_DERIVABLE(GType type) =>      (g_type_test_flags ((type), G_TYPE_FLAG_DEEP_DERIVABLE))
bool G_TYPE_IS_ABSTRACT(GType type) =>            (g_type_test_flags ((type), G_TYPE_FLAG_ABSTRACT))
bool G_TYPE_IS_VALUE_ABSTRACT(GType type) =>      (g_type_test_flags ((type), G_TYPE_FLAG_VALUE_ABSTRACT))
bool G_TYPE_IS_VALUE_TYPE(GType type) =>          (g_type_check_is_value_type (type))
bool G_TYPE_HAS_VALUE_TABLE(GType type) =>        (g_type_value_table_peek (type) != NULL)
bool G_TYPE_IS_FINAL(GType type) =>               (g_type_test_flags ((type), G_TYPE_FLAG_FINAL)) GLIB_AVAILABLE_MACRO_IN_2_70
