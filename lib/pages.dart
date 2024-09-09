import 'package:flutter/material.dart';

class Materialpage extends StatefulWidget {
  const Materialpage({super.key});

  @override
  State<Materialpage> createState() => _MaterialpageState();
}

class _MaterialpageState extends State<Materialpage> {

  double result=0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final border = OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.blue,
          width: 2,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(5));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency converter'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
          (result!=0 ? result.toStringAsFixed(2) : result.toStringAsFixed(1)),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 100,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: ('Enter the Amount in USA Dollar'),
                prefixIcon: const Icon(Icons.currency_exchange),
                filled: true,
                fillColor: Colors.blue[50],
                focusedBorder: border,
                enabledBorder: border,
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  result= double.parse(textEditingController.text)*83.92;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
                minimumSize:const Size(double.infinity, 15),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: const Text('Convert'),
            ),
          ),
        ],
      ),
    );
  }
}