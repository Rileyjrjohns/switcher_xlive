library switcher_xlive;

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

part 'animation_switch.dart';

part 'thumb_painter.dart';

class SwitcherXlive extends StatefulWidget {
  //create a switcher with animation similar https://dribbble.com/shots/5429846-Switcher-XLIV
  const SwitcherXlive({
    Key? key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.unActiveColor,
    this.thumbColor,
  }) : super(key: key);

  final bool value;

  final ValueChanged<bool> onChanged;

  final Color? activeColor;

  final Color? unActiveColor;

  final Color? thumbColor;

  @override
  _SwitcherXliveState createState() => _SwitcherXliveState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(FlagProperty('value', value: value, ifTrue: 'on', ifFalse: 'off', showName: true));
    properties.add(ObjectFlagProperty<ValueChanged<bool>>('onChanged', onChanged, ifNull: 'disabled'));
  }
}

class _SwitcherXliveState extends State<SwitcherXlive> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return _SwitcherXliveRenderObjectWidget(
      value: widget.value,
      activeColor: widget.activeColor ?? CupertinoColors.activeGreen,
      onChanged: widget.onChanged,
      thumbColor: widget.thumbColor ?? CupertinoColors.white,
      unActiveColor: widget.unActiveColor ?? CupertinoColors.destructiveRed,
      vsync: this,
    );
  }
}

