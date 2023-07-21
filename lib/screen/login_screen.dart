import 'package:flutter/material.dart';

import '../component/input_component.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Log in'),
          InputComponent(labelText: '아이디',),
          InputComponent(labelText: '비밀번호',icon: Icons.visibility_off,),
          TextButton(
            onPressed: () {},
            child: Text('Forgot password?'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Log in'),
          ),
          Row(
            children: [
              Divider(
                height: 1,
                thickness: 1,
              ),
              Text('Or Login With'),
              Divider(
                height: 1,
                thickness: 1,
              ),
            ],
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {}, child: Image.asset('asset/img/flogo.png')),
              OutlinedButton(
                  onPressed: () {}, child: Image.asset('asset/img/glogo.png')),
              OutlinedButton(
                  onPressed: () {}, child: Image.asset('asset/img/flogo.png'))
            ],
          ),
          Row(
            children: [
              Text('Don\'t have an account?'),
              TextButton(onPressed: (){}, child: Text('Sign up')),
            ],
          )
        ],
      ),
    );
  }
}
