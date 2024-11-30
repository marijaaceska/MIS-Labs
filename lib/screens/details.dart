import 'package:flutter/material.dart';
import '../models/clothing_model.dart';
import '../widgets/details_backbutton.dart';
import '../widgets/details_data.dart';
import '../widgets/details_image.dart';
import '../widgets/details_title.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Clothing;

    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.name),
        backgroundColor: Colors.brown[300],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailsImage(image: arguments.image),
            DetailsTitle(name: arguments.name, brand: arguments.brand),
            DetailsData(description: arguments.description, price: arguments.price),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailsBackButton(),
    );
  }
}

