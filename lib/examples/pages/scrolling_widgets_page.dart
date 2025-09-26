import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_app_2/core/constants/app_constants.dart';

@RoutePage()
class ScrollingWidgetsPage extends StatefulWidget {
  const ScrollingWidgetsPage({super.key});

  @override
  State<ScrollingWidgetsPage> createState() => _ScrollingWidgetsPageState();
}

class _ScrollingWidgetsPageState extends State<ScrollingWidgetsPage> {
  final ScrollController scrollController = ScrollController();
  final List<String> _items = [
    'Fruits: Apple',
    'Fruits: Banana',
    'Fruits: Mango',
    'Vegetables: Carrot',
    'Vegetables: Broccoli',
    'Vegetables: Spinach',
  ];

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) newIndex -= 1;
      final item = _items.removeAt(oldIndex);
      _items.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrolling Widget Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const CarouselSection(),
          const SizedBox(height: 12),
          // Reorderable List Section
          Expanded(
            child: ReorderableListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              itemCount: _items.length,
              onReorder: _onReorder,
              itemBuilder: (context, index) {
                final item = _items[index];
                return ListTile(
                  key: ValueKey(item),
                  title: Text(item),
                  leading: const Icon(Icons.drag_handle),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
          const DraggableScrollableSection(),
        ],
      ),
    );
  }
}

class DraggableScrollableSection extends StatelessWidget {
  const DraggableScrollableSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: DraggableScrollableSheet(
        initialChildSize: 0.3,
        minChildSize: 0.1,
        maxChildSize: 0.8,
        builder: (context, sheetScrollController) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: ListView.builder(
              controller: sheetScrollController,
              itemCount: 50,
              itemBuilder: (context, index) =>
                  ListTile(title: Text("Sheet Item ${index + 1}")),
            ),
          );
        },
      ),
    );
  }
}

class CarouselSection extends StatelessWidget {
  const CarouselSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselView(
        itemExtent: 500,
        itemSnapping: true,
        children: List.generate(
          10,
          (index) => FadeInImage.assetNetwork(
            placeholder: AppImages.placeHolder,
            image: "${AppConstants.imageEndpoint}/${200 + index}",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
