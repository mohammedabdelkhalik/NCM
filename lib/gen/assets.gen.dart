/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg.png
  AssetGenImage get bg => const AssetGenImage('assets/images/bg.png');

  /// File path: assets/images/icon.png
  AssetGenImage get icon => const AssetGenImage('assets/images/icon.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [bg, icon, logo];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/electric.svg
  SvgGenImage get electric => const SvgGenImage('assets/svg/electric.svg');

  /// File path: assets/svg/home.png
  AssetGenImage get homePng => const AssetGenImage('assets/svg/home.png');

  /// File path: assets/svg/home.svg
  SvgGenImage get homeSvg => const SvgGenImage('assets/svg/home.svg');

  /// File path: assets/svg/icon_1.svg
  SvgGenImage get icon1 => const SvgGenImage('assets/svg/icon_1.svg');

  /// File path: assets/svg/icon_2.svg
  SvgGenImage get icon2 => const SvgGenImage('assets/svg/icon_2.svg');

  /// File path: assets/svg/icon_3.svg
  SvgGenImage get icon3 => const SvgGenImage('assets/svg/icon_3.svg');

  /// File path: assets/svg/main_icon.svg
  SvgGenImage get mainIcon => const SvgGenImage('assets/svg/main_icon.svg');

  /// File path: assets/svg/moon.svg
  SvgGenImage get moon => const SvgGenImage('assets/svg/moon.svg');

  /// File path: assets/svg/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/svg/notification.svg');

  /// File path: assets/svg/rain.svg
  SvgGenImage get rain => const SvgGenImage('assets/svg/rain.svg');

  /// File path: assets/svg/search.svg
  SvgGenImage get search => const SvgGenImage('assets/svg/search.svg');

  /// File path: assets/svg/services.svg
  SvgGenImage get services => const SvgGenImage('assets/svg/services.svg');

  /// File path: assets/svg/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/svg/settings.svg');

  /// File path: assets/svg/wind.svg
  SvgGenImage get wind => const SvgGenImage('assets/svg/wind.svg');

  /// File path: assets/svg/wind_moon.svg
  SvgGenImage get windMoon => const SvgGenImage('assets/svg/wind_moon.svg');

  /// List of all assets
  List<dynamic> get values => [
        electric,
        homePng,
        homeSvg,
        icon1,
        icon2,
        icon3,
        mainIcon,
        moon,
        notification,
        rain,
        search,
        services,
        settings,
        wind,
        windMoon
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
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
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
