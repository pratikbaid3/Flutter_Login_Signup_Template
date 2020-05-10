import 'package:flutter/material.dart';

class kReusableInputTextField extends StatelessWidget {
  kReusableInputTextField(
      {@required this.columnHeader,
      @required this.hintText,
      @required this.textFieldIcon,
      @required this.onChangeCallback});

  final String columnHeader;
  final String hintText;
  final Icon textFieldIcon;
  final Function onChangeCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          columnHeader,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF6CA8F1),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: TextFormField(
              onChanged: onChangeCallback,
              cursorColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 20.0,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: textFieldIcon,
                ),
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.white54),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class kReusablePasswordField extends StatelessWidget {
  kReusablePasswordField(
      {@required this.textFieldIcon,
      @required this.hintText,
      @required this.columnHeader,
      @required this.onChangeCallback});
  final String columnHeader;
  final String hintText;
  final Icon textFieldIcon;
  final Function onChangeCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          columnHeader,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF6CA8F1),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: TextFormField(
              onChanged: onChangeCallback,
              cursorColor: Colors.white,
              style: TextStyle(
                color: Colors.white,
              ),
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 20.0,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: textFieldIcon,
                ),
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.white54),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
