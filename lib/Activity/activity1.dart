import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              color: Colors.blue,
              height: 200,
            ),
            Expanded(
              child: Container(
                color: const Color.fromRGBO(233, 30, 99, 1),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 100),
                      color: Colors.green,
                      height: 100,
                    ),
                    Container(  
                        color: Colors.white,
                        //height: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 20,bottom: 20),
                                  width: 150,
                                  height: 100,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                            Container(
                              margin:const EdgeInsets.only(right: 20,bottom: 20),
                              width: 150,
                              height: 100,
                              color: Colors.yellow,
                            ),
                            Container(
                              margin:const EdgeInsets.only(right: 0,bottom: 20),
                              width: 150,
                              height: 100,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              ),
              
            )
            
          ],
        ),
      ),
    ),
  );
}
