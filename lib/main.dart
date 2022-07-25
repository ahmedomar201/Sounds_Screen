import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

main() => runApp(Home());

class Home extends StatelessWidget {
  Widget getCard(String imageicon, String text, String text2,String audioPath) {
    return Card(
      margin: EdgeInsets.only(left: 15, right: 15, top: 7.5, bottom: 7.5),
      color: Colors.white.withOpacity(0.3),
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('images/$imageicon'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:11,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                     IconButton(icon:Icon(
                       Icons.play_arrow_outlined,
                       color: Colors.white,
                       size: 30,
                     ), onPressed:(
                         ){var player =AudioCache();
                       player.play("$audioPath");


                     } ),

                    Text(
                      "play",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.local_fire_department_sharp,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      "30",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.purple,
                  Colors.blue,
                ])),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('images/ahmed.jpg'),
                      ),
                    ),
                    Text(
                      "ahmed's songs",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "my music",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Text(
                          "shared",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Text(
                          "feed",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                getCard("power.jfif",'power is power',"song1","note1.wav"),
                getCard("kda.jfif",'kda more',"song2","note2.wav"),
                getCard("ncs.jpg",'end.ncs',"song3","note3.wav"),
                getCard("cold.jfif",'cold.neffex',"song4","note4.wav"),
                getCard("Bad guy.jpg",'bad guy',"song5","note5.wav"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
