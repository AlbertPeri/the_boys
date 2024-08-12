import 'package:chat_gpt_flutter/chat_gpt_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_tooba/model/object_map.dart';
import 'package:hackaton_tooba/object_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String imgUrlR = 'assets/img/ruined_house.png';

  String imgUrlU = 'assets/img/upgraded_house.png';

  final house = ObjectMap(
    name: 'Дом',
    type: ObjectType.before,
    imgUrlBefore: 'assets/img/ruined_house.png',
    imgUrlAfter: 'assets/img/upgraded_house.png',
  );

  final house2 = ObjectMap(
    name: 'Дом',
    type: ObjectType.before,
    imgUrlBefore: 'assets/img/ruined_house.png',
    imgUrlAfter: 'assets/img/upgraded_house.png',
  );

  final house3 = ObjectMap(
    name: 'Дом',
    type: ObjectType.before,
    imgUrlBefore: 'assets/img/ruined_house.png',
    imgUrlAfter: 'assets/img/upgraded_house.png',
  );

  final hospital = ObjectMap(
    name: 'Дом',
    type: ObjectType.before,
    imgUrlBefore: 'assets/img/hospital_ruinid.png',
    imgUrlAfter: 'assets/img/hospital_upgraded.png',
  );

  final hospital2 = ObjectMap(
    name: 'Дом',
    type: ObjectType.before,
    imgUrlBefore: 'assets/img/hospital_ruinid.png',
    imgUrlAfter: 'assets/img/hospital_upgraded.png',
  );

  final hospital3 = ObjectMap(
    name: 'Дом',
    type: ObjectType.before,
    imgUrlBefore: 'assets/img/hospital_ruinid.png',
    imgUrlAfter: 'assets/img/hospital_upgraded.png',
  );

  final player = ObjectMap(
    name: 'Дом',
    type: ObjectType.before,
    imgUrlBefore: 'assets/img/player.png',
    imgUrlAfter: 'assets/img/player_after.png',
  );
  final player2 = ObjectMap(
    name: 'Дом',
    type: ObjectType.before,
    imgUrlBefore: 'assets/img/player.png',
    imgUrlAfter: 'assets/img/player_after.png',
  );
  final player3 = ObjectMap(
    name: 'Дом',
    type: ObjectType.before,
    imgUrlBefore: 'assets/img/player.png',
    imgUrlAfter: 'assets/img/player_after.png',
  );

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/img/map2.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
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
                                    Navigator.of(context).pop();
                                    setState(() {
                                      house.type = ObjectType.after;
                                    });
                                  },
                                  child: const Text('Пожертвовать',
                                      style: TextStyle(color: Colors.green)),
                                ),
                              ],
                            ));
                  },
                  child: ObjectWidget(
                    objectMap: house,
                  ),
                ),
                Image.asset(
                  'assets/img/road.png',
                  width: 50,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                GestureDetector(
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
                                    Navigator.of(context).pop();
                                    setState(() {
                                      house2.type = ObjectType.after;
                                    });
                                  },
                                  child: const Text('Пожертвовать',
                                      style: TextStyle(color: Colors.green)),
                                ),
                              ],
                            ));
                  },
                  child: ObjectWidget(
                    objectMap: house2,
                  ),
                ),
                Image.asset(
                  'assets/img/road.png',
                  width: 50,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                GestureDetector(
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
                                    Navigator.of(context).pop();
                                    setState(() {
                                      house3.type = ObjectType.after;
                                    });
                                  },
                                  child: const Text('Пожертвовать',
                                      style: TextStyle(color: Colors.green)),
                                ),
                              ],
                            ));
                  },
                  child: ObjectWidget(
                    objectMap: house3,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
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
                                    Navigator.of(context).pop();
                                    setState(() {
                                      hospital.type = ObjectType.after;
                                    });
                                  },
                                  child: const Text('Пожертвовать',
                                      style: TextStyle(color: Colors.green)),
                                ),
                              ],
                            ));
                  },
                  child: ObjectWidget(
                    objectMap: hospital,
                  ),
                ),
                Image.asset(
                  'assets/img/road.png',
                  width: 50,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                GestureDetector(
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
                                    Navigator.of(context).pop();
                                    setState(() {
                                      hospital2.type = ObjectType.after;
                                    });
                                  },
                                  child: const Text('Пожертвовать',
                                      style: TextStyle(color: Colors.green)),
                                ),
                              ],
                            ));
                  },
                  child: ObjectWidget(
                    objectMap: hospital2,
                  ),
                ),
                Image.asset(
                  'assets/img/road.png',
                  width: 50,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                GestureDetector(
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
                                    Navigator.of(context).pop();
                                    setState(() {
                                      hospital3.type = ObjectType.after;
                                    });
                                  },
                                  child: const Text('Пожертвовать',
                                      style: TextStyle(color: Colors.green)),
                                ),
                              ],
                            ));
                  },
                  child: ObjectWidget(
                    objectMap: hospital3,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
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
                                    Navigator.of(context).pop();
                                    setState(() {
                                      player.type = ObjectType.after;
                                    });
                                  },
                                  child: const Text('Пожертвовать',
                                      style: TextStyle(color: Colors.green)),
                                ),
                              ],
                            ));
                  },
                  child: ObjectWidget(
                    objectMap: player,
                  ),
                ),
                Image.asset(
                  'assets/img/road.png',
                  width: 50,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                GestureDetector(
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
                                    Navigator.of(context).pop();
                                    setState(() {
                                      player2.type = ObjectType.after;
                                    });
                                  },
                                  child: const Text('Пожертвовать',
                                      style: TextStyle(color: Colors.green)),
                                ),
                              ],
                            ));
                  },
                  child: ObjectWidget(
                    objectMap: player2,
                  ),
                ),
                Image.asset(
                  'assets/img/road.png',
                  width: 50,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                GestureDetector(
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
                                    Navigator.of(context).pop();
                                    setState(() {
                                      player3.type = ObjectType.after;
                                    });
                                  },
                                  child: const Text('Пожертвовать',
                                      style: TextStyle(color: Colors.green)),
                                ),
                              ],
                            ));
                  },
                  child: ObjectWidget(
                    objectMap: player3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final chatGpt = ChatGpt(apiKey: 'asst_JvjFqspAUwrmvO4j8UTRF48U');

          const question =
              'Which Disney character famously leaves a glass slipper behind at a royal ball?';

          final request = CompletionRequest(
            prompt: [question],
            stream: true,
            maxTokens: 4000,
            model: ChatGptModel.gpt35Turbo.modelName,
          );

          final stream = await chatGpt.createCompletionStream(request);

          stream?.listen((onData) => print('HHhhhhhhhhhh $onData'));
        },
        child: const Icon(Icons.chat),
      ),
    );
  }
}
