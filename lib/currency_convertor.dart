import 'package:flutter/material.dart';

class CurrencyConvertor extends StatelessWidget {
  const CurrencyConvertor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blueGrey,
            appBar: AppBar(
              title: const Text(
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
                "PKR to USD Currency Convertor",
              ),
              centerTitle: true,
              backgroundColor: Colors.blueGrey),
             
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.green,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(4),
                  child: const Text(
                    "0",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      // backgroundColor: Colors.green
                    ),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
                  child: TextField(
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    decoration: InputDecoration(
                      // label: Text('PLease enter your PKR amount"',style: TextStyle(color: Colors.white),),
                      hintText: 'Please enter your amount in PKR',
                      hintStyle:
                          TextStyle(color: Colors.blueGrey, fontSize: 12),
                      prefixIcon: Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.blueGrey,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          fixedSize: WidgetStatePropertyAll(Size(150, 50)),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll(Colors.black),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                        ),
                        child: const Text('convert'))),
              ],
            ))));
  }
}
