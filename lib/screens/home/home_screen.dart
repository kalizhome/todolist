import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learns_input_state_list/screens/input/input_screen.dart';
import 'package:learns_input_state_list/states/input_state.dart';
import 'package:provider/provider.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: Screen sẽ return về 1 Scaffold
    // Trong Scaffold sẽ có appBar, body,...
    // ignore: todo
    // TODO: Get Input State trước khi sử dụng
    final inputState = Provider.of<InputState>(context);
    final userInputs = inputState.getUserInputs();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: todo
            // TODO: Kiểm tra xem nếu người dùng chưa nhập gì thì hiển thị Please create task
            // Vì userInputs là 1 mảng nên kiểm tra độ dài của mảng.
            // Nếu độ dài mảng bằng 0 là người dùng chưa nhập gì cả.
            children: userInputs.length == 0
                ? [
                    Text(
                      "Please create task",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    )
                  ]
                // ignore: todo
                // TODO: Sử dụng hàm map để duyệt qua phần tử của mảng:
                : userInputs
                    .map((e) => Text(
                          e,
                          style: TextStyle(fontSize: 40),
                        ))
                    .toList(),
            // ignore: todo
            // TODO: Hoặc sử dụng for ... in
            // : [
            //   for (var item in userInputs)
            //     Text(item, style: TextStyle(fontSize: 40))
            // ]
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Todo list app"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // TODO: Navigator để chuyển đến screen InputWidget khi user nhấp vào nút +
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputScreenWidget(),
                ));
          },
          child: Icon(Icons.add)),
    );
  }
}
