import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;

Future<Uint8List> getBytesFromAsset(String path, int width) async {
  final ByteData data = await rootBundle.load(path);
  final Uint8List bytes = data.buffer.asUint8List();
  final decodedImage = img.decodeImage(bytes);
  final resizedImage = img.copyResize(decodedImage!, width: width);
  return img.encodePng(resizedImage);
}
