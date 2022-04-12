import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Common Widgets",
      debugShowCheckedModeBanner: false,
      home: Strow(),
    );
  }
}

class Strow extends StatefulWidget {
  const Strow({Key? key}) : super(key: key);

  @override
  State<Strow> createState() => _StrowState();
}

class _StrowState extends State<Strow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Align(
                    child: Container(
                      constraints: const BoxConstraints.expand(
                        width: 300,
                        height: 300,
                      ),
                      color: const Color.fromARGB(255, 234, 234, 234),
                    ),
                  ),
                  Align(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(125),
                      child: const Image(
                        width: 250,
                        height: 250,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image2.jpeg"),
                      ),
                    ),
                  ),
                  Align(
                      child: Container(
                    margin: const EdgeInsets.only(top: 150, left: 100),
                    color: Colors.black.withOpacity(0.3),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: const Text(
                      "Mia B",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 300,
                width: 400,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                          width: 400,
                          padding: const EdgeInsets.only(bottom: 20),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/image5.jpeg"),
                                  fit: BoxFit.cover)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 8),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: const [
                                            Text(
                                              "Carrier",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 18),
                                            ),
                                            Icon(
                                              Icons.wifi,
                                              color: Colors.white,
                                              size: 25,
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          "7:56 AM",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18),
                                        ),
                                        const RotatedBox(
                                          quarterTurns: -3,
                                          child: Icon(
                                            Icons.battery_full,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, left: 12, right: 12),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Icon(
                                          Icons.arrow_back_ios,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.edit,
                                              color: Colors.white,
                                              size: 25,
                                            ),
                                            Icon(
                                              Icons.more_vert,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "Ali Connnors",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
