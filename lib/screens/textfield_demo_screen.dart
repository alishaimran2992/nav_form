import 'package:flutter/material.dart';

class TextFieldDemoScreen extends StatefulWidget {
  const TextFieldDemoScreen({super.key});

  @override
  State<TextFieldDemoScreen> createState() => _TextFieldDemoScreenState();
}

class _TextFieldDemoScreenState extends State<TextFieldDemoScreen> {

  bool obscureText = false;
  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();

  String title = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.pinkAccent,
        title:  Text('Navigation form', style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [

          TextField(
            controller: firstController,
            decoration: InputDecoration(
              hintText: 'First Name',
              border: OutlineInputBorder(
              ),
              prefixIcon: const Icon(Icons.person),

            ),
          ),
          TextField(
            controller: lastController,
            decoration: InputDecoration(
              hintText: 'Last Name',
              border: OutlineInputBorder(

              ),
              prefixIcon: const Icon(Icons.person),


            ),
          ),
          TextField(
            // obscure = hide
            obscureText: obscureText,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
              ),
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(onPressed: (){

                setState(() {

                  obscureText = !obscureText;

                  /*
                  E = mc2
                  Error = more code
                   */
                });

              }, icon: Icon( obscureText ? Icons.visibility_off : Icons.visibility),),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            maxLength: 11,
            decoration: InputDecoration(
              hintText: 'Mobile Number',
              border: OutlineInputBorder(

              ),
              prefixIcon: const Icon(Icons.phone),
              prefixIconColor: Colors.green,
            ),
            onChanged: (String text){
              setState(() {
                title = text;
              });
            },

          ),

          ElevatedButton(onPressed: (){

            String firstName = firstController.text.trim();
            String lastName = lastController.text.trim();

          }, child: const Text('Submit'))

        ],),
      ),
    );
  }
}