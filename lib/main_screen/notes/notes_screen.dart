import 'package:baby/ui/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../ui/navigation/main_navigation.dart';
import 'notes_screen_model.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class NotesScreenDI extends StatelessWidget {
  const NotesScreenDI({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotesScreenVM(),
      child: const NotesScreen(),
    );
  }
}

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelRead = context.read<NotesScreenVM>();
    final _modelWatch = context.watch<NotesScreenVM>();
    return BackgroundWidget(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Заметки'),
            ),
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: const _NotesListWidget(),
            floatingActionButton: FloatingActionButton( onPressed: ()=> Navigator.pushNamed(context, MainNavigationRouteNames.newNoteScreenDI),
                child: const Icon(Icons.add))
            ));
  }
}

class _NotesListWidget extends StatelessWidget {
  const _NotesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _modelRead = context.read<NotesScreenVM>();
    final _modelWatch = context.watch<NotesScreenVM>();
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return  _RowNotesListWidget(indexInList: index);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
              height: 10,
            ),
        itemCount: 10);
  }
}

class _RowNotesListWidget extends StatelessWidget {
  final int indexInList;
  const _RowNotesListWidget({super.key, required this.indexInList});

  @override
  Widget build(BuildContext context) {
    return   Slidable(
        key: const ValueKey(0),
      endActionPane: ActionPane(motion: const DrawerMotion(), children:  [
        SlidableAction(
          onPressed:(BuildContext context) {  },
          backgroundColor: const Color(0xFFFE4A49),
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: 'Delete',
        ),
      ],),

      child: const ListTile(
        title: Text('тут будет заметка'),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
