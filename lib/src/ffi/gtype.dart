import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart' as ffi;

import '../gtype.dart';
import 'ffi_x.dart';
import 'libglib.dart';

mixin GTypeFfiMixin on GTypeMixin {
  @override
  String? g_type_name(int type) => lib.g_type_name(type).toDartString();
  @override
  int g_type_qname(int type) => lib.g_type_qname(type);
  @override
  int g_type_from_name(String name) {
    return ffi.using((arena) => lib.g_type_from_name(name.toCString(arena)));
  }

  @override
  int g_type_parent(int type) => lib.g_type_parent(type);
  @override
  int g_type_depth(int type) => lib.g_type_depth(type);
  @override
  int g_type_next_base(int leaf_type, int root_type) =>
      lib.g_type_next_base(leaf_type, root_type);
  @override
  int g_type_is_a(int type, int is_a_type) => lib.g_type_is_a(type, is_a_type);
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
  @override
  List<int> g_type_children(int type) {
    return ffi.using((arena) {
      final n = arena<ffi.UnsignedInt>();
      final ptr = lib.g_type_children(type, n);
      final children = <int>[
        for (var i = 0; ptr.elementAt(i) != ffi.nullptr; ++i)
          ptr.elementAt(i).value,
      ];
      lib.g_free(ptr.cast());
      return children;
    });
  }

  @override
  List<int> g_type_interfaces(int type) {
    return ffi.using((arena) {
      final n = arena<ffi.UnsignedInt>();
      final ptr = lib.g_type_interfaces(type, n);
      final interfaces = <int>[
        for (var i = 0; ptr.elementAt(i) != ffi.nullptr; ++i)
          ptr.elementAt(i).value,
      ];
      lib.g_free(ptr.cast());
      return interfaces;
    });
  }

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
  // g_type_ensure
  // g_type_get_type_registration_serial
  // g_type_get_plugin
  // g_type_interface_get_plugin
  // g_type_fundamental_next
  @override
  int g_type_fundamental(int type) => lib.g_type_fundamental(type);
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
  @override
  int g_type_check_is_value_type(int type) =>
      lib.g_type_check_is_value_type(type);
  // g_type_check_value
  // g_type_check_value_holds
  @override
  int g_type_test_flags(int type, int flags) =>
      lib.g_type_test_flags(type, flags);
  // g_type_name_from_instance
  // g_type_name_from_class
}
