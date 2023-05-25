import 'package:flutter/material.dart';

class singer extends StatefulWidget {
  String? singername, img;

  //

  singer({required this.singername, required this.img});

  @override
  State<singer> createState() => _singerState();
}

class _singerState extends State<singer> {
  List x = [
    "https://a10.gaanacdn.com/gn_img/song/YoEWlabzXB/EWlq0kLBbz/size_l_1532076361.jpg",
    "https://i.scdn.co/image/ab67616d0000b27340ed2429b33f173ea6346287",
    "http://www.firstpost.com/wp-content/uploads/2017/04/half-girlfriend-825.jpg",
    "https://cdns-images.dzcdn.net/images/cover/340283aafac320864b207c420124ee46/500x500.jpg",
  ];
  List w = [
    "https://i.scdn.co/image/ab67616d0000b27340ed2429b33f173ea6346287",
    "http://www.firstpost.com/wp-content/uploads/2017/04/half-girlfriend-825.jpg",
    "https://a10.gaanacdn.com/gn_img/song/YoEWlabzXB/EWlq0kLBbz/size_l_1532076361.jpg"
  ];
  List z = [
    "Saami Saami",
    "Phir bhi Tumko chahunga",
    "Lahoriye",
  ];
  var buttontxt = "follow";
  bool flag = true;
  List k = ["arm", "tmk", "akar"];
  List u = [
    Icons.bar_chart_rounded,
    Icons.more_vert_rounded,
    Icons.more_vert_rounded,
  ];
  int selectedindx = 0;

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
                Colors.blue.shade900,
                Colors.black12,
              ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Row(
              children: [
                OutlinedButton(
                    onPressed: () {
                      setState(() {
                        flag == true
                            ? buttontxt = "following"
                            : buttontxt = "follow";
                        flag = !flag;

                        setprintmsg();
                      });
                    },
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: const BorderSide(
                              style: BorderStyle.solid,
                              width: 2.0,
                              color: Colors.white,
                            ))),
                    child: Text(
                      buttontxt,
                      style: const TextStyle(color: Colors.white),
                    )),
                /* Container(
                  height: 29,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                    // color: Colors.transparent
                  ),
                  child: Center(
                    child: Text(
                      "follow",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                ), */
                const Icon(Icons.more_vert_outlined),
              ],
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          image: DecorationImage(
                              image: NetworkImage(widget.img.toString()),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(widget.singername.toString(),
                      style: TextStyle(fontSize: 25, color: Colors.white70)),
                ),
                const Text("123,355,423 Monthly Listeners",
                    style: TextStyle(color: Colors.white70)),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.repeat_rounded,
                      size: 30,
                      color: Colors.white70,
                    ),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue.shade400,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Play All",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: 30,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.cloud_download_outlined,
                      size: 30,
                      color: Colors.white70,
                    ),
                  ],
                ),
                const Padding(
                  padding: const EdgeInsets.only(right: 260, top: 30),
                  child: Text(
                    "Popular songs",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                ),
                /*  SizedBox(
                      height: 12,
                    ),*/

                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 150,
                  color: Colors.transparent,
                  child: ListView.separated(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedindx = index;
                            });
                          },
                          child: ListTile(
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image(
                                  image: NetworkImage(w[index].toString()),
                                  fit: BoxFit.cover,
                                  height: 110,
                                  width: 100,
                                )),
                            title: Text(
                              z[index].toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              k[index].toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Icon(
                              selectedindx == index
                                  ? Icons.bar_chart
                                  : Icons.more_vert_rounded,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 10,
                        );
                      }

                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: const EdgeInsets.only(right: 310),
                  child: Text(
                    "Albums",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 150,
                  color: Colors.transparent,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.transparent),
                        margin: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: NetworkImage(
                              x[index].toString(),
                            ),
                            fit: BoxFit.cover,
                            height: 100,
                            width: 150,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    printmsg();
  }

  void printmsg() {
    print("print this");
  }

  void setprintmsg() {
    print("print when button click");
  }
}
