import 'dart:io';

import 'package:flutter/services.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  String assetPDFPath = "";

  @override
  void initState() {
    super.initState();

    /* getFileFromAsset("assets/WPME.pdf").then((f)){
      setstate((){
        assetPDFPath = f.path;
      });
    };*/
  }

  Future<File> getFileFromAsset(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/WPME.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
