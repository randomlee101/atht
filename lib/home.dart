import 'package:atht_hire_test/university_cards.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _x = 360.0;
  var _y = 60.0;
  var data = "Explore";
  var something;

  void elementRemove(String key) {
    setState(() {
      d.removeWhere((element) => element.key == Key(key));
    });
  }

  List<Widget> d = [];

  void delete() {
    setState(() {
      this.d.removeAt(0);
    });
    print(d.length);
  }

  @override
  void initState() {
    print(something);
    d.addAll([
      universityCards(top: 175, right: 100, action: (e) => delete()),
      universityCards(top: 150, right: 75, action: (e) => delete()),
      universityCards(top: 125, right: 50, action: (e) => delete()),
      universityCards(top: 100, right: 25, action: (e) => delete()),
      universityCards(top: 75, right: 0, action: (e) => delete()),
    ]);
  }

  GlobalKey globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    something = MediaQuery.of(context).size.width;
    print(something);
    return Scaffold(
      key: globalKey,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text("SA", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.purple),),
        centerTitle: true,
        actions: [Icon(Icons.notifications)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  data,
                  style: TextStyle(fontSize: 24),
                ),
                Spacer(),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 2,
                              blurRadius: 2)
                        ]),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 2,
                              blurRadius: 2)
                        ]),
                    child: Icon(Icons.filter_list),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 500,
              padding: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  PositionedDirectional(
                    bottom: -20,
                    start: 0,
                    end: 0,
                    child: Container(
                      alignment: Alignment.center,
                      // width: 300,
                      margin: EdgeInsets.all(4),
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 2,
                                blurRadius: 2)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Scholarship Amount"),
                          SizedBox(
                            height: 8,
                          ),
                          Text("\$800", style: TextStyle(fontSize: 24, color: Colors.purple, fontWeight: FontWeight.w600),),
                          SizedBox(
                            height: 24,
                          )
                        ],
                      ),
                    ),
                  ),
                  ...d,
                  PositionedDirectional(
                      bottom: 60,
                      end: 35,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[500],
                        foregroundColor: Colors.grey[200],
                        child: Icon(Icons.favorite),
                      ))
                ],
              )),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 2,
                      blurRadius: 2)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    child: Column(
                  children: [Icon(Icons.explore, color: Colors.purple,), Text("Explore", style: TextStyle(color: Colors.purple),)],
                )),
                InkWell(
                    child: Column(
                  children: [Icon(Icons.school), Text("Application")],
                )),
                InkWell(
                    child: Column(
                  children: [Icon(Icons.favorite), Text("Bookmarks")],
                )),
                InkWell(
                    child: Column(
                  children: [Icon(Icons.person), Text("Profile")],
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
