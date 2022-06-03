import 'package:farmapp/utils/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

import 'dart:async';
import 'dart:io';

import 'package:farmapp/utils/globals.dart' as globals;

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pdf_render/pdf_render.dart';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:pdf_render/pdf_render_widgets.dart';
import 'dart:convert';

import '/utils/globals.dart' as globals;

class PDFViewerPage extends StatefulWidget {
  const PDFViewerPage({Key? key}) : super(key: key);

  @override
  State<PDFViewerPage> createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {
  _PDFViewerPageState({Key? key});

  final controller = PdfViewerController();

  TapDownDetails? _doubleTapDetails;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Bu sayfadayım");
    print("PDF: " + globals.selectedSeller.brochure);
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        title: Text(
          globals.selectedSeller.title + " / Broşür",
        ),
      ),
      body: GestureDetector(
        onDoubleTapDown: (details) => _doubleTapDetails = details,
        onDoubleTap: () => controller.ready?.setZoomRatio(
          zoomRatio: controller.zoomRatio * 1.5,
          center: _doubleTapDetails!.localPosition,
        ),
        child: PdfViewer.openFutureFile(
          // Accepting function that returns Future<String> of PDF file path
          () async => (await DefaultCacheManager()
                  .getSingleFile(globals.selectedSeller.brochure))
              .path,
          viewerController: controller,
          onError: (err) => print(err),
          params: const PdfViewerParams(
            padding: 10,
            minScale: 1.0,
            // scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
