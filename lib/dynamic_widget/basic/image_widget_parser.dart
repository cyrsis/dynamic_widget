import 'dart:io';
import 'dart:ui';

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:flutter/widgets.dart';

class AssetImageWidgetParser extends WidgetParser {
  @override
  bool forWidget(String widgetName) {
    return "AssetImage" == widgetName;
  }

  @override
  Widget parse(Map<String, dynamic> map, ClickListener listener) {
    String name = map['name'];
    String semanticLabel =
        map.containsKey('semanticLabel') ? map['semanticLabel'] : null;
    bool excludeFromSemantics = map.containsKey('excludeFromSemantics')
        ? map['excludeFromSemantics']
        : false;
    double scale = map.containsKey("scale") ? map['scale'] : null;
    double width = map.containsKey('width') ? map['width'] : null;
    double height = map.containsKey('height') ? map['height'] : null;
    Color color = map.containsKey('color') ? parseHexColor(map['color']) : null;
    BlendMode blendMode =
        map.containsKey('blendMode') ? parseBlendMode(map['blendMode']) : null;
    BoxFit boxFit =
        map.containsKey('boxFit') ? parseBoxFit(map['boxFit']) : null;
    Alignment alignment = map.containsKey('alignment')
        ? parseAlignment(map['alignment'])
        : Alignment.center;
    ImageRepeat repeat = map.containsKey('repeat')
        ? parseImageRepeat(map['repeat'])
        : ImageRepeat.noRepeat;
    Rect centerSlice =
        map.containsKey('centerSlice') ? parseRect(map['centerSlice']) : null;
    bool matchTextDirection = map.containsKey('matchTextDirection')
        ? map['matchTextDirection']
        : false;
    bool gaplessPlayback =
        map.containsKey('gaplessPlayback') ? map['gaplessPlayback'] : false;
    FilterQuality filterQuality = map.containsKey('filterQuality')
        ? parseFilterQuality(map['filterQuality'])
        : FilterQuality.low;

    String clickEvent =
    map.containsKey("click_event") ? map['click_event'] : "";

    var widget = Image.asset(
      name,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      colorBlendMode: blendMode,
      fit: boxFit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
    );

    if (listener!=null && (clickEvent != null && clickEvent.isNotEmpty )){
      return GestureDetector(
        onTap: (){
          listener.onClicked(clickEvent);
        },
        child: widget,
      );
    }
    return widget;
  }
}

class NetworkImageWidgetParser extends WidgetParser {
  @override
  bool forWidget(String widgetName) {
    return "NetworkImage" == widgetName;
  }

  @override
  Widget parse(Map<String, dynamic> map, ClickListener listener) {
    String src = map['src'];
    String semanticLabel =
        map.containsKey('semanticLabel') ? map['semanticLabel'] : null;
    bool excludeFromSemantics = map.containsKey('excludeFromSemantics')
        ? map['excludeFromSemantics']
        : false;
    double scale = map.containsKey("scale") ? map['scale'] : 1.0;
    double width = map.containsKey('width') ? map['width'] : null;
    double height = map.containsKey('height') ? map['height'] : null;
    Color color = map.containsKey('color') ? parseHexColor(map['color']) : null;
    BlendMode blendMode =
        map.containsKey('blendMode') ? parseBlendMode(map['blendMode']) : null;
    BoxFit boxFit =
        map.containsKey('boxFit') ? parseBoxFit(map['boxFit']) : null;
    Alignment alignment = map.containsKey('alignment')
        ? parseAlignment(map['alignment'])
        : Alignment.center;
    ImageRepeat repeat = map.containsKey('repeat')
        ? parseImageRepeat(map['repeat'])
        : ImageRepeat.noRepeat;
    Rect centerSlice =
        map.containsKey('centerSlice') ? parseRect(map['centerSlice']) : null;
    bool matchTextDirection = map.containsKey('matchTextDirection')
        ? map['matchTextDirection']
        : false;
    bool gaplessPlayback =
        map.containsKey('gaplessPlayback') ? map['gaplessPlayback'] : false;
    FilterQuality filterQuality = map.containsKey('filterQuality')
        ? parseFilterQuality(map['filterQuality'])
        : FilterQuality.low;

    String clickEvent =
    map.containsKey("click_event") ? map['click_event'] : "";

    var widget = Image.network(
      src,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      colorBlendMode: blendMode,
      fit: boxFit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
    );

    if (listener!=null && (clickEvent != null && clickEvent.isNotEmpty )){
      return GestureDetector(
        onTap: (){
          listener.onClicked(clickEvent);
        },
        child: widget,
      );
    }
    return widget;
  }
}

class FileImageWidgetParser extends WidgetParser {
  @override
  bool forWidget(String widgetName) {
    return "FileImage" == widgetName;
  }

  @override
  Widget parse(Map<String, dynamic> map, ClickListener listener) {
    String filePath = map['filePath'];
    File file = File(filePath);
    String semanticLabel =
        map.containsKey('semanticLabel') ? map['semanticLabel'] : null;
    bool excludeFromSemantics = map.containsKey('excludeFromSemantics')
        ? map['excludeFromSemantics']
        : false;
    double scale = map.containsKey("scale") ? map['scale'] : 1.0;
    double width = map.containsKey('width') ? map['width'] : null;
    double height = map.containsKey('height') ? map['height'] : null;
    Color color = map.containsKey('color') ? parseHexColor(map['color']) : null;
    BlendMode blendMode =
        map.containsKey('blendMode') ? parseBlendMode(map['blendMode']) : null;
    BoxFit boxFit =
        map.containsKey('boxFit') ? parseBoxFit(map['boxFit']) : null;
    Alignment alignment = map.containsKey('alignment')
        ? parseAlignment(map['alignment'])
        : Alignment.center;
    ImageRepeat repeat = map.containsKey('repeat')
        ? parseImageRepeat(map['repeat'])
        : ImageRepeat.noRepeat;
    Rect centerSlice =
        map.containsKey('centerSlice') ? parseRect(map['centerSlice']) : null;
    bool matchTextDirection = map.containsKey('matchTextDirection')
        ? map['matchTextDirection']
        : false;
    bool gaplessPlayback =
        map.containsKey('gaplessPlayback') ? map['gaplessPlayback'] : false;
    FilterQuality filterQuality = map.containsKey('filterQuality')
        ? parseFilterQuality(map['filterQuality'])
        : FilterQuality.low;

    String clickEvent =
    map.containsKey("click_event") ? map['click_event'] : "";

    var widget = Image.file(
      file,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      colorBlendMode: blendMode,
      fit: boxFit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
    );

    if (listener!=null && (clickEvent != null && clickEvent.isNotEmpty )){
      return GestureDetector(
        onTap: (){
          listener.onClicked(clickEvent);
        },
        child: widget,
      );
    }
    return widget;
  }
}
