import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_app_2/core/widgets/my_custom_clipper.dart';
import 'package:learn_app_2/core/widgets/my_custom_painter.dart';
import 'package:learn_app_2/examples/widgets/backdropfilter_example_widget.dart';
import 'package:learn_app_2/examples/widgets/transfrom_example_widget.dart';
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
        physics: const ScrollPhysics(),
        reverse: true,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const Opacity(opacity: 0.4, child: ClipWidget()),
            const SizedBox(height: 12),
            const RotatedBox(
              quarterTurns: 2,
              child: SelectableText(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda numquam sequi quaerat amet cupiditate qui, voluptatibus voluptatum non eveniet enim quos sit quia ducimus, id facere nesciunt veritatis, incidunt animi.",
              ),
            ),
            const SizedBox(height: 12),
            const TransfromExampleWidget(),
            const SizedBox(height: 12),
            const CustomPaintExampleWidget(),
            const SizedBox(height: 12),
            const BackdropExampleWidget(),
            const SizedBox(height: 12),
            ClipPath(
              clipper: MyCustomClipper(),
              child: Container(height: 200, width: 200, color: Colors.black),
            ),
            const SizedBox(height: 12),
            CustomPaint(painter: MyCustomPainter()),
          ],
        ),
      ),
    );
  }
}
