
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Hang extends StatefulWidget {
  const Hang({Key? key}) : super(key: key);

  @override
  State<Hang> createState() => _HangState();
}

class _HangState extends State<Hang> {
  String sb="";
  bool  visibleHead=false;
  bool visibleBody=false;
  bool visibleLeft=false;
  bool visibleLeftl=false;
  bool visibleRight=false;
  bool visibleRl=false;
  bool visibleF=false;
  bool visibleL=false;
  bool visibleU=false;
  bool visibleT=false;
  bool visibleE=false;
  bool visibleR=false;
  int count=0;
  int flag=0;
  void reset(){
     visibleHead=false;
     visibleBody=false;
     visibleLeft=false;
     visibleLeftl=false;
     visibleRight=false;
     visibleRl=false;
     visibleF=false;
     visibleL=false;
     visibleU=false;
     visibleT=false;
     visibleE=false;
     visibleR=false;

  }
  void display(String letter){
    setState(() {
      if (count==5){
        Alert(
          context: context,
          title: "YOU LOSE",
          desc: "YOU LOSE THE GAME",
            buttons: [
              DialogButton(
                child: Text(
                  "PLAY AGAIN",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () =>Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) =>Hang()))),

            ]
        ).show();
        reset();

      }
      else if(flag==5){
        Alert(
          context: context,
          title: "YOU WIN",
          desc: "YOU WIN THE GAME",
            buttons: [
              DialogButton(
                  child: Text(
                    "PLAY AGAIN",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () =>Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) =>Hang()))),

            ]
        ).show();
        reset();
      }
      else{
        if(letter=='F'){
          visibleF=true;
          flag++;
        }
        else if(letter=='L'){
          visibleL=true;
          flag++;
        }
        else if(letter=='U'){
          visibleU=true;
          flag++;
        }
        else if (letter=='T'){
          visibleT=true;
          flag++;
        }
        else if(letter=='T'){
          visibleT=true;
          flag++;
        }
        else if(letter=='E'){
          visibleE=true;
          flag++;
        }
        else if(letter=='R'){
          visibleR=true;
          flag++;
        }
        else{
          count++;
          if(count==1){
            visibleHead=true;
          }
          else if(count==2){
            visibleBody=true;
          }
          else if(count==3){
            visibleRight=true;
          }
          else if (count==4){
            visibleLeft=true;
          }
          else if(count==5){
            visibleLeftl=true;
          }
          else if(count==6){
            visibleRl=true;
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image(image: AssetImage("images/hang.png")),
                Visibility(
                  visible: visibleHead,
                    child: Image(image: AssetImage("images/head.png"),)),
                Visibility(
                  visible: visibleBody,
                    child: Image(image: AssetImage("images/body.png"),)),
                Visibility(
                  visible: visibleRight,
                    child: Image(image: AssetImage("images/right.png"),)),
                Visibility(
                  visible: visibleLeft,
                    child: Image(image: AssetImage("images/left.png"),)),
                Visibility(
                    visible: visibleRl,
                    child: Image(image: AssetImage("images/rl.png"),)),
                Visibility(
                  visible: visibleLeftl,
                    child: Image(image: AssetImage("images/laft l.png"),))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildOutlinedButtons("F",visibleF),
                  buildOutlinedButtons("L",visibleL),
                  buildOutlinedButtons("U",visibleU),
                  buildOutlinedButtons("T",visibleT),
                  buildOutlinedButtons("T",visibleT),
                  buildOutlinedButtons("E",visibleE),
                  buildOutlinedButtons("R",visibleR)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildOutlinedButton("A"),
                  buildOutlinedButton("B"),
                  buildOutlinedButton("C"),
                  buildOutlinedButton("D"),
                  buildOutlinedButton("E"),
                  buildOutlinedButton("F"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildOutlinedButton("G"),
                  buildOutlinedButton("H"),
                  buildOutlinedButton("I"),
                  buildOutlinedButton("J"),
                  buildOutlinedButton("K"),
                  buildOutlinedButton("L"),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildOutlinedButton("M"),
                  buildOutlinedButton("N"),
                  buildOutlinedButton("O"),
                  buildOutlinedButton("P"),
                  buildOutlinedButton("Q"),
                  buildOutlinedButton("R"),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildOutlinedButton("S"),
                  buildOutlinedButton("T"),
                  buildOutlinedButton("U"),
                  buildOutlinedButton("V"),
                  buildOutlinedButton("W"),
                  buildOutlinedButton("X"),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildOutlinedButton("Y"),
                  buildOutlinedButton("Z"),


                ],
              ),
            ),


    ]),
      ));
  }

  OutlinedButton buildOutlinedButtons(
      String text,bool visibility,
      ) => OutlinedButton(onPressed: (){}, child: Visibility(visible: visibility,
      child: Text(text,style: TextStyle(fontSize: 20,color: Colors.white),)));

  OutlinedButton buildOutlinedButton(
      String text,
      ) {

    return OutlinedButton(onPressed: (){
      display(text);
    }, child: Text(text,
    style: TextStyle(fontSize: 20,color: Colors.white),),
        );
  }

}
