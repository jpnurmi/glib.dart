import 'glib.dart';
import 'gmacros.dart';
import 'gquark.dart';
import 'gtypes.dart';

typedef GType = int;

enum GTypeFundamentalFlags {
  G_TYPE_FLAG_CLASSED(1 << 0),
  G_TYPE_FLAG_INSTANTIATABLE(1 << 1),
  G_TYPE_FLAG_DERIVABLE(1 << 2),
  G_TYPE_FLAG_DEEP_DERIVABLE(1 << 3);

  const GTypeFundamentalFlags(this.value);
  final int value;
}

const G_TYPE_FLAG_CLASSED = GTypeFundamentalFlags.G_TYPE_FLAG_CLASSED;
const G_TYPE_FLAG_INSTANTIATABLE =
    GTypeFundamentalFlags.G_TYPE_FLAG_INSTANTIATABLE;
const G_TYPE_FLAG_DERIVABLE = GTypeFundamentalFlags.G_TYPE_FLAG_DERIVABLE;
const G_TYPE_FLAG_DEEP_DERIVABLE =
    GTypeFundamentalFlags.G_TYPE_FLAG_DEEP_DERIVABLE;

enum GTypeFlags {
  G_TYPE_FLAG_ABSTRACT(1 << 4),
  G_TYPE_FLAG_VALUE_ABSTRACT(1 << 5),
  G_TYPE_FLAG_FINAL(1 << 6);

  const GTypeFlags(this.value);
  final int value;
}

const G_TYPE_FLAG_ABSTRACT = GTypeFlags.G_TYPE_FLAG_ABSTRACT;
const G_TYPE_FLAG_VALUE_ABSTRACT = GTypeFlags.G_TYPE_FLAG_VALUE_ABSTRACT;
const G_TYPE_FLAG_FINAL = GTypeFlags.G_TYPE_FLAG_FINAL;

bool G_TYPE_IS_FUNDAMENTAL(GType type) => type <= G_TYPE_FUNDAMENTAL_MAX;
bool G_TYPE_IS_DERIVED(GType type) => type > G_TYPE_FUNDAMENTAL_MAX;
bool G_TYPE_IS_INTERFACE(GType type) =>
    G_TYPE_FUNDAMENTAL(type) == G_TYPE_INTERFACE;
bool G_TYPE_IS_CLASSED(GType type) =>
    glib.g_type_test_flags(type, G_TYPE_FLAG_CLASSED.value) != 0;
bool G_TYPE_IS_INSTANTIATABLE(GType type) =>
    glib.g_type_test_flags(type, G_TYPE_FLAG_INSTANTIATABLE.value) != 0;
bool G_TYPE_IS_DERIVABLE(GType type) =>
    glib.g_type_test_flags(type, G_TYPE_FLAG_DERIVABLE.value) != 0;
bool G_TYPE_IS_DEEP_DERIVABLE(GType type) =>
    glib.g_type_test_flags(type, G_TYPE_FLAG_DEEP_DERIVABLE.value) != 0;
bool G_TYPE_IS_ABSTRACT(GType type) =>
    glib.g_type_test_flags(type, G_TYPE_FLAG_ABSTRACT.value) != 0;
bool G_TYPE_IS_VALUE_ABSTRACT(GType type) =>
    glib.g_type_test_flags(type, G_TYPE_FLAG_VALUE_ABSTRACT.value) != 0;
bool G_TYPE_IS_VALUE_TYPE(GType type) =>
    glib.g_type_check_is_value_type(type) != 0;
// G_TYPE_HAS_VALUE_TABLE(GType type)
bool G_TYPE_IS_FINAL(GType type) =>
    glib.g_type_test_flags(type, G_TYPE_FLAG_FINAL.value) != 0;

GType G_TYPE_FUNDAMENTAL(GType type) => glib.g_type_fundamental(type);

String? g_type_name(GType type) => glib.g_type_name(type);
GQuark g_type_qname(GType type) => glib.g_type_qname(type);
GType g_type_from_name(String name) => glib.g_type_from_name(name);
GType g_type_parent(GType type) => glib.g_type_parent(type);
guint g_type_depth(GType type) => glib.g_type_depth(type);
GType g_type_next_base(GType leaf_type, GType root_type) =>
    glib.g_type_next_base(leaf_type, root_type);
bool g_type_is_a(GType type, GType is_a_type) =>
    glib.g_type_is_a(type, is_a_type) != 0;
List<GType> g_type_children(GType type) => glib.g_type_children(type);
List<GType> g_type_interfaces(GType type) => glib.g_type_interfaces(type);
GType g_type_fundamental(GType type) => glib.g_type_fundamental(type);
GType g_type_check_is_value_type(GType type) =>
    glib.g_type_check_is_value_type(type);
GType g_type_test_flags(GType type, int flags) =>
    glib.g_type_test_flags(type, flags);

mixin GTypeMixin {
  String? g_type_name(int type);
  int g_type_qname(int type);
  int g_type_from_name(String name);
  int g_type_parent(int type);
  int g_type_depth(int type);
  int g_type_next_base(int leaf_type, int root_type);
  int g_type_is_a(int type, int is_a_type);
  // g_type_class_ref
  // g_type_class_peek
  // g_type_class_peek_static
  // g_type_class_unref
  // g_type_class_peek_parent
  // g_type_interface_peek
  // g_type_interface_peek_parent
  // g_type_default_interface_ref
  // g_type_default_interface_peek
  // g_type_default_interface_unref
  List<int> g_type_children(int type);
  List<int> g_type_interfaces(int type);
  // g_type_set_qdata
  // g_type_get_qdata
  // g_type_query
  // g_type_get_instance_count
  // g_type_register_static
  // g_type_register_static_simple
  // g_type_register_dynamic
  // g_type_register_fundamental
  // g_type_add_interface_static
  // g_type_add_interface_dynamic
  // g_type_interface_add_prerequisite
  // g_type_interface_prerequisites
  // g_type_interface_instantiatable_prerequisite
  // g_type_class_add_private
  // g_type_add_instance_private
  // g_type_instance_get_private
  // g_type_class_adjust_private_offset
  // g_type_add_class_private
  // g_type_class_get_private
  // g_type_class_get_instance_private_offset
  // g_type_ensure(int type
  // g_type_get_type_registration_serial
  // g_type_get_plugin
  // g_type_interface_get_plugin
  // g_type_fundamental_next(
  int g_type_fundamental(int type);
  // g_type_create_instance
  // g_type_free_instance
  // g_type_add_class_cache_func
  // g_type_remove_class_cache_func
  // g_type_class_ref_uncached
  // g_type_add_interface_check
  // g_type_remove_interface_check
  // g_type_value_table_peek
  // g_type_check_instance
  // g_type_check_instance_cast
  // g_type_check_instance_is_a
  // g_type_check_instance_is_fundamentally_a
  // g_type_check_class_cast
  // g_type_check_class_is_a
  int g_type_check_is_value_type(int type);
  // g_type_check_value
  // g_type_check_value_holds
  int g_type_test_flags(int type, int flags);
  // g_type_name_from_instance
  // g_type_name_from_class
}
