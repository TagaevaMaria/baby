import 'package:baby/pages/screen_doctors/screen_doctors_model.dart';
import 'package:flutter/material.dart';




/// хранит модель
class ScreenDoctors extends StatefulWidget {
  const ScreenDoctors({Key? key}) : super(key: key);

  @override
  _ScreenDoctorsState createState() => _ScreenDoctorsState();
}

class _ScreenDoctorsState extends State<ScreenDoctors> {
  final _model = ScreenDoctorsModel();
  @override
  Widget build(BuildContext context) {
    return ScreenDoctorsModelProvider(
        model: _model, child: const ScreenDoctorsBody());
  }
}

class ScreenDoctorsBody extends StatelessWidget {
  const ScreenDoctorsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = ScreenDoctorsModelProvider.watch(context)?.model;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Запись на приемы к врачам'),
        backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
      ),
      body: const ListDoctors(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigoAccent,
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Добавить прием врача'),
                    content: TextField(
                      onChanged: (value) => model?.nameDoctors = value,
                      onEditingComplete: () => model?.saveDoctors(context),
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () => model?.saveDoctors(context),
                          child: const Text('ok'))
                    ],
                  );
                });
          },
          child: const Icon(
            Icons.add,
          )),
    );
  }
}

class ListDoctors extends StatelessWidget {
  const ListDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = ScreenDoctorsModelProvider.watch(context)?.model;
    final List _listDoctors =
        (ScreenDoctorsModelProvider.watch(context)?.model.listDoctors)!;

    return ListView.builder(
        itemCount: _listDoctors.length,
        itemBuilder: (BuildContext context, int index) {
          final _doctors = _listDoctors[index].addDoctors;
          return Dismissible(
            key: Key(_doctors),
            child: Card(
              child: ListTile(
                title: Text(_doctors),
              ),
            ),
          );
        });
  }
}

/*class ScreenDoctors extends StatefulWidget {
  const ScreenDoctors({Key? key}) : super(key: key);

  @override
  State<ScreenDoctors> createState() => _ScreenDoctorsState();
}

class _ScreenDoctorsState extends State<ScreenDoctors> {
  late String _userText;
  List listDoctors = [];
  @override
  void initState() {
    super.initState();
    listDoctors.addAll(['Аллерголог', 'Невролог', 'Педиатр']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      appBar: AppBar(backgroundColor: const Color.fromRGBO(165, 218, 249, 1)),
      body: ListView.builder(
          itemCount: listDoctors.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(listDoctors[index]),
              child: Card(
                child: ListTile(
                  title: Text(listDoctors[index]),
                ),
              ),
              onDismissed: (directional) {
                setState(() {
                  listDoctors.removeAt((index));
                });
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigoAccent,
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Добавить прием врача'),
                    content: TextField(
                      onChanged: (String value) {
                        _userText = value;
                      },
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              listDoctors.add(_userText);
                              Navigator.of(context).pop();
                            });
                          },
                          child: const Text('ok'))
                    ],
                  );
                });
          },
          child: const Icon(
            Icons.add_circle_outline,
            size: 50,
          )),
    );
  }
}
*/
