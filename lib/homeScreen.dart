// ignore_for_file: file_names, unnecessary_null_comparison

import 'package:bmi/widgets/myScaffold.dart';
import 'package:bmi/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inchController = TextEditingController();
  var result = "";
  var ifEmpty = "";
  var bgcolor;
  // var BMI;
  String? msg;
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      tittle: "BMI CALCULATOR",
      bgColor: bgcolor,
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.cyan[150],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Enter your weight in kg",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 20, bottom: 20, left: 20),
                        child: MyTextField(
                          controller: wtController,
                          labelText: 'Weight',
                          icon: const FaIcon(
                            FontAwesomeIcons.weightScale,
                            size: 25,
                          ),
                        ),
                      ),
                      const Divider(color: Colors.transparent, height: 15),
                      ifEmpty != ""
                          ? Column(
                              children: [
                                Text(
                                  ifEmpty,
                                  style: TextStyle(
                                      color: Colors.red[800],
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(
                                    color: Colors.transparent, height: 20),
                              ],
                            )
                          : const SizedBox(),
                      const Text(
                        "Enter your height in feet and inches",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 10),
                              child: MyTextField(
                                controller: ftController,
                                labelText: 'feet',
                                icon: const FaIcon(
                                  FontAwesomeIcons.arrowsUpDown,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 20),
                              child: MyTextField(
                                controller: inchController,
                                labelText: 'inches',
                                icon: const FaIcon(
                                  FontAwesomeIcons.arrowsUpDown,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(color: Colors.transparent, height: 50),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: ElevatedButton(
                            onPressed: () {
                              var wt = wtController.text.toString();
                              var ft = ftController.text.toString();
                              var inch = inchController.text.toString();
                              if (wt != "" && ft != "" && inch != "") {
                                var w = int.parse(wt);
                                var f = int.parse(ft);
                                var i = int.parse(inch);
                                var totalin = f * 12 + i;
                                var m = (totalin * 2.54) /
                                    100; //firstly we have converted it into cm units by multiplying 2.54 by totalinches, then to meters to calculate BMI
                                var bmi = (w / (m * m)).roundToDouble();

                                if (bmi > 25) {
                                  msg = "OOPS !! you are overwieght";
                                  bgcolor = Colors.red;
                                } else if (bmi < 18) {
                                  msg = "OOPS !! you are underwieght";
                                  bgcolor = Colors.red;
                                } else {
                                  msg =
                                      "Hurrey!! you are Healthy\nKeep it up!!";
                                  bgcolor = Colors.green;
                                }
                                setState(() {
                                  ifEmpty = "";
                                  result = "YOUR BMI IS: $bmi ";
                                });
                              } else {
                                setState(() {
                                  result = "";
                                  ifEmpty =
                                      "Kindly fill all the required fields !!!";
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyan,
                              minimumSize: const Size(200, 50),
                              maximumSize: const Size(300, 75),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              shadowColor: Colors.blueGrey,
                              elevation: 10,
                            ),
                            child: const Text(
                              "Calculate",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                      const Divider(color: Colors.transparent, height: 50),
                      result != ""
                          ? Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 200,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.blueGrey,
                                          blurRadius: 20,
                                          offset: Offset(8, 8))
                                    ],
                                    borderRadius: BorderRadius.circular(30),
                                    color: bgcolor,
                                  ),
                                  child: Stack(
                                    children: [
                                      Text(
                                        "$result\n\n$msg",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  )),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
