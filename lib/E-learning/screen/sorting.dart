import 'package:flutter/material.dart';

import '../../Flip/widget/flipview.dart';
import '../../FresherSpacefeature/Student/Amplitude/Amplitude.dart';
import '../../FresherSpacefeature/Student/ExploreCareer/Career.dart';
import '../../FresherSpacefeature/Student/StudentNotesUI/StudentNotes.dart';

class Sorting extends StatefulWidget {
  // const Sorting({
  //   Key? key,
  // }) : super(key: key);

  @override
  State<Sorting> createState() => _SortingState();
}

class _SortingState extends State<Sorting> {
  /// Start for Student dialog
  Map<String, Map<int, List<String>>> dict = {
    'cse': {
      1: ['math', 'chemistry', 'pps'],
      2: [
        'physics',
        'maths 2',
        'electrical Engineering',
        'professional English'
      ],
      3: [
        'Electrical Engineering',
        'Technical communication',
        'DSA',
        'COA',
        'Discrete Maths'
      ],
      4: [
        'Maths 4',
        'Universal Human Value',
        'Operating System',
        'TAFL',
        'Microprocessor'
      ],
      5: ['DBMS', 'Compiler Design', 'DAA', 'Web Design', 'Machine Learning'],
      6: [
        'Software Engineering',
        'Web Technology',
        'Computer Network',
        'Image Processing',
        'Understand Human Being'
      ],
      7: [
        'Rular Development',
        'Distributed System',
        'Cloud Computing',
        'Vision for Human Society'
      ],
      8: [
        'Project and Entrepreneurship',
        'Entrepreneurship Development',
        'Data Mining'
      ]
    },
  };
  final List<int> item = [1, 2, 3, 4, 5, 6, 7, 8];
  int sem = 1;
  List<String>? get subjects => dict['cse']![sem];
  int index = 0;
  String? get subject => subjects![index];

  dialogFun(context) {
    return showDialog(
        context: context,
        builder: (BuildContext) => AlertDialog(
              backgroundColor: Colors.cyanAccent,
              title: const Text("Press Submit \nTech Dashboard"),
              content: StatefulBuilder(builder: (context, StateSetter setSate) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Column(
                    children: [
                      const Text("     Please Select  \n  Year and semster"),
                      const Text("\n "),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: sem, // currently selected item
                          items: item
                              .map((item) => DropdownMenuItem<int>(
                                    child: Row(
                                      children: [
                                        const Icon(Icons.book_outlined),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Semester ' + item.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    value: item,
                                  ))
                              .toList(),
                          onChanged: (val) => setSate(() {
                            sem = val!;
                            index = 0;
                          }),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: index, // currently selected item
                          items: subjects
                              ?.map((item) => DropdownMenuItem<int>(
                                    child: Row(
                                      children: [
                                        const Icon(Icons.book_outlined),
                                        const SizedBox(width: 8),
                                        Text(
                                          item.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    value: subjects?.indexOf(item),
                                  ))
                              .toList(),
                          onChanged: (value) => setSate(() {
                            index = value!;
                          }),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('cancel'),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => studentNotes(
                                  sem: sem,
                                  subject: dict['cse']![sem]![index])));
                    },
                    child: Text('submit')),
              ],
            ));
  }

  /// End of Student Dialog

  /// Start for Explorer career ..
  Map<String, Map<int, List<String>>> dictt = {
    'tech': {
      1: ['Webdevelopment'],
      2: ['Android development'],
    },
  };
  final List<int> items = [1, 2];
  int Count = 1;
  List<String>? get Select => dictt['tech']![Count];
  int idx = 0;
  String get Slt => Select![idx];

  dialogFunn(context) {
    return showDialog(
        context: context,
        builder: (BuildContext) => AlertDialog(
              backgroundColor: Colors.cyanAccent,
              title: const Text("Press Submit \nTech Dashboard"),
              content: StatefulBuilder(builder: (context, StateSetter setSate) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Column(
                    children: [
                      const Text("     Please Select  \n       Technology"),
                      const Text("\n "),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: Count, // currently selected item
                          items: items
                              .map((items) => DropdownMenuItem<int>(
                                    child: Row(
                                      children: [
                                        const Icon(Icons.book_outlined),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Select Tech ' + items.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    value: items,
                                  ))
                              .toList(),
                          onChanged: (val) => setSate(() {
                            Count = val!;
                            idx = 0;
                          }),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: idx, // currently selected item
                          items: Select?.map((items) => DropdownMenuItem<int>(
                                child: Row(
                                  children: [
                                    const Icon(Icons.book_outlined),
                                    const SizedBox(width: 8),
                                    Text(
                                      items.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                value: Select?.indexOf(items),
                              )).toList(),
                          onChanged: (value) => setSate(() {
                            idx = value!;
                          }),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('cancel')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CareerPg(
                                    Slt: Slt,
                                    Count: Count,
                                  )));
                    },
                    child: Text('submit')),
              ],
            ));
  }

  /// End of Explore career ...

  /// Here start for the Resoning dialogbox
  Map<String, Map<int, List<String>>> Rdict = {
    'Resoning': {
      1: [
        'quantative',
      ],
      2: [
        'logical',
      ],
      3: [
        'Verbal',
      ],
      4: [
        'Visual Reasoning',
      ],
      5: [
        'Data Interpretentation',
      ],
      6: [
        'Cryparthemetic',
      ],
      7: [
        'Eassay Writting',
      ],
    },
  };
  final List<int> itm = [1, 2, 3, 4, 5, 6, 7];
  int RCount = 1;
  List<String>? get Skill => Rdict['Resoning']![RCount];
  int idxx = 0;
  String? get skill => Skill![idxx];

  ReasoningDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext) => AlertDialog(
              backgroundColor: Colors.cyanAccent,
              title: const Text("Press Submit \nReasoning Dashboard"),
              content: StatefulBuilder(builder: (context, StateSetter setSate) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Column(
                    children: [
                      const Text("     Please Select  \n       Reasoning"),
                      const Text("\n "),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: RCount, // currently selected item
                          items: itm
                              .map((items) => DropdownMenuItem<int>(
                                    child: Row(
                                      children: [
                                        const Icon(Icons.book_outlined),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Select skills ' + items.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    value: items,
                                  ))
                              .toList(),
                          onChanged: (val) => setSate(() {
                            RCount = val!;
                            idxx = 0;
                          }),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: idxx, // currently selected item
                          items: Skill?.map((items) => DropdownMenuItem<int>(
                                child: Row(
                                  children: [
                                    const Icon(Icons.book_outlined),
                                    const SizedBox(width: 8),
                                    Text(
                                      items.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                value: Skill?.indexOf(items),
                              )).toList(),
                          onChanged: (value) => setSate(() {
                            idxx = value!;
                          }),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('cancel')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Amplitudepage(
                            skill: Rdict['Resoning']![RCount]![idxx],
                            RCount: RCount,
                          ),
                        ),
                      );
                    },
                    child: Text('submit')),
              ],
            ));
  }

  /// End of Reasoning Dialog.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 10,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Row(
            //space between widgets
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              //   decoration: BoxDecoration(
              //     color: kpink,
              //     borderRadius: BorderRadius.circular(19.0),
              //   ),
              //   // child: GestureDetector(
              //   //   onTap: () {
              //   //     showDialog(
              //   //         context: context,
              //   //         builder: (BuildContext context) => HomeScreen());
              //   //   },
              //   //   child: const Text(
              //   //     "Top",
              //   //     style: TextStyle(fontSize: 18.0, color: Colors.white),
              //   //   ),
              //   // ),
              // ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(19.0),
                ),
                child: GestureDetector(
                  onTap: () {
                    dialogFun(context);
                  },
                  child: const Text(
                    "Student",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(19.0),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FlipView()));
                  },
                  child: const Text(
                    "Tech",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(19.0),
                ),
                child: GestureDetector(
                  onTap: () {
                    dialogFunn(context);
                  },
                  child: const Text(
                    "    Bug's    ",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(19.0),
                ),
                child: GestureDetector(
                  onTap: () {
                    ReasoningDialog(context);
                  },
                  child: const Text(
                    "Amplitude",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 10),
              //   child: Container(
              //       height: 20, child: Image.asset("assets/icon/sort.png")),
              // ),
            ])
      ]),
    );
  }
}
