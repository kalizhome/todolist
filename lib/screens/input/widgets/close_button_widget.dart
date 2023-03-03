import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 00,
        right: 0,
        child: SizedBox(
          width: 50,
          height: 50,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              child: Icon(
                Icons.close,
                size: 30,
              ),
            ),
          ),
        ));
  }
}
