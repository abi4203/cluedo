import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _error = true;
  String _username = '';

//   OutlineInputBorder customBorder = OutlineInputBorder(
//   borderRadius: BorderRadius.circular(20),
//   borderSide: BorderSide(color: Colors.grey, width: 2),
// );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
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
                        });
                        return null;
                      },
                      onSaved: (value) {
                        _username = value!;
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
                          Navigator.pushNamed(context, '/lobby',arguments: _username);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



//SafeArea

//Gestuer Detector
//Inkwell

//TextButton
//OutlinedButton
//ElevatedButton
//Icon(Icons.home)
//IconButton
//ElevatedButtonIcon
//Image.asset()
//Image(image: AssetImage())

//sized box {spacebetween  the widgets}
//Divider

//cross axis main axis
//row cloumn children
//Expand flex {like flex in css}
//grid
//ListView ListTitle
//GridView.Count cross axis.count

//Container and padding widget
//EdgeInsets.fromLTRB(10,10,10,10)

//circle avatar
//map .tolist
//App bar scroll
//silverAppbar
//Draggablescrollablesheet
// flow

//card inkWell

//flutter native app flash

//popmenu button
//Dialogue

//RawMaterialButton
//postioned()
//stock button
//Snack bar

