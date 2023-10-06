import 'package:flutter/material.dart';

class GuessButton extends StatefulWidget {
  const GuessButton({Key? key}) : super(key: key);

  @override
  State<GuessButton> createState() => _GuessButtonState();
}

class _GuessButtonState extends State<GuessButton> {
  final List<String> entries = <String>['Who', 'What', 'Where'];
  final List<List<String>> items = [
    [
      'Proffesor Plum',
      'Mrs. White',
      'Miss Scarlet',
      'Mr.Green',
      'Colonel Mustard',
      'Mrs. Peacock'
    ],
    ['Rope', 'Dagger', 'Wrench', 'Pistol', 'Candlestick', 'Leadpipe'],
    [
      'Study Room',
      'Kitchen',
      'Ballroom',
      'Hall',
      'Billiard',
      'Conservatory',
      'Dinning Room',
      'Library',
      'Lounge'
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Take a guess'),
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          // contentPadding: EdgeInsets.all(16.0),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          icon: IconButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            icon: Icon(
              Icons.close_rounded,
              color: Colors.white,
            ),
          ),
          content: ListView.builder(
            itemCount: entries.length,
            itemBuilder: (context, index) {
              return Container(
                // height: ,
                width: 210,
                margin: EdgeInsetsDirectional.only(bottom: 10),
                // padding: EdgeInsets.all(10),
                child: DropdownButtonFormField(
                  hint: Text(entries[index]),
                  dropdownColor: const Color.fromARGB(255, 253, 253, 253),
                  items: items[index].map((String items) {
                    return DropdownMenuItem<String>(
                      value: items,
                      child: Text(items),
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
              );
            },
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'FINAL SUSPECT'),
              child: const Text('FINAL SUSPECT'),
            ),
            SizedBox(height: 20),
            // suspect
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('SUSPECT'),
            ),
            SizedBox(height: 10),
          ],
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
