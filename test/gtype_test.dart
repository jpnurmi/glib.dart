import 'package:glib/glib.dart';
import 'package:test/test.dart';

void main() {
  test('fundamental', () {
    expect(G_TYPE_IS_ABSTRACT(G_TYPE_INT), isFalse);
  });
}
