import 'package:calculator/provider/calculatorprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'components/customcontainer.dart';

class calculator extends StatefulWidget {
  calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  @override
  Widget build(BuildContext context) {
    print('build');
    // Provider.of<CalculatorProvider>(context, listen: false);
    return Scaffold(
      body: Consumer<CalculatorProvider>(
        builder: (context, provider, child) {
          return Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        provider.userinput.toString(),
                        // provider.userData.toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Text(
                      provider.getResult.toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        customcontainer(
                          text: 'AC',
                          color: Colors.grey,
                          onpress: () {
                            print('Ac click');
                            provider.userinput = '';
                            // provider.result = '';
                            provider.getResult('');
                            // setState(() {});
                          },
                        ),
                        customcontainer(
                          text: '+/-',
                          color: Colors.grey,
                          onpress: () {},
                        ),
                        customcontainer(
                          text: '%',
                          color: Colors.grey,
                          onpress: () {
                            provider.userinput += '%';
                          },
                        ),
                        customcontainer(
                          text: '/',
                          color: Colors.orange,
                          onpress: () {
                            provider.userinput += '/';
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        customcontainer(
                          text: '7',
                          color: Colors.grey,
                          onpress: () {
                            // provider.userinput += '7';
                            provider.setUserInput(provider.userinput += '7');
                            debugPrint(
                                'Value from provider: ${provider.userinput.toString()}');
                            // print(provider.userinput.toString());
                            // setState(() {});
                          },
                        ),
                        customcontainer(
                          text: '8',
                          color: Colors.grey,
                          onpress: () {
                            provider.userinput += '8';
                            // setState(() {});
                            //
                          },
                        ),
                        customcontainer(
                          text: '9',
                          color: Colors.grey,
                          onpress: () {
                            provider.userinput += '9';
                          },
                        ),
                        customcontainer(
                          text: 'X',
                          color: Colors.orange,
                          onpress: () {
                            provider.userinput += 'x';
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        customcontainer(
                          text: '4',
                          color: Colors.grey,
                          onpress: () {
                            provider.userinput += '4';
                          },
                        ),
                        customcontainer(
                          text: '5',
                          color: Colors.grey,
                          onpress: () {
                            provider.userinput += '5';
                          },
                        ),
                        customcontainer(
                          text: '6',
                          color: Colors.grey,
                          onpress: () {
                            provider.userinput += '6';
                          },
                        ),
                        customcontainer(
                          text: '-',
                          color: Colors.orange,
                          onpress: () {
                            provider.userinput += '-';
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        customcontainer(
                          text: '1',
                          color: Colors.grey,
                          onpress: () {
                            provider.userinput += '1';
                          },
                        ),
                        customcontainer(
                          text: '2',
                          color: Colors.grey,
                          onpress: () {
                            provider.userinput += '2';
                          },
                        ),
                        customcontainer(
                          text: '3',
                          color: Colors.grey,
                          onpress: () {
                            provider.userinput += '3';
                          },
                        ),
                        customcontainer(
                          text: '+',
                          color: Colors.orange,
                          onpress: () {
                            provider.userinput += '+';
                            setState(() {});
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        customcontainer(
                          text: '0',
                          color: Colors.grey,
                          onpress: () {
                            provider.userinput += '0';
                          },
                        ),
                        customcontainer(
                          text: '.',
                          color: Colors.grey,
                          onpress: () {
                            provider.userinput += '.';
                          },
                        ),
                        customcontainer(
                          text: 'DEL',
                          color: Colors.grey,
                          onpress: () {
                            provider.userinput
                                .substring(0, provider.userinput.length - 1);
                          },
                        ),
                        customcontainer(
                          text: '=',
                          color: Colors.orange,
                          onpress: () {
                            provider.cal().toString();
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
