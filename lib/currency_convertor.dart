// import 'package:flutter/material.dart';

// class CurrencyConverterMaterialPage extends StatefulWidget {
//   const CurrencyConverterMaterialPage({super.key});

//   @override
//   State<CurrencyConverterMaterialPage> createState() =>
//       _CurrencyConverterMaterialPageState();
// }

// class _CurrencyConverterMaterialPageState
//     extends State<CurrencyConverterMaterialPage> {
//   double result = 0;
//   final TextEditingController textEditingController = TextEditingController();

//   void convert() {
//     result = double.parse(textEditingController.text) * 80;
//     setState(() {});
//   }

//   @override
//   void dispose() {
//     textEditingController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final border = OutlineInputBorder(
//       borderSide: const BorderSide(
//         width: 2.0,
//         style: BorderStyle.solid,
//       ),
//       borderRadius: BorderRadius.circular(5),
//     );

//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         elevation: 0,
//         title: const Text('Currency Converter'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
//                 style: const TextStyle(
//                   fontSize: 55,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 255, 255, 255),
//                 ),
//               ),
//               TextField(
//                 controller: textEditingController,
//                 style: const TextStyle(
//                   color: Colors.black,
//                 ),
//                 decoration: InputDecoration(
//                   hintText: 'Please enter the amount in USD',
//                   hintStyle: const TextStyle(
//                     color: Colors.black,
//                   ),
//                   prefixIcon: const Icon(Icons.monetization_on_outlined),
//                   prefixIconColor: Colors.black,
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: border,
//                   enabledBorder: border,
//                 ),
//                 keyboardType: const TextInputType.numberWithOptions(
//                   decimal: true,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               ElevatedButton(
//                 onPressed: convert,
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                   minimumSize: const Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                 ),
//                 child: const Text('Convert'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CurrencyCon extends StatefulWidget {
  const CurrencyCon({super.key});

  @override
  State<CurrencyCon> createState() => _CurrencyC();

}

class _CurrencyC extends State<CurrencyCon> {
  double result = 0.0;
  final TextEditingController textEditingController = TextEditingController();



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
                  child: Text(
                    'PKR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      // backgroundColor: Colors.green
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, bottom: 0, left: 10, right: 10),
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold),
                    keyboardType: const TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    decoration: const InputDecoration(
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
                        onPressed: () {                            
                              setState(() {
                                result = double.parse(textEditingController.text) * 272;
                                print(result);
                              });
                        },
                        style: const ButtonStyle(
                          fixedSize: WidgetStatePropertyAll(Size(150, 50)),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
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

// // class CurrencyConvertor extends StatelessWidget {
// //   const CurrencyConvertor({super.key});
// //   // int result=0;
// //   @override
// //   Widget build(BuildContext context) {
// //     final TextEditingController textEditingController = TextEditingController();
// //     double result = 0.0;
// //     return MaterialApp(
// //         home: Scaffold(
// //             backgroundColor: Colors.blueGrey,
// //             appBar: AppBar(
// //                 title: const Text(
// //                   style: TextStyle(
// //                       color: Color.fromARGB(255, 255, 255, 255),
// //                       fontWeight: FontWeight.bold),
// //                   "PKR to USD Currency Convertor",
// //                 ),
// //                 centerTitle: true,
// //                 backgroundColor: Colors.blueGrey),
// //             body: Center(
// //                 child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Container(
// //                   // color: Colors.green,
// //                   margin: const EdgeInsets.all(10),
// //                   padding: const EdgeInsets.all(4),
// //                   child: Text(
// //                     result.toString(),
// //                     style: const TextStyle(
// //                       fontSize: 30,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.white,
// //                       // backgroundColor: Colors.green
// //                     ),
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.only(
// //                       top: 0, bottom: 0, left: 10, right: 10),
// //                   child: TextField(
// //                     controller: textEditingController,
// //                     style: const TextStyle(
// //                         color: Color.fromARGB(255, 0, 0, 0),
// //                         fontWeight: FontWeight.bold),
// //                     keyboardType: const TextInputType.numberWithOptions(
// //                         signed: true, decimal: true),
// //                     decoration: const InputDecoration(
// //                       // label: Text('PLease enter your PKR amount"',style: TextStyle(color: Colors.white),),
// //                       hintText: 'Please enter your amount in PKR',
// //                       hintStyle:
// //                           TextStyle(color: Colors.blueGrey, fontSize: 12),
// //                       prefixIcon: Icon(
// //                         Icons.monetization_on_outlined,
// //                         color: Colors.blueGrey,
// //                       ),

// //                       filled: true,
// //                       fillColor: Colors.white,
// //                       enabledBorder: OutlineInputBorder(
// //                         borderSide: BorderSide(
// //                             color: Color.fromARGB(255, 0, 0, 0), width: 2),
// //                         borderRadius: BorderRadius.all(Radius.circular(15)),
// //                       ),
// //                       focusedBorder: OutlineInputBorder(
// //                         borderSide: BorderSide(color: Colors.black, width: 2),
// //                         borderRadius: BorderRadius.all(Radius.circular(15)),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Container(
// //                     margin: const EdgeInsets.symmetric(vertical: 10),
// //                     child: ElevatedButton(
// //                         onPressed: () {
// //                           result =
// //                               double.parse(textEditingController.text) * 272;
// //                           print(result);
// //                         },
// //                         style: const ButtonStyle(
// //                           fixedSize: WidgetStatePropertyAll(Size(150, 50)),
// //                           shape: WidgetStatePropertyAll(
// //                             RoundedRectangleBorder(
// //                               borderRadius:
// //                                   BorderRadius.all(Radius.circular(8)),
// //                             ),
// //                           ),
// //                           backgroundColor: WidgetStatePropertyAll(Colors.black),
// //                           foregroundColor: WidgetStatePropertyAll(Colors.white),
// //                         ),
// //                         child: const Text('convert'))),
// //               ],
// //             ))));
// //   }
// // }
