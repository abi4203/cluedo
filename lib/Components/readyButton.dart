import 'package:flutter/material.dart';

class ReadyButton extends StatefulWidget {
  final ValueChanged<bool> onReadyChanged;

  const ReadyButton({
    Key? key,
    required this.onReadyChanged,
  }) : super(key: key);

  @override
  State<ReadyButton> createState() => _ReadyButtonState();
}

class _ReadyButtonState extends State<ReadyButton> {
  bool _ready = false;
  final ButtonStyle commonButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.black87,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    minimumSize: Size(80, 25),
    maximumSize: Size(110, 37),
    padding: EdgeInsets.all(12),
  );
  final TextStyle customTextSyle = TextStyle(fontSize: 12, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return _ready
        ? FilledButton(
            child: Text(
              'Ready',
            ),
            onPressed: () {
              setState(() {
                _ready = false;
              });
               widget.onReadyChanged(_ready);
            },
          )
        : OutlinedButton(
            child: Text(
              'Not Ready',
            ),
            onPressed: () {
              setState(() {
                _ready = true;
              });
               widget.onReadyChanged(_ready);
            },
          );
  }
}
