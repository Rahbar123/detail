import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //image
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/400/400?random=2'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 30, left: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 30, right: 10),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.3,
                  child: Column(
                    children: [
                      
                      Text(
                        
                          "  Munnar is a town in the Western Ghats mountain range in India’s Kerala state. A hill station and former resort for the British Raj elite, it's surrounded by rolling hills dotted with tea plantations established in the late 19th century. Eravikulam National Park, a habitat for the endangered mountain goat Nilgiri tahr, is home to the Lakkam Waterfalls, hiking trails and 2,695m-tall Anamudi Peak",
                          style:TextStyle(fontFamily: 'Montserret',
                          fontSize: 17,
                          letterSpacing: 1,
                        )
                          ),
                    ],
                  ),
                      
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 0),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Location",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
