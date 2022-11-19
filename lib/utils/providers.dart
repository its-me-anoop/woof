import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:woof/view_models/conversation_view_model.dart';
import 'package:woof/view_models/edit_profile_view_model.dart';
import 'package:woof/view_models/login_view_model.dart';
import 'package:woof/view_models/posts_view_model.dart';
import 'package:woof/view_models/register_view_model.dart';
import 'package:woof/view_models/status_view_model.dart';
import 'package:woof/view_models/theme_view_model.dart';
import 'package:woof/view_models/user_view_model.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => RegisterViewModel()),
  ChangeNotifierProvider(create: (_) => LoginViewModel()),
  ChangeNotifierProvider(create: (_) => PostsViewModel()),
  ChangeNotifierProvider(create: (_) => EditProfileViewModel()),
  ChangeNotifierProvider(create: (_) => ConversationViewModel()),
  ChangeNotifierProvider(create: (_) => StatusViewModel()),
  ChangeNotifierProvider(create: (_) => UserViewModel()),
  ChangeNotifierProvider(create: (_) => ThemeProvider()),
];
