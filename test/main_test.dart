import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:woof/view/home_page.dart';
import 'package:woof/main.dart';

void main() {
  testWidgets('Testing Woof widget', (WidgetTester tester) async {
    await tester.pumpWidget(Woof());

    //Test: MaterialApp widget presence
    expect(find.byType(MaterialApp), findsOneWidget);

    //Test: HomePage widget presence
    expect(find.byType(HomePage), findsOneWidget);
  });
}
