import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class JoinGame extends StatefulWidget {
  const JoinGame({Key? key}) : super(key: key);

  @override
  _JoinGameState createState() => _JoinGameState();
}

class _JoinGameState extends State<JoinGame> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _error = true;
  String _username = '';
  

//   OutlineInputBorder customBorder = OutlineInputBorder(
//   borderRadius: BorderRadius.circular(20),
//   borderSide: BorderSide(color: Colors.grey, width: 2),
// );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Join Game'),
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          // backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          // shadowColor: Color.fromARGB(0, 0, 0, 0),
          contentPadding: EdgeInsets.all(0.0),
          content: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text('Enter Your Name'),
                ),
                Container(
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        setState(() {
                          _error = false;
                        });
                        return 'User name is required';
                      }
                      setState(() {
                        _error = true;
                        // _userNameEntered = true;
                      });
                      return null;
                    },
                    onSaved: (value) {
                      _username = value!;
                      // _userNameEntered = true;
                    },
                    keyboardType: TextInputType.name,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'NAME',
                      hintStyle: TextStyle(
                        color: _error ? Colors.grey : Colors.red,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                    ),
                  ),
                ),
                Divider(
                  indent: 3,
                  thickness: 2,
                ),
                Container(
                  child: ElevatedButton(
                    child: Text('ENTER'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, navigate to lobby
                        _formKey.currentState!.save();
                        Navigator.pushNamed(context, '/lobby',
                            arguments: _username);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ElevatedButton(
//       style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all<Color>(Color(0xA6FFFFFF)),

//         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//           RoundedRectangleBorder(
//             borderRadius:
//                 BorderRadius.circular(10.0), // Adjust the border radius here
//           ),
//         ),
//       ),
//       onPressed: () {
//         Navigator.pushNamed(context, '/game');
//       },
//       child: Text.rich(
//         TextSpan(
//           style: TextStyle(
//             fontSize: 30,
//             fontFamily: 'Bouncy',
//             letterSpacing: 4.50,
//           ),
//           children: [
//             TextSpan(
//               text: 'J',
//               style: TextStyle(
//                 color: Color(0xFFF2142B),
//               ),
//             ),
//             TextSpan(
//               text: 'oin ',
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//             TextSpan(
//               text: 'G',
//               style: TextStyle(
//                 color: Color(0xFFF2142B),
//               ),
//             ),
//             TextSpan(
//               text: 'ame',
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );