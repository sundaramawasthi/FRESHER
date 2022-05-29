import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:fresher_space/FresherSpacefeature/Student/clipper.dart';
// import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uri_to_file/uri_to_file.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  unitList(Height) {
    return StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('favourites')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data!.data() == null) {
            print('null occur');
            return Container();
          } else {
            Map<String, dynamic>? data =
                snapshot.data!.data() as Map<String, dynamic>?;

            List<String> values = data!['favourites']!.keys.toList();
            values.sort();
            // Map<String, dynamic> data = {'zz': 'zz'};
            return ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: values.length,
                itemBuilder: (BuildContext context, int i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(
                              Icons.notes,
                              color: Colors.red,
                            ),
                            title: Text(
                              values[i],
                              style: TextStyle(color: Colors.black),
                            ),
                            trailing: Container(
                              width: 125,
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                Icons.library_books,
                                size: 35,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          // Container(
                          //   width: double.infinity,
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //     children: <Widget>[
                          //       TextButton(
                          //         child: const Text('DOWNLOAD'),
                          //         onPressed: () {
                          //           downloadFile;
                          //         },
                          //       ),
                          //       TextButton(
                          //         child: const Text('VIEW'),
                          //         onPressed: () {
                          //           downloadFile;
                          //         },
                          //       ),
                          //
                          //       // FavoriteButton(
                          //       //   //mp_key: values[i],
                          //       //   iconSize: 40,
                          //       //   isFavorite: false,
                          //       //   valueChanged: (_isFavorite) async {
                          //       //     var out = FirebaseFirestore.instance
                          //       //         .collection('favourites')
                          //       //         .doc(FirebaseAuth
                          //       //             .instance.currentUser!.uid);
                          //       //
                          //       //     var snap = await out.get();
                          //       //     Map<String, dynamic>? mp =
                          //       //         snap.data() as Map<String, dynamic>?;
                          //       //     print(mp);
                          //       //     if (mp == null) {
                          //       //       Map<String, dynamic> mpp = {
                          //       //         'favourites': {
                          //       //           values[i]: data[values[i]]
                          //       //         }
                          //       //       };
                          //       //       out.set(mpp);
                          //       //     } else {
                          //       //       mp['favourites'][values[i]] =
                          //       //           data[values[i]];
                          //       //       out.set(mp);
                          //       //     }
                          //       //     print(values[i]);
                          //       //     print(mp);
                          //       //     print('Is Favorite : $_isFavorite');
                          //       //   },
                          //       // ),
                          //     ],
                          //   ),
                          // ),
                          // Container(
                          //   width: double.infinity,
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //     children: <Widget>[
                          //       TextButton(
                          //         child: const Text('DOWNLOAD'),
                          //         onPressed: () {
                          //           downloadFile;
                          //         },
                          //       ),
                          //       TextButton(
                          //         child: const Text('VIEW'),
                          //         onPressed: () {
                          //           downloadFile;
                          //         },
                          //       ),
                          //       FavoriteButton(
                          //         //mp_key: values[i],
                          //         iconSize: 40,
                          //         isFavorite: false,
                          //         valueChanged: (_isFavorite) async {
                          //           var out = FirebaseFirestore.instance
                          //               .collection('favourites')
                          //               .doc(FirebaseAuth
                          //                   .instance.currentUser!.uid);
                          //
                          //           var snap = await out.get();
                          //           Map<String, dynamic>? mp =
                          //               snap.data() as Map<String, dynamic>?;
                          //           print(mp);
                          //           if (mp == null) {
                          //             Map<String, dynamic> mpp = {
                          //               'favourites': {
                          //                 values[i]: data[values[i]]
                          //               }
                          //             };
                          //             out.set(mpp);
                          //           } else {
                          //             mp['favourites'][values[i]] =
                          //                 data[values[i]];
                          //             out.set(mp);
                          //           }
                          //           print(values[i]);
                          //           print(mp);
                          //           print('Is Favorite : $_isFavorite');
                          //         },
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  );
                });
          }
        });
  }

  // static void downloadCallback(
  //     String id, DownloadTaskStatus status, int progress) {
  //   // if (debug) {
  //   //   print(
  //   //       'Background Isolate Callback: task ($id) is in status ($status) and process ($progress)');
  //   // }
  //   final SendPort send =
  //       IsolateNameServer.lookupPortByName('downloader_send_port')!;
  //   send.send([id, status, progress]);
  // }
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   FlutterDownloader.registerCallback(downloadCallback);
  // }

  @override
  Widget build(BuildContext context) {
    var Height = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.vertical);

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          color: Colors.blue[100],
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    padding: const EdgeInsets.only(top: 30),
                    height: Height * .25,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xFF0F2027),
                          Color(0xFF203A43),
                          Color(0xFF2C5364),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                CupertinoIcons.back,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "NOTES ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.more_vert,
                                size: 35,
                                color: Colors.grey,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/Books.jpg',
                          width: 250,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                ),
                unitList(Height),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //
  // void _requestDownload(String link) async {
  //   final Directory appDocDir = await getApplicationDocumentsDirectory();
  //   final taskId = await FlutterDownloader.enqueue(
  //     url: link,
  //     savedDir: appDocDir.path,
  //     showNotification:
  //         true, // show download progress in status bar (for Android)
  //     openFileFromNotification:
  //         true, // click on notification to open downloaded file (for Android)
  //     saveInPublicStorage: true,
  //   );
  // }

  // void openfile(String url) async {
  //   File file = await toFile(url);
  //   OpenFile.open(file.path);
  // }
  Future downloadFile(Reference ref) async {
    final url = await ref.getDownloadURL();
    final tempDir = await getTemporaryDirectory();
    final path = '${tempDir.path}/${ref.name}';

    await Dio().download(url, path);

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/${ref.name}');
    await ref.writeToFile(file);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Download ${ref.name}')));
  }
}
