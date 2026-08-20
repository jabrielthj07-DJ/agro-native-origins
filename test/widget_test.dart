import 'package:flutter_test/flutter_test.dart';
import 'package:agro_native_origins/main.dart';

void main() {
  testWidgets('La aplicación inicia correctamente', (WidgetTester tester) async {
    await tester.pumpWidget(const AgroNativeOriginsApp());

    expect(find.text('Agro Native Origins'), findsOneWidget);
  });
}