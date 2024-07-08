import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyPdfViewer extends StatefulWidget {
  final String pdfPath;

  // Correct constructor to accept pdfPath
  const MyPdfViewer({Key? key, required this.pdfPath}) : super(key: key);

  @override
  State<MyPdfViewer> createState() => _MyPdfViewerState();
}

class _MyPdfViewerState extends State<MyPdfViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("PDF View"),
      ),
      // Use the pdfPath provided
      body: SfPdfViewer.asset(widget.pdfPath),
    );
  }
}
