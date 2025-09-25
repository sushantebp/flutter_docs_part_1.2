import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_app_2/examples/pages/backdropfilter_example_widget.dart';
import 'package:learn_app_2/examples/pages/transfrom_example_widget.dart';
import 'package:learn_app_2/examples/widgets/clip_widget.dart';
import 'package:learn_app_2/examples/widgets/custom_painter_example_widget.dart';

@RoutePage()
class PaintingWidetsPage extends StatelessWidget {
  const PaintingWidetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Painting Related Widgets"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: const Column(
          children: [
            Opacity(opacity: 0.4, child: ClipWidget()),
            SizedBox(height: 12),
            RotatedBox(
              quarterTurns: 2,
              child: SelectableText(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda numquam sequi quaerat amet cupiditate qui, voluptatibus voluptatum non eveniet enim quos sit quia ducimus, id facere nesciunt veritatis, incidunt animi.",
              ),
            ),
            SizedBox(height: 12),
            TransfromExampleWidget(),
            SizedBox(height: 12),
            CustomPaintExampleWidget(),
            SizedBox(height: 12),
            BackdropExampleWidget(),
          ],
        ),
      ),
    );
  }
}
