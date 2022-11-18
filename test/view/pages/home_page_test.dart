import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:woof/view/pages/home_page.dart';
import 'package:woof/view/widgets/post_card.dart';

void main() {
  testWidgets('Testing HomePage widget', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));

    //Test: Scaffold Widget
    expect(find.byType(Scaffold), findsOneWidget);

    //Test: AppBar Widget
    expect(find.byType(AppBar), findsOneWidget);

    //Test: "Woof" text
    expect(find.text("Woof"), findsOneWidget);

    //Test: ListView
    expect(find.byType(ListView), findsOneWidget);

    //Test: PostCard
    expect(find.byType(PostCard), findsWidgets);
  });
}
