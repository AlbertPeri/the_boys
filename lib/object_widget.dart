import 'package:flutter/material.dart';
import 'package:hackaton_tooba/model/object_map.dart';

class ObjectWidget extends StatefulWidget {
  const ObjectWidget({super.key, required this.objectMap});

  final ObjectMap objectMap;

  @override
  State<ObjectWidget> createState() => _ObjectWidgetState();
}

class _ObjectWidgetState extends State<ObjectWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.objectMap.type == ObjectType.before
        ? Image.asset(
            widget.objectMap.imgUrlBefore,
            width: 70,
            height: 70,
          )
        : Image.asset(
            widget.objectMap.imgUrlAfter,
            width: 70,
            height: 70,
          );
  }
}
