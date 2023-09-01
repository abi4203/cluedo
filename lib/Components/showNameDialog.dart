import 'package:flutter/material.dart';

void showNameDialog(BuildContext context) {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _error = true;
  String _username = '';
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
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
                    _error = false;

                    return 'User name is required';
                  }
                  _error = true;
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
  );
}
