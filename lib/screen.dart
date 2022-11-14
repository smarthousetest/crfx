import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 400,
        leading: Row(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 15),
                child: Image.asset("assets/back.png")),
            Padding(
              padding: const EdgeInsets.only(left: 6.21),
              child: Text(
                'Transaction History',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF18181C),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(149),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 11, left: 16, right: 16),
                  child: DropdownButton2(
                    isExpanded: true,
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.white,
                      ),
                    ),
                    buttonHeight: 69.5,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                    ),
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 16.69),
                      child: Text("Crypto",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontFamily: 'Segoe UI')),
                    ),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 40),
                        child: DropdownButton2(
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ),
                          buttonDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              width: 0.5,
                              color: Colors.white,
                            ),
                          ),
                          buttonHeight: 49,
                          buttonWidth: 285,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 16.69),
                            child: Text("Crypto Sells",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Segoe UI')),
                          ),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                      Container(
                        height: 49,
                        width: 49,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            width: 0.5,
                            color: Colors.white,
                          ),
                        ),
                        child: Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
      body: Container(
        color: Colors.white,
        child: body(),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 235, 234, 234),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Monday",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Segoe UI"),
                  ),
                )),
          ),
          stock("assets/min.png"),
          stock("assets/min.png"),
          stock("assets/plus.png"),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: stock("assets/min.png"),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 235, 234, 234),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Wednesday",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Segoe UI"),
                  ),
                )),
          ),
          stock("assets/min.png"),
          stock("assets/min.png"),
          stock("assets/plus.png"),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: stock("assets/min.png"),
          ),
        ],
      ),
    );
  }

  Widget stock(String asset) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset(asset),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15),
          child: Column(
            children: [
              Text(
                "Sell DOT",
                style: TextStyle(fontSize: 16, fontFamily: "Segoe UI"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "1/24/2022",
                  style: TextStyle(fontSize: 12, fontFamily: "Segoe UI"),
                ),
              ),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            children: [
              Text(
                "-10.00 DOT",
                style: TextStyle(fontSize: 16, fontFamily: "Segoe UI"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "-189 USD",
                  style: TextStyle(fontSize: 12, fontFamily: "Segoe UI"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
