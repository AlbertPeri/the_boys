import 'package:flutter/material.dart';
import 'package:hackaton_tooba/model/object_map.dart';
import 'package:hackaton_tooba/object_widget.dart';

class PositionMap extends StatefulWidget {
  const PositionMap({
    super.key,
    required this.objectWidget,
    this.top,
    this.left,
    this.right,
    this.bottom,
  });

  final ObjectWidget objectWidget;

  final double? top;
  final double? left;
  final double? right;
  final double? bottom;

  @override
  State<PositionMap> createState() => _PositionMapState();
}

class _PositionMapState extends State<PositionMap> {
  late ObjectWidget objectWidget;

  @override
  void initState() {
    super.initState();
    objectWidget = widget.objectWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.top,
      left: widget.left,
      right: widget.right,
      bottom: widget.bottom,
      child: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: const Text('Хотите пожертвовать?'),
                    content: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Вы жертвуете семьям лишивихся домов'),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Сумма',
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Отмена'),
                      ),
                      TextButton(
                        onPressed: () async {
                          setState(() {
                            objectWidget.objectMap.type = ObjectType.after;
                          });
                          Navigator.of(context).pop();
                        },
                        child: const Text('Пожертвовать',
                            style: TextStyle(color: Colors.green)),
                      ),
                    ],
                  ));
        },
        child: objectWidget,
      ),
    );
  }
}
