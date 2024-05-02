import 'package:flutter/material.dart';
import 'screen_photo_by_ monteh_model.dart';


class ScreenPhotoMonthBody extends StatefulWidget {
  const ScreenPhotoMonthBody({super.key});

  @override
  State<ScreenPhotoMonthBody> createState() => _ScreenPhotoMonthBodyState();
}

class _ScreenPhotoMonthBodyState extends State<ScreenPhotoMonthBody> {
  final _model = ScreenPhotoByMonthModel();
  @override
  Widget build(BuildContext context) {
    return  ScreenPhotoByMonthProvider(model: _model, child: const PhotoByMonthBody(),);
  }
}



class PhotoByMonthBody extends StatelessWidget {
  const PhotoByMonthBody({super.key});

  @override
  Widget build(BuildContext context) {
    int month = 1;
    final _args = ModalRoute.of(context)?.settings.arguments;
    if (_args != null && _args is int) month = _args;

    return  Scaffold(
      body:  ScreenPhotoByMonthProvider.read(context)!.model.photos[month]!.isNotEmpty
          ? GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
        ),
        itemCount:ScreenPhotoByMonthProvider.read(context)!.model.photos[month]!.length,
        itemBuilder: (context, index) {
          final _photo = ScreenPhotoByMonthProvider.read(context)!.model.photos[month] ? [index] ??  'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg';
          return TextButton(
            onPressed: () {},
            child: Image.network(
              _photo,
              width: 150,
              height: 150,
            ),
          );
        },
      )
          : const Center(
        child: Text('За выбранный месяц нет фоторграий'),
      ),
    );
  }
}




