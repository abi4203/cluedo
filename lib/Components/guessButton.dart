import 'package:flutter/material.dart';

class GuessButton extends StatelessWidget {
  const GuessButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Take a guess'),
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          
          // contentPadding: EdgeInsets.all(16.0),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    icon: Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 12),
        
              Container(
                width: 230,
                height: 25,
                child: Text(
                  'Who',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                // height: 30,
                // width: 210,
                // padding: EdgeInsets.all(10),
                child: DropdownButtonFormField(
                  hint: Text('WHO'),
                  items: [
                    'Proffesor Plum',
                    'Mrs. White',
                    'Miss Scarlet',
                    'Mr.Green',
                    'Colonel Mustard',
                    'Mrs. Peacock'
                  ].map((String who) {
                    return DropdownMenuItem<String>(
                      value: who,
                      child: Text(who),
                      
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    // Handle the selected value
                  },
                  elevation: 0,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
        
              ElevatedButton(
                onPressed: () => Navigator.pop(context, 'FINAL SUSPECT'),
                child: const Text('FINAL SUSPECT'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('SUSPECT'),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

// DropdownButtonFormField<String>(
//   items: ['Option 1', 'Option 2', 'Option 3'].map((String value) {
//     return DropdownMenuItem<String>(
//       value: value,
//       child: Text(value),
//     );
//   }).toList(),
//   onChanged: (newValue) {
//     // Handle the selected value
//   },
// )

// InputDecoration commonInputDecoration = InputDecoration(
//   contentPadding: EdgeInsets.all(12),
//   enabledBorder: OutlineInputBorder(
//     borderSide: BorderSide(color: Colors.grey),
//   ),
//   focusedBorder: OutlineInputBorder(
//     borderSide: BorderSide(color: Colors.blue),
//   ),
// );

// // Usage
// TextFormField(
//   decoration: commonInputDecoration.copyWith(
//     labelText: 'Username',
//     hintText: 'Enter your username',
//   ),
// )
