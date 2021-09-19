import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final factor;
  final Color shade;
  const LoginButton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.factor,
    required this.shade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width*factor,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.white, width: 2),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: shade.withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 10,
                  spreadRadius: 4)
            ],
            color: shade.withOpacity(0.8)),
        child: Text(
          title,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }

}
