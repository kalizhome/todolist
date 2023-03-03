import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learns_input_state_list/screens/input/widgets/close_button_widget.dart';
import 'package:learns_input_state_list/states/input_state.dart';
import 'package:provider/provider.dart';

class InputScreenWidget extends StatefulWidget {
  const InputScreenWidget({super.key});

  @override
  State<InputScreenWidget> createState() => _InputScreenWidgetState();
}

class _InputScreenWidgetState extends State<InputScreenWidget> {
  // ignore: todo
  // TODO: khai báo biến _input để lưu tạm thời input do user nhập vào
  String _input = '';
  @override
  Widget build(BuildContext context) {
    final inputState = Provider.of<InputState>(context);
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
          child: Stack(children: [
            Column(
              children: [
                SizedBox(
                  height: 300,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    onChanged: (value) {
                      // ignore: todo
                      // TODO: bắt sự kiện nhập vào của user và lưu tạm thời vào biến _input
                      setState(() {
                        _input = value;
                      });
                    },
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                        hintText: "Enter your task", border: InputBorder.none),
                  ),
                ),
              ],
            ),
            CloseButtonWidget()
          ]),
        ),
        floatingActionButton: FloatingActionButton.extended(
          // TODO: Khi user nhấn nút create thì lưu giá trị nhập vào vào inputState
          // lib/states/input_state có khai báo hàm addUserInput
          // đồng thời chuyển về screen trước đó
          onPressed: () {
            inputState.addUserInput(_input);
            Navigator.pop(context);
          },
          label: Text("Create"),
          icon: Icon(Icons.create),
        ));
  }
}
