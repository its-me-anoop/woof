import 'package:flutter/material.dart';
import 'package:woof/helper/demo_values.dart';
import 'package:woof/view/presentation/themes.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6 / 3,
      child: Card(
        elevation: 2,
        child: Container(
            margin: const EdgeInsets.all(4),
            padding: const EdgeInsets.all(4),
            child: Column(children: [
              _Post(),
              Divider(
                color: Colors.grey,
              ),
              _PostDetails()
            ])),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  const _Post();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        children: [_PostImage(), _PostTitleAndSummary()],
      ),
    );
  }
}

class _PostTitleAndSummary extends StatelessWidget {
  const _PostTitleAndSummary();

  @override
  Widget build(BuildContext context) {
    final TextStyle? titleTheme = TextThemes.title;
    final TextStyle? summaryTheme = TextThemes.body;
    final String title = DemoValues.postTitle;
    final String summary = DemoValues.postSummary;

    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleTheme,
          ),
          Text(
            summary,
            style: summaryTheme,
          )
        ],
      ),
    );
  }
}

class _PostImage extends StatelessWidget {
  const _PostImage();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Image.asset(DemoValues.postImage),
    );
  }
}

class _PostDetails extends StatelessWidget {
  const _PostDetails();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [_UserImage(), _UserNameAndEmail(), _PostTimeStamp()],
    );
  }
}

class _UserNameAndEmail extends StatelessWidget {
  const _UserNameAndEmail();

  @override
  Widget build(BuildContext context) {
    final TextStyle? nameTheme = TextThemes.subtitle;
    final TextStyle? emailTheme = TextThemes.body;

    return Expanded(
      flex: 7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DemoValues.userName,
            style: nameTheme,
          ),
          Text(
            DemoValues.userEmail,
            style: emailTheme,
          )
        ],
      ),
    );
  }
}

class _UserImage extends StatelessWidget {
  const _UserImage();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: CircleAvatar(backgroundImage: AssetImage(DemoValues.userImage)),
    );
  }
}

class _PostTimeStamp extends StatelessWidget {
  const _PostTimeStamp();

  @override
  Widget build(BuildContext context) {
    final TextStyle? timeTheme = TextThemes.dateStyle;

    return Expanded(
      flex: 2,
      child: Text(
        DemoValues.postTime,
        style: timeTheme,
      ),
    );
  }
}
