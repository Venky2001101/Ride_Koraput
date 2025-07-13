import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ride_koraput/extension/box_extension.dart';
import 'package:ride_koraput/extension/context_ext.dart';

class FormInputScreen extends StatefulWidget {
  const FormInputScreen({super.key});

  @override
  State<FormInputScreen> createState() => _FormInputScreenState();
}

class _FormInputScreenState extends State<FormInputScreen> {
  // int answer = 0;
  // String input = "";
  TextEditingController firstNameTextEditingController =
      TextEditingController();
  final regExp = RegExp(
    r'[0-9\^$*.\[\]{}()?\-"!@#%&/\,><:;_~`+=' // <-- Notice the escaped symbols
    "'" // <-- ' is added to the expression
    ']',
  );

  String input2 = "";
  TextEditingController lastNameTextEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // String input3 = "";
  TextEditingController mailTextEditingController = TextEditingController();
  RegExp emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
  // final mailRegExp = RegExp(
  //   "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}.\$"
  // );

  OutlineInputBorder border(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(20),
    );
  }

  // void add() {
  //   int num1 = int.parse(firstNameTextEditingController.text);
  //   int num2 = int.parse(lastNameTextEditingController.text);
  //   answer = num1 + num2;
  //   setState(() {});
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // firstNameTextEditingController.addListener(() {
    //   input = firstNameTextEditingController.text;
    //   setState(() {});
    // });

    // lastNameTextEditingController.addListener(() {
    //   input2 = lastNameTextEditingController.text;
    //   setState(() {});
    // });

    // mailTextEditingController.addListener(() {
    //   input3 = mailTextEditingController.text;
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    firstNameTextEditingController.dispose();
    lastNameTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Login screen")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: firstNameTextEditingController,

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This feild Can't be empty";
                    }
                    if (!value.contains(regExp)) {
                      return "Only Alphabets are expected";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    // input = value;
                    // log("text is $input");
                    setState(() {});
                  },
                  onFieldSubmitted: (value) {
                    log("value is $value");
                  },
                  minLines: 1,

                  // keyboardType: TextInputType.name,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // prefix: Icon(Icons.mail),
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.lightBlueAccent,
                    // hint: Text("Email"),
                    labelText: "First Name",
                    labelStyle: TextStyle(color: Colors.red),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: border(Colors.green),

                    border: border(Colors.blueAccent),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field can't be empty";
                    }
                    if (value.length < 3) {
                      return "last name need to be more then three alphabet";
                    }
                    return null;
                  },
                  controller: lastNameTextEditingController,
                  onChanged: (value) {
                    debugPrint(value);
                  },
                  //keyboardType: TextInputType.name,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.lightBlueAccent,
                    label: Text("Last Name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    // bool isValidEmail(String email) {}
                    if (value == null || value.isEmpty) {
                      return "This field can't be empty";
                    }
                    if (!value.contains(emailRegex)) {
                      return "Incorrect email Address";
                    }
                  },
                  controller: mailTextEditingController,
                  onChanged: (value) {
                    debugPrint(value);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    prefixIconColor: Colors.lightBlueAccent,
                    label: Text("Mail Id"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.call),
                    prefixIconColor: Colors.lightBlueAccent,
                    label: Text("Phone Number"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                20.hBox,
                Text(""),
                //Text("$answer"),
                20.hBox,
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    // add();

                    debugPrint("from Iconbutton");
                  },
                  // onLongPress: () {
                  //   add();
                  // },
                ),
                TextButton(
                  onPressed: () {
                    debugPrint("From Text button");
                  },
                  child: Text("Tap me"),
                ),
                ElevatedButton(
                  style: ButtonStyle().copyWith(
                    minimumSize: WidgetStatePropertyAll<Size>(
                      Size(context.width, 60),
                    ),
                  ),

                  onPressed: () {
                    log(firstNameTextEditingController.text);

                    if (_formKey.currentState?.validate() ?? false) {
                      // add();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green,
                          content: Text(
                            "firstname and last name are validated",
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          content: Text(
                            "Firstname, Lastname  & email addres are not validated",
                          ),
                        ),
                      );
                    }
                  },
                  child: Text("Eleveted Button"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
