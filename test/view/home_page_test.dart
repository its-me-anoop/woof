import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:woof/view/home_page.dart';

void main() {
  testWidgets('Testing HomePage widget', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));

    //Test: Scaffold Widget
    expect(find.byType(Scaffold), findsOneWidget);

    //Test: AppBar Widget
    expect(find.byType(AppBar), findsOneWidget);

    //Test: 2 Text Widgets
    expect(find.byType(Text), findsNWidgets(2));

    //Test: "Woof" text
    expect(find.text("Woof"), findsOneWidget);

    //Test: "Hello World" text
    expect(find.text("Hello World"), findsOneWidget);
  });
}
