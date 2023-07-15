import 'package:flutter/material.dart';

class P4 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.red,)),
          Expanded(child: Container(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.black,)),
                Expanded(child: Container(
                  child: Column(
                    children: [
                      Expanded(child: Container(
                        child: Row(
                          children: [
                            Expanded(child: Container(color: Colors.black45,)),
                            Expanded(child: Container(color: Colors.purple,)),
                          ],
                        ),
                      )),
                      Expanded(child: Container(
                        child: Row(
                          children: [
                            Expanded(child: Container(color: Colors.white10,)),
                            Expanded(child: Container(color: Colors.purpleAccent,))
                          ],
                        ),
                      ))
                    ],
                  ),
                )),
                Expanded(child: Container(color: Colors.blue,))

              ],
            ),

          )),
          Expanded(child: Container(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.greenAccent,)),
                Expanded(child: Container(color: Colors.lightBlueAccent,)),
                Expanded(child: Container(color: Colors.lightGreenAccent,)),
                Expanded(child: Container(color: Colors.red,))
              ],
            ),)),
          Expanded(child: Container(
            child: Row(
              children: [
                Expanded(child: Container(
                  child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.lightBlueAccent,)),
                      Expanded(child: Container(color: Colors.lightGreenAccent,))
                    ],
                  )
                ,)),
                Expanded(child: Container(
                  child: Column(
                    children: [
                      Expanded(child: Container(
                        child: Row(
                          children: [
                            Expanded(child: Container(
                              child: Column(
                                children: [
                                  Expanded(child: Container(color: Colors.cyanAccent,)),
                                  Expanded(child: Container(color: Colors.purple,))
                                ],
                              ),
                            )),
                            Expanded(child: Container(
                              child: Column(
                                children: [
                                  Expanded(child: Container(color: Colors.pink,)),
                                  Expanded(child: Container(color: Colors.black,))
                                ],
                              )
                            ,))
                          ],
                        ),
                      )),
                      Expanded(child: Container(color: Colors.pinkAccent,))
                  ],
                  )
                )),
                Expanded(child: Container(color: Colors.blueGrey,)),
                Expanded(child: Container(
                  child: Row(
                    children: [
                      Expanded(child: Container(
                        child: Column(
                          children: [
                            Expanded(child: Container(color: Colors.pink,)),
                            Expanded(flex:2,child: Container(
                              child: Row(
                                children: [
                                  Expanded(child: Container(
                                    child: Column(
                                      children: [
                                        Expanded(child: Container(color: Colors.black45,)),
                                        Expanded(flex:2,child: Container(color: Colors.blue,))
                                      ],
                                    ),
                                  )),
                                  Expanded(child: Container(
                                    child: Column(children: [
                                      Expanded(child: Container(color: Colors.brown,)),
                                      Expanded(flex:2,child: Container(color: Colors.black38,))
                                    ],),
                                  ))
                                ],
                              ),
                            ))

                          ],
                        ),
                      )),
                      Expanded(child: Container(
                        child: Column(
                            children: [
                              Expanded(child: Container(color: Colors.greenAccent,)),
                              Expanded(flex:2,child: Container( color: Colors.cyanAccent,))

                            ],
                        )
                      ,))
                    ],
                  ),  
                ))
              ],
            )
          ,))
        ],
      ),
    );
  }
}