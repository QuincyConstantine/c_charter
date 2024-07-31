import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import your PdfViewerScreen

class FlippingCard extends StatefulWidget {
  final String frontText;
  final String backText;
  final String? pdfPath; // Optional PDF path
  final Color frontColor;
  final Color backColor;
  final Color frontTextColor;
  final Color backTextColor;
  final double frontTextSize;
  final double backTextSize;

  FlippingCard({
    required this.frontText,
    required this.backText,
    this.pdfPath,
    this.frontColor = Colors.white,
    this.backColor = Colors.grey,
    this.frontTextColor = Colors.white,
    this.backTextColor = Colors.black,
    this.frontTextSize = 20.0,
    this.backTextSize = 14.0,
  });

  @override
  _FlippingCardState createState() => _FlippingCardState();
}

class _FlippingCardState extends State<FlippingCard> {
  bool isFlipped = false;

  void _flipCard() {
    setState(() {
      isFlipped = !isFlipped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null && details.primaryVelocity! > 0) {
          _flipCard();
        } else if (details.primaryVelocity != null && details.primaryVelocity! < 0) {
          _flipCard();
        }
      },
      onTap: () {
        if (!isFlipped && widget.pdfPath != null) {
          print('PDF Path: ${widget.pdfPath}'); // Debug print statement
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyPdfViewer(pdfPath: widget.pdfPath!),
            ),
          );
        }
      },
      child: Card(
        margin: EdgeInsets.all(10),
        child: Container(
          height: 200,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: isFlipped ? widget.backColor : widget.frontColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isFlipped ? widget.backText : widget.frontText,
                style: TextStyle(
                  fontSize: isFlipped ? widget.backTextSize : widget.frontTextSize,
                  fontWeight: FontWeight.bold,
                  color: isFlipped ? widget.backTextColor : widget.frontTextColor,
                ),
              ),
              if (!isFlipped)
                SizedBox(height: 10),
              if (!isFlipped)
                Text(
                  'Click to view details',
                  style: TextStyle(color: Colors.white70),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
