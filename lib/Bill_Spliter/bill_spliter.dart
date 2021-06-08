import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BillSplitter extends StatefulWidget {
  const BillSplitter({Key? key}) : super(key: key);

  @override
  _BillSplitterState createState() => _BillSplitterState();
}

class _BillSplitterState extends State<BillSplitter> {
  int _tipPercentage = 0;
  int _personCounter = 1;
  Color _color = Color(0xFF6908D6);
  double _billAmount = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.5),
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: _color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Total Per Person",style: TextStyle(
                  fontSize: 15,
                  color: _color,
                  fontWeight: FontWeight.normal
                ),),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Rs. ${calculateTotalPerPerson(calculateTotalTip(_billAmount, _personCounter, _tipPercentage), _billAmount, _personCounter).toStringAsFixed(1)}",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: _color
                    ),),
                  ),],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: _color, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                        prefixText: "Bill Amount",
                        prefixIcon: Icon(Icons.attach_money)),
                    onChanged: (String value) {
                      try {
                        _billAmount = double.parse(value);
                      } catch (ex) {
                        _billAmount = 0.0;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Split',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: _color.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
                                    child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: _color),
                                ))),
                            onTap: () {
                              setState(() {
                                if (_personCounter > 1) {
                                  _personCounter--;
                                } else {}
                              });
                            },
                          ),
                          Text(
                            "$_personCounter",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: _color),
                          ),
                          InkWell(
                            child: Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: _color.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
                                    child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: _color),
                                ))),
                            onTap: () {
                              setState(() {
                                _personCounter++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tips',style: TextStyle(
                        color: Colors.grey.shade700
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Rs. ${calculateTotalTip(_billAmount, _personCounter, _tipPercentage)}',style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: _color
                        ),),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('$_tipPercentage%',style: TextStyle(fontWeight: FontWeight.bold,color: _color,fontSize: 20), 
                      ),
                    Slider(
                        min: 0,
                        max: 100,
                        activeColor: _color,
                        inactiveColor: Colors.grey.shade400,
                        divisions: 20,
                        value: _tipPercentage.toDouble(), onChanged: (double value){
                      setState(() {
                        _tipPercentage=value.round();
                      });
                    })
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  calculateTotalPerPerson(double totalTip, double billAmount,int splitBy){
    var totalPerPerson = (totalTip + billAmount)/splitBy;
    return totalPerPerson;
  }
  calculateTotalTip(double billAmount,int splitBy, int tipPercentage){
    double totaltip = 0.0;
    if(billAmount <0 || billAmount.toString().isEmpty || billAmount == null){

    }else{
      totaltip = (billAmount + tipPercentage ) /100;
    }
return totaltip;
  }
}
