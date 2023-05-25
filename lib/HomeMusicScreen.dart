import 'package:flutter/material.dart';
import 'package:music_demo/Play.dart';
//import 'package:music_demo/singer.dart';

class HomeMusicScreen extends StatefulWidget {
  const HomeMusicScreen({Key? key}) : super(key: key);

  @override
  State<HomeMusicScreen> createState() => _HomeMusicScreenState();
}

class _HomeMusicScreenState extends State<HomeMusicScreen> {
  List coverimg = [
    "https://a10.gaanacdn.com/gn_img/song/YoEWlabzXB/EWlq0kLBbz/size_l_1532076361.jpg",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202112/267475191_310937400906929_9169_1200x768.jpeg?size=1200:675.jpg",
    "https://i.scdn.co/image/ab67616d0000b273c7f2af502f759930a10d8835",
    "https://cdns-images.dzcdn.net/images/cover/340283aafac320864b207c420124ee46/500x500.jpg",
    "http://www.firstpost.com/wp-content/uploads/2017/04/half-girlfriend-825.jpg",
  ];
  List songname = [
    "Lahoriye",
    "Baliye Re",
    "Sita Ramam",
    "Sorry",
    "Phir bhi tumko chahunga",
  ];
  List artist = [
    "Akhar",
    "Sachet Tondon",
    "Sukhwinder",
    "Justin B.",
    "Arijit Singh",
  ];

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
                Colors.black,
                Colors.black,
              ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "Discover",
            style: TextStyle(fontSize: 29),
          ),
          centerTitle: true,
          leading: const Icon(Icons.menu),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.9,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Find your favorite song here",
                      hintStyle: const TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.white38),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.white38),
                      ),
                      suffixIcon: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.04,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Made for you",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.white),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        height: 30,
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text("More"),
                            ),
                            Icon(Icons.navigate_next_outlined),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    color: Colors.transparent,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.150,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Play(
                                        cover: coverimg[index].toString(),
                                        songs: songname[index].toString(),
                                        art: artist[index].toString()),
                              ),
                            );
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  songname[index].toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text(
                                  artist[index].toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                )
                              ],
                            ),
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(coverimg[index].toString()),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.white,
                            ),
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.1,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.3,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 0.3,
                        );
                      },
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage("assets/image/HF.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.2,
                ),
                const SizedBox(height: 10.0),
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.04,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Genre",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.white),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        height: 30,
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text("More"),
                            ),
                            Icon(Icons.navigate_next_outlined),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                    color: Colors.transparent,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.150,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(coverimg[index].toString()),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.1,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.3,
                        );
                      },
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.04,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Hits",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.white),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        height: 30,
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text("More"),
                            ),
                            Icon(Icons.navigate_next_outlined),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                    color: Colors.transparent,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.150,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(coverimg[index].toString()),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.1,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.3,
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
