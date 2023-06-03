import 'package:flutter/material.dart';
import 'package:music_demo/HomeMusicScreen.dart';
import 'package:music_demo/singer.dart';

class Play extends StatefulWidget {
  String? cover, songs, art;

  Play({
    required this.cover,
    required this.songs,
    required this.art});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  double value = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height,
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
                Colors.indigo.shade800,
                Colors.black12,
              ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Now onplaying",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          leading: const Icon(Icons.arrow_drop_down_circle_outlined),
          actions: [const Icon(Icons.more_vert_outlined)],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white60,
                          blurRadius: 20.0, // soften the shadow
                          spreadRadius: 9.0, //extend the shadow
                          offset: Offset(
                            2.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                    ),
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.33,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.74,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(widget.cover.toString()),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.06,
              ),
              Text(
                widget.songs.toString(),
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.010,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              singer(
                                  singername: widget.art.toString(),
                                  img: widget.cover.toString()),
                        ));
                  },
                  child: Text(widget.art.toString(),
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.white))),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.03,
              ),
              Slider(
                min: 0,
                max: 100,
                value: value,
                activeColor: Colors.white,
                inactiveColor: Colors.white24,
                onChanged: (val) {
                  setState(() {
                    value = val;
                  });
                },
              ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.02,
              ),
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.11,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.skip_previous_rounded,
                      size: 60,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.network(
                            'https://static.wikia.nocookie.net/alldimensions/images/1/11/Bigbluering.png/revision/latest/scale-to-width-down/1200?cb=20191205233844',
                            // width: MediaQuery.of(context).size.width * 0.2,
                            // height: MediaQuery.of(context).size.height * 0.3,
                          ),
                          const Icon(
                            Icons.play_arrow_rounded,
                            size: 60,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.skip_next_rounded,
                      size: 60.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.keyboard_arrow_up_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              const Text(
                "Lyrics",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
