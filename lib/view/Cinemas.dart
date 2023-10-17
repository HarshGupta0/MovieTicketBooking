import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Cinemas extends StatefulWidget {
  const Cinemas({super.key});

  @override
  State<Cinemas> createState() => _CinemasState();
}

class _CinemasState extends State<Cinemas> {
  bool _isPressedDrama = true;
  bool _isPressedAction = false;
  bool _isPressedHorror = false;
  bool _isPressedRomance = false;
  bool _isPressedThirller = false;
  bool _isPressedComdey = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('GENRES'),
        centerTitle: true,
        backgroundColor: Color(0xff618264).withOpacity(.9),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "GENERS",
                  style: TextStyle(
                      color: Color(0xff618264).withOpacity(.9),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: () {
                       setState(() {
                         _isPressedDrama = true;
                         _isPressedAction = false;
                         _isPressedHorror = false;
                         _isPressedRomance = false;
                         _isPressedThirller = false;
                         _isPressedComdey = false;
                       });
                      },
                      child: (Text(
                        "Drama",
                        style: _isPressedDrama
                            ? TextStyle(color: Colors.white)
                            : TextStyle(
                                color: Color(0xff618264).withOpacity(.9)),
                      )),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: _isPressedDrama
                            ? Color(0xff618264).withOpacity(.9)
                            : Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: () {
                          setState(() {
                            _isPressedDrama = false;
                            _isPressedAction =true;
                            _isPressedHorror = false;
                            _isPressedRomance = false;
                            _isPressedThirller = false;
                            _isPressedComdey = false;
                          });
                      },
                      child: (Text(
                        "Action",
                        style: _isPressedAction
                            ? TextStyle(color: Colors.white)
                            : TextStyle(
                                color: Color(0xff618264).withOpacity(.9)),
                      )),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: _isPressedAction
                            ? Color(0xff618264).withOpacity(.9)
                            : Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _isPressedDrama = false;
                          _isPressedAction = false;
                          _isPressedHorror =true;
                          _isPressedRomance = false;
                          _isPressedThirller = false;
                          _isPressedComdey = false;
                        });
                      },
                      child: (Text(
                        "Horror",
                        style: _isPressedHorror
                            ? TextStyle(color: Colors.white)
                            : TextStyle(
                                color: Color(0xff618264).withOpacity(.9)),
                      )),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: _isPressedHorror
                            ? Color(0xff618264).withOpacity(.9)
                            : Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: () {
                         setState(() {
                           _isPressedDrama = false;
                           _isPressedAction = false;
                           _isPressedHorror = false;
                           _isPressedRomance =true;
                           _isPressedThirller = false;
                           _isPressedComdey = false;
                         });
                      },
                      child: (Text(
                        "Romance",
                        style: _isPressedRomance
                            ? TextStyle(color: Colors.white)
                            : TextStyle(
                                color: Color(0xff618264).withOpacity(.9)),
                      )),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: _isPressedRomance
                            ? Color(0xff618264).withOpacity(.9)
                            : Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _isPressedDrama =false;
                          _isPressedAction = false;
                          _isPressedHorror = false;
                          _isPressedRomance = false;
                          _isPressedThirller =false;
                          _isPressedComdey = true;
                        });
                      },
                      child: (Text(
                        "Comdey",
                        style: _isPressedComdey
                            ? TextStyle(color: Colors.white)
                            : TextStyle(
                                color: Color(0xff618264).withOpacity(.9)),
                      )),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: _isPressedComdey
                            ? Color(0xff618264).withOpacity(.9)
                            : Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _isPressedDrama =false;
                          _isPressedAction = false;
                          _isPressedHorror = false;
                          _isPressedRomance = false;
                          _isPressedThirller =true;
                          _isPressedComdey = false;
                        });
                      },
                      child: (Text(
                        "Thirller",
                        style: _isPressedThirller
                            ? TextStyle(color: Colors.white)
                            : TextStyle(
                            color: Color(0xff618264).withOpacity(.9)),
                      )),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: _isPressedThirller
                            ? Color(0xff618264).withOpacity(.9)
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    ));
  }
}
