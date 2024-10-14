import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});
  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    debugPrint("rebuild");
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Currency Convertor"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 235, 219),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Converted Currency",
              style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'INR ${result!=0? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 251, 255, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Please enter the amount in dollars.",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  enabled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 183, 0, 255),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(25),
                        left: Radius.circular(25),
                      )),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 83.9665;
                  });
                },
                style: const ButtonStyle(
                    elevation: WidgetStatePropertyAll(15),
                    shadowColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 0, 255, 221)),
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    minimumSize:
                        WidgetStatePropertyAll(Size(double.infinity, 50))),
                child: const Text(
                  'convert',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
