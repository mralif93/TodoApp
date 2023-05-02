import 'package:flutter_svg/flutter_svg.dart';

class PreCacheAssets {
  static Future<void> preLoadAllSvg() async {
    await Future.wait([
      precachePicture(ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, 'assets/svg/to_do_list.svg'), null),
      precachePicture(ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, 'assets/icons/success.svg'), null),
    ]);
  }
}
