import 'package:flutter/material.dart';
import 'package:learns_input_state_list/screens/home/home_screen.dart';
import 'package:learns_input_state_list/screens/input/input_screen.dart';
import 'package:learns_input_state_list/states/input_state.dart';
import 'package:provider/provider.dart';

void main() {
  // ignore: todo
  // TODO: Để sử dụng được InputState thì phải cài package provider và bọc MyApp bằng widget ChangeNotifierProvider
  // InputState được định nghĩa và import ở trên
  runApp(ChangeNotifierProvider(
    create: (_) => InputState(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: todo
      // TODO: Home định nghĩa screen chính khi app được mở lên
      // Ở đây khi người dùng mở app lên sẽ hiện HomeScreenWidget đầu tiên
      // HomeScreenWidget được import ở trên, trong thư mục screens/home
      home: HomeScreenWidget(),
    );
  }
}
