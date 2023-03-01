import 'package:counterapp/screen/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade800,
          title: Text("Counter App"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 200,),
              Consumer<CounterProvider>(
                builder: (context, value, child) => Text("${value.i}",style: TextStyle(color: Colors.pink.shade50,fontSize: 25),),
              ),
              Expanded(child: SizedBox(height: 200,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Provider.of<CounterProvider>(context,listen: false).increment();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink.shade50,
                        border: Border.all(color: Colors.pink.shade900,width: 2)
                      ),
                      child: Icon(Icons.add,color: Colors.pink.shade900,),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<CounterProvider>(context,listen: false).decrement();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.pink.shade50,
                          border: Border.all(color: Colors.pink.shade900,width: 2)
                      ),
                      child: Icon(Icons.remove,color: Colors.pink.shade900,),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<CounterProvider>(context,listen: false).mul();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.pink.shade50,
                          border: Border.all(color: Colors.pink.shade900,width: 2)
                      ),
                      child: Text("2X",style: TextStyle(color: Colors.pink.shade900),),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<CounterProvider>(context,listen: false).mul3();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.pink.shade50,
                          border: Border.all(color: Colors.pink.shade900,width: 2)
                      ),
                      child: Text("3X",style: TextStyle(color: Colors.pink.shade900),),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<CounterProvider>(context,listen: false).mul4();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.pink.shade50,
                          border: Border.all(color: Colors.pink.shade900,width: 2)
                      ),
                      child: Text("4X",style: TextStyle(color: Colors.pink.shade900),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
