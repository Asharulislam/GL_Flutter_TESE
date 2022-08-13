import 'package:ashar_test/provider/training_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class TrainingUI extends StatefulWidget {
  const TrainingUI({Key? key}) : super(key: key);

  @override
  State<TrainingUI> createState() => _TrainingUIState();
}

class _TrainingUIState extends State<TrainingUI> {
  bool _isloading = false;

  @override
  void initState() {
    getTrainingData();
    super.initState();
  }

  getTrainingData() async {
    setState(() {
      _isloading = true;
    });
    await Provider.of<TrainingProvider>(context, listen: false)
        .getData()
        .then((result) {
      setState(() {
        _isloading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          "assets/icons/backIcon.svg",
          fit: BoxFit.none,
        ),
        title: const Text(
          "CANDIDATE LIST",
          style: TextStyle(
              fontFamily: "Gilroy_Medium",
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          SvgPicture.asset(
            "assets/icons/serachIcon.svg",
            fit: BoxFit.none,
          ),
        ],
      ),
      body: _isloading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Provider.of<TrainingProvider>(context)
                          .trainingData[0]
                          .centerName
                          .toUpperCase(),
                      style: const TextStyle(
                        fontFamily: "Gilroy_Bold",
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/locationIcon.svg",
                          fit: BoxFit.none,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            Provider.of<TrainingProvider>(context)
                                .trainingData[0]
                                .venueAddress,
                            style: const TextStyle(
                              fontFamily: " Gilroy_Medium",
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/calendarIcon.svg",
                          fit: BoxFit.none,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            Provider.of<TrainingProvider>(context)
                                .trainingData[0]
                                .eventDateTo,
                            style: const TextStyle(
                              fontFamily: " Gilroy_Medium",
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/traineeIcon.svg",
                          fit: BoxFit.none,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            Provider.of<TrainingProvider>(context)
                                .trainingData[0]
                                .traineeCount
                                .toString(),
                            style: const TextStyle(
                              fontFamily: "Gilroy_Medium",
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Card(
                      shape: const RoundedRectangleBorder(),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "NO.",
                                  style: TextStyle(
                                    fontFamily: "Gilroy_Medium",
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "FULLNAME",
                                  style: TextStyle(
                                    fontFamily: "Gilroy_Medium",
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "TRAINEED ID",
                                  style: TextStyle(
                                    fontFamily: "Gilroy_Medium",
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "MANAGE",
                                  style: TextStyle(
                                    fontFamily: "Gilroy_Medium",
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: Provider.of<TrainingProvider>(context)
                                .trainingData[0]
                                .trainees
                                .length,
                            shrinkWrap: true,
                            primary: false,
                            itemBuilder: (context, index) {
                              return Container(
                                color: index.isEven
                                    ? Colors.white
                                    : Colors.grey.shade300,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          index.toString(),
                                          style: const TextStyle(
                                            fontFamily: "Gilroy_Medium",
                                            fontSize: 13,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          Provider.of<TrainingProvider>(context)
                                                  .trainingData[0]
                                                  .trainees[index]
                                                  .name +
                                              " " +
                                              Provider.of<TrainingProvider>(
                                                      context)
                                                  .trainingData[0]
                                                  .trainees[index]
                                                  .lname,
                                          style: const TextStyle(
                                            fontFamily: "Gilroy_Medium",
                                            fontSize: 13,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          Provider.of<TrainingProvider>(context)
                                              .trainingData[0]
                                              .trainees[index]
                                              .id
                                              .toString(),
                                          style: const TextStyle(
                                            fontFamily: "Gilroy_Medium",
                                            fontSize: 13,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: MaterialButton(
                                            onPressed: () {},
                                            color: Colors.white,
                                            child: const Icon(
                                              Icons.edit,
                                              color: Colors.green,
                                            ),
                                            shape: const CircleBorder(),
                                          )),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(7),
                              topRight: Radius.circular(7))),
                      child: const Center(
                        child: Text(
                          "Retake candidates",
                          style: TextStyle(
                            fontFamily: "Gilroy_Medium",
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: const RoundedRectangleBorder(),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "NO.",
                                  style: TextStyle(
                                    fontFamily: "Gilroy_Medium",
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "FULLNAME",
                                  style: TextStyle(
                                    fontFamily: "Gilroy_Medium",
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "TRAINEED ID",
                                  style: TextStyle(
                                    fontFamily: "Gilroy_Medium",
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "MANAGE",
                                  style: TextStyle(
                                    fontFamily: "Gilroy_Medium",
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: Provider.of<TrainingProvider>(context)
                                .trainingData[0]
                                .resits
                                .length,
                            shrinkWrap: true,
                            primary: false,
                            itemBuilder: (context, index) {
                              return Container(
                                color: index.isEven
                                    ? Colors.white
                                    : Colors.grey.shade300,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          index.toString(),
                                          style: const TextStyle(
                                            fontFamily: "Gilroy_Medium",
                                            fontSize: 13,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          Provider.of<TrainingProvider>(context)
                                                  .trainingData[0]
                                                  .resits[index]
                                                  .name +
                                              " " +
                                              Provider.of<TrainingProvider>(
                                                      context)
                                                  .trainingData[0]
                                                  .resits[index]
                                                  .lname,
                                          style: const TextStyle(
                                            fontFamily: "Gilroy_Medium",
                                            fontSize: 13,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          Provider.of<TrainingProvider>(context)
                                              .trainingData[0]
                                              .resits[index]
                                              .id
                                              .toString(),
                                          style: const TextStyle(
                                            fontFamily: "Gilroy_Medium",
                                            fontSize: 13,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: MaterialButton(
                                            onPressed: () {},
                                            color: Colors.white,
                                            child: const Icon(
                                              Icons.edit,
                                              color: Colors.green,
                                            ),
                                            shape: const CircleBorder(),
                                          )),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

