// import 'package:flutter/material.dart';

// class FormValidation extends StatefulWidget {
//   @override
//   _FormValidationState createState() => _FormValidationState();
// }

// class _FormValidationState extends State<FormValidation> {
//   String _name;
//   String _email;
//   String _password;
//   String _phone;
//   String _url;
//   String _age;

//   Widget _buildName() {
//     return TextFormField(
//       maxLength: 15,
//       keyboardType: TextInputType.text,
//       decoration: InputDecoration(
//         labelText: 'Name',
//       ),
//       validator: (String value) {
//         if (value.isEmpty) {
//           return 'Name is required.';
//         }
//       },
//       onSaved: (String value) {
//         _name = value;
//       },
//     );
//   }

//   Widget _buildEmail() {
//     return TextFormField(
//       decoration: InputDecoration(labelText: 'Email'),
//       validator: (String value) {
//         if (value.isEmpty) {
//           return 'Email is required';
//         }

//         if (!RegExp(
//                 "^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*")
//             .hasMatch(value)) {
//           return 'Enter a valid email address';
//         }

//         // validator has to return something :)
//         return null;
//       },
//       onSaved: (String value) {
//         _email = value;
//       },
//     );
//   }

//   Widget _buildPassword() {
//     return TextFormField(
//       decoration: InputDecoration(labelText: 'Paswword'),
//       keyboardType: TextInputType.visiblePassword,
//       validator: (String value) {
//         if (value.isEmpty) {
//           return 'Password is required';
//         }
//       },
//       onSaved: (String value) {
//         _password = value;
//       },
//     );
//   }

//   Widget _buildPhone() {
//     return TextFormField(
//       decoration: InputDecoration(labelText: 'Phone number'),
//       keyboardType: TextInputType.phone,
//       validator: (String value) {
//         if (value.isEmpty) {
//           return 'Phone number is required';
//         }
//       },
//       onSaved: (String value) {
//         _phone = value;
//       },
//     );
//   }

//   Widget _buildUrl() {
//     return TextFormField(
//       decoration: InputDecoration(labelText: 'URL'),
//       keyboardType: TextInputType.url,
//       validator: (String value) {
//         if (value.isEmpty) {
//           return "URL is required";
//         }
//       },
//       onSaved: (String value) {
//         _url = value;
//       },
//     );
//   }

//   Widget _buildAge() {
//     return TextFormField(
//       decoration: InputDecoration(labelText: 'Age'),
//       keyboardType: TextInputType.number,
//       validator: (String value) {
//         int age = int.tryParse(value);
//         if (age == null || age <= 0) {
//           return 'Age must be greater then 0';
//         }
//       },
//       onSaved: (String value) {
//         _age = value;
//       },
//     );
//   }

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Form Validation Demo")),
//       body: SingleChildScrollView(
//         child: Container(
//           margin: EdgeInsets.all(16),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 _buildName(),
//                 _buildEmail(),
//                 _buildPassword(),
//                 _buildPhone(),
//                 _buildUrl(),
//                 _buildAge(),
//                 SizedBox(height: 50),
//                 RaisedButton(
//                     child: Text(
//                       'Save',
//                       style: TextStyle(color: Colors.blue, fontSize: 16),
//                     ),
//                     onPressed: () {
//                       if (!_formKey.currentState.validate()) {
//                         return;
//                       }

//                       _formKey.currentState.save();

//                       print(_name);
//                       print(_email);
//                       print(_password);
//                       print(_phone);
//                       print(_url);
//                       print(_age);
//                     })
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
