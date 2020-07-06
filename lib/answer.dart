import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './assests/photo.jpg';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: CupertinoButton(
        color: Colors.red,
        // textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
     new Image.asset(('lib/assests/photo.jpg'),
    ),
    );
  }
}
