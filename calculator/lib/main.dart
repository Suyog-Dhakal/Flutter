import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Calculator",
        theme: ThemeData(
          primaryColor: Colors.green,
        ),
        home: Calculator(),
      ),
    );

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var _operation = ['Addition', 'Subtraction', 'Multiply', 'Divide'];
  var _values = "Addition";
  var _displayText = "";

  TextEditingController textBox1 =
      TextEditingController(); //for clearing the data in textfield box
  TextEditingController textBox2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            //first item
            Text(
              "Choose Operation",
              style: TextStyle(fontSize: 20),
            ),
            Center(
              child: DropdownButton<String>(
                  value: _values,
                  items: _operation.map((String values) {
                    return DropdownMenuItem<String>(
                      value: values,
                      child: Text(values),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _values = value;
                      print('Value changed to $value');
                    });
                    value = _values;
                  }),
            ),
            SizedBox(
              height: 10.0,
            ),
            //second Item
            TextField(
              controller: textBox1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "First number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            //third item
            TextField(
              controller: textBox2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Second number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            //fourth item
            Text(_displayText,
                style: TextStyle(
                  fontSize: 20,
                )),
            //fifth item
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 5.0,
                      ),
                      child: RaisedButton(
                        child: Text('Calculate'),
                        onPressed: () {
                          setState(() {
                            double first = double.parse(
                                textBox1.text); //converting to double
                            double second = double.parse(textBox2.text);

                            switch (_values) {
                              case "Addition":
                                var sum = first + second;
                                _displayText =
                                    "The sum is " + sum.toStringAsFixed(0);
                                break;
                              case "Subtraction":
                                var diff = first - second;
                                _displayText = "The difference is " +
                                    diff.toStringAsFixed(0);
                                break;
                              case "Multiply":
                                var product = first * second;
                                _displayText = "the product is " +
                                    product.toStringAsFixed(0);
                                break;
                              case "Divide":
                                var div = (first / second);

                                _displayText =
                                    "The answer is " + div.toStringAsFixed(0);
                                break;
                              default:
                                _displayText = "Something went wrong";
                            }
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                      ),
                      child: RaisedButton(
                        child: Text('Clear'),
                        onPressed: () {
                          setState(() {
                            _clearAll();
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "Developed by Suyog Dhakal.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _clearAll() {
    textBox1.text = "";
    textBox2.text = "";
  }
}
