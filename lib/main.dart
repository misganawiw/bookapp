import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(MaterialApp(
    title: 'syncfusion',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
    ),
    home: HomePage(),
  ));
}

/// Represents Homepage for Navigation
class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter PDF Viewer'),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(
        //       Icons.bookmark,
        //       color: Colors.white,
        //       semanticLabel: 'Bookmark',
        //     ),
        //     onPressed: () {
        //       _pdfViewerKey.currentState?.openBookmarkView();
        //     },
        //   ),
        // ],
      ),
      body: SfPdfViewer.asset(
        'assets/3.pdf',
        //key: _pdfViewerKey,
      ),
    );
  }
}
