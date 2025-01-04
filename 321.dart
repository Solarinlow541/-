import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  final TextEditingController _txt = TextEditingController(text: '0');

  Widget createButton(String btnText) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey[500]!,
            width: 1,
          ),
        ),
        margin: const EdgeInsets.all(0),
        child: Text(
          btnText,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff81efef),
      appBar: AppBar(
        title: const Text(
          "Flutter Calculator",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: _txt,
                    readOnly: true,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.end,
                    maxLength: 18,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      counterText: '',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1)),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: createButton("C"),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                padding: const EdgeInsets.all(0),
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
                children: [
                  createButton('1'),
                  createButton('2'),
                  createButton('3'),
                  createButton('/'),
                  createButton('4'),
                  createButton('5'),
                  createButton('6'),
                  createButton('*'),
                  createButton('7'),
                  createButton('8'),
                  createButton('9'),
                  createButton('-'),
                  createButton('0'),
                  createButton('.'),
                  createButton('='),
                  createButton('+'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CalculatorApp(),
  ));
}
