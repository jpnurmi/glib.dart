import 'gtimezone.dart';
import 'gtype.dart';
import 'gutils.dart';
import 'guuid.dart';
import 'gversion.dart';

export 'stub.dart' if (dart.library.ffi) 'ffi/libglib.dart';

abstract class GLibInterface
    with GTimeZoneMixin, GTypeMixin, GUtilsMixin, GUuidMixin, GVersionMixin {}
