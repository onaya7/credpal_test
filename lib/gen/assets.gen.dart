// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Avenir Black.ttf
  String get avenirBlack => 'assets/fonts/Avenir Black.ttf';

  /// File path: assets/fonts/Avenir Heavy.ttf
  String get avenirHeavy => 'assets/fonts/Avenir Heavy.ttf';

  /// File path: assets/fonts/Avenir Light.ttf
  String get avenirLight => 'assets/fonts/Avenir Light.ttf';

  /// File path: assets/fonts/Avenir Regular.ttf
  String get avenirRegular => 'assets/fonts/Avenir Regular.ttf';

  /// File path: assets/fonts/Axiforma-Bold.ttf
  String get axiformaBold => 'assets/fonts/Axiforma-Bold.ttf';

  /// File path: assets/fonts/Axiforma-Light.ttf
  String get axiformaLight => 'assets/fonts/Axiforma-Light.ttf';

  /// File path: assets/fonts/Axiforma-Regular.ttf
  String get axiformaRegular => 'assets/fonts/Axiforma-Regular.ttf';

  /// List of all assets
  List<String> get values => [
    avenirBlack,
    avenirHeavy,
    avenirLight,
    avenirRegular,
    axiformaBold,
    axiformaLight,
    axiformaRegular,
  ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic1.svg
  SvgGenImage get ic1 => const SvgGenImage('assets/icons/ic1.svg');

  /// File path: assets/icons/scan.svg
  SvgGenImage get scan => const SvgGenImage('assets/icons/scan.svg');

  /// File path: assets/icons/search-normal.svg
  SvgGenImage get searchNormal =>
      const SvgGenImage('assets/icons/search-normal.svg');

  /// List of all assets
  List<SvgGenImage> get values => [ic1, scan, searchNormal];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img1.png
  AssetGenImage get img1 => const AssetGenImage('assets/images/img1.png');

  /// File path: assets/images/img2.png
  AssetGenImage get img2 => const AssetGenImage('assets/images/img2.png');

  /// File path: assets/images/img3.png
  AssetGenImage get img3 => const AssetGenImage('assets/images/img3.png');

  /// File path: assets/images/img4.png
  AssetGenImage get img4 => const AssetGenImage('assets/images/img4.png');

  /// File path: assets/images/img5.png
  AssetGenImage get img5 => const AssetGenImage('assets/images/img5.png');

  /// File path: assets/images/img6.png
  AssetGenImage get img6 => const AssetGenImage('assets/images/img6.png');

  /// File path: assets/images/logo1.png
  AssetGenImage get logo1 => const AssetGenImage('assets/images/logo1.png');

  /// File path: assets/images/logo10.png
  AssetGenImage get logo10 => const AssetGenImage('assets/images/logo10.png');

  /// File path: assets/images/logo2.png
  AssetGenImage get logo2 => const AssetGenImage('assets/images/logo2.png');

  /// File path: assets/images/logo3.png
  AssetGenImage get logo3 => const AssetGenImage('assets/images/logo3.png');

  /// File path: assets/images/logo4.png
  AssetGenImage get logo4 => const AssetGenImage('assets/images/logo4.png');

  /// File path: assets/images/logo5.png
  AssetGenImage get logo5 => const AssetGenImage('assets/images/logo5.png');

  /// File path: assets/images/logo6.png
  AssetGenImage get logo6 => const AssetGenImage('assets/images/logo6.png');

  /// File path: assets/images/logo7.png
  AssetGenImage get logo7 => const AssetGenImage('assets/images/logo7.png');

  /// File path: assets/images/logo8.png
  AssetGenImage get logo8 => const AssetGenImage('assets/images/logo8.png');

  /// File path: assets/images/logo9.png
  AssetGenImage get logo9 => const AssetGenImage('assets/images/logo9.png');

  /// File path: assets/images/subimg1.png
  AssetGenImage get subimg1 => const AssetGenImage('assets/images/subimg1.png');

  /// File path: assets/images/subimg2.png
  AssetGenImage get subimg2 => const AssetGenImage('assets/images/subimg2.png');

  /// File path: assets/images/subimg3.png
  AssetGenImage get subimg3 => const AssetGenImage('assets/images/subimg3.png');

  /// File path: assets/images/subimg4.png
  AssetGenImage get subimg4 => const AssetGenImage('assets/images/subimg4.png');

  /// File path: assets/images/subimg5.png
  AssetGenImage get subimg5 => const AssetGenImage('assets/images/subimg5.png');

  /// File path: assets/images/subimg6.png
  AssetGenImage get subimg6 => const AssetGenImage('assets/images/subimg6.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    img1,
    img2,
    img3,
    img4,
    img5,
    img6,
    logo1,
    logo10,
    logo2,
    logo3,
    logo4,
    logo5,
    logo6,
    logo7,
    logo8,
    logo9,
    subimg1,
    subimg2,
    subimg3,
    subimg4,
    subimg5,
    subimg6,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
