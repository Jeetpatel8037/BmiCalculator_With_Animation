import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _sl = 150;
  int i = 0;
  int a = 0;
  Color myColor = Colors.white;
  Color color = Colors.white;
  String arg = "You are fit you want to join the gym and make more strong.";
  String arr = "Eat some healthy food and strong your body, join the gym.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TweenAnimationBuilder(
                  tween: Tween<Offset>(
                    begin: const Offset(400, 0),
                    end: const Offset(0, 0),
                  ),
                  duration: const Duration(milliseconds: 1500),
                  builder: (builder, Offset val, widget) {
                    return Transform.translate(
                      offset: val,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            myColor = (myColor == Colors.white)
                                ? Colors.pink
                                : Colors.white;
                            color = Colors.white;
                          });
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 40),
                                child: Icon(
                                  Icons.male,
                                  color: myColor,
                                  size: 80,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: Text(
                                  "MALE",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.only(
                            top: 10,
                          ),
                          height: 180,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                TweenAnimationBuilder(
                  tween: Tween<Offset>(
                    begin: const Offset(-400, 0),
                    end: const Offset(0, 0),
                  ),
                  duration: const Duration(milliseconds: 1500),
                  builder: (context, Offset val, widget) {
                    return Transform.translate(
                      offset: val,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            color = (color == Colors.white)
                                ? Colors.pink
                                : Colors.white;
                            myColor = Colors.white;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 40),
                                child: Icon(
                                  Icons.female,
                                  color: color,
                                  size: 80,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: Text(
                                  "FEMALE",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.only(top: 10, left: 10),
                          height: 180,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            TweenAnimationBuilder(
                tween: Tween<Offset>(
                  begin: const Offset(300, 0),
                  end: const Offset(0, 0),
                ),
                duration: const Duration(milliseconds: 1500),
                builder: (context, Offset val, widget) {
                  return Transform.translate(
                    offset: val,
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            child: Text(
                              "HEIGHT",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  "${_sl.toInt()}",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "cm",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            value: _sl,
                            onChanged: (val) {
                              setState(() {
                                _sl = val;
                              });
                            },
                            min: 50,
                            max: 260,
                            label: "${_sl.toInt()}",
                            divisions: 210,
                            activeColor: Colors.white.withOpacity(0.9),
                            inactiveColor: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                      height: 200,
                      width: 345,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
                }),
            //   const SizedBox(
            //   height: 20,
            // ),
            Row(
              children: [
                TweenAnimationBuilder(
                    tween: Tween<Offset>(
                      begin: const Offset(400, 0),
                      end: const Offset(0, 0),
                    ),
                    duration: const Duration(milliseconds: 1500),
                    builder: (context, Offset val, widget) {
                      return Transform.translate(
                        offset: val,
                        child: Container(
                          child: InkWell(
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 30,
                                  ),
                                  child: Text(
                                    "WEIGHT",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 20),
                                  ),
                                ),
                                Text(
                                  "$i",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    (i > 0)
                                        ? InkWell(
                                            onTap: () {
                                              setState(() {
                                                i--;
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: const Text(
                                                "-",
                                                style: TextStyle(
                                                    fontSize: 35,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade700,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          )
                                        : Container(
                                            alignment: Alignment.center,
                                            child: const Text(
                                              "-",
                                              style: TextStyle(
                                                  fontSize: 35,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade700,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          i++;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "+",
                                          style: TextStyle(
                                              fontSize: 35,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade700,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          margin: const EdgeInsets.only(top: 10, left: 15),
                          height: 180,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      );
                    }),
                TweenAnimationBuilder(
                    tween: Tween<Offset>(
                      begin: const Offset(-400, 0),
                      end: const Offset(0, 0),
                    ),
                    duration: const Duration(milliseconds: 1500),
                    builder: (context, Offset val, widget) {
                      return Transform.translate(
                        offset: val,
                        child: Container(
                          child: InkWell(
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  child: Text(
                                    "AGE",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 20),
                                  ),
                                ),
                                Text(
                                  "$a",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    (a > 0)
                                        ? InkWell(
                                            onTap: () {
                                              setState(() {
                                                a--;
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: const Text(
                                                "-",
                                                style: TextStyle(
                                                    fontSize: 35,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade700,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          )
                                        : Container(
                                            alignment: Alignment.center,
                                            child: const Text(
                                              "-",
                                              style: TextStyle(
                                                  fontSize: 35,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade700,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          a++;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "+",
                                          style: TextStyle(
                                              fontSize: 35,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade700,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          margin: const EdgeInsets.only(top: 10, left: 22),
                          height: 180,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      );
                    }),
              ],
            ),
            const Spacer(),
            Expanded(
              flex: 2,
              child: SizedBox.expand(
                child: ElevatedButton(
                    onPressed: () {
                      if (i <= 50 && a < 18 && _sl < 160) {
                        Navigator.of(context)
                            .pushNamed('second_page', arguments: arg);
                      } else if (i > 50 && a > 18 && _sl > 160) {
                        Navigator.of(context)
                            .pushNamed('second_page', arguments: arr);
                      }
                    },
                    child: const Text(
                      "CALCULATE",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
