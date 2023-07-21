import 'package:flutter/material.dart';

class InputComponent extends StatelessWidget {
  final String labelText;
  final IconData? icon;
  const InputComponent({required this.labelText, this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0,),
      child: SizedBox(
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(labelText,textAlign: TextAlign.left,),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // 내용과 입력 필드 경계 사이의 간격 조정
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
                suffixIcon: Icon(icon),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
