import 'package:flutter/material.dart';

class BabyNameCustomizerScreen extends StatefulWidget {
  const BabyNameCustomizerScreen({super.key});
  @override
  _BabyNameCustomizerScreenState createState() => _BabyNameCustomizerScreenState();
}

class _BabyNameCustomizerScreenState extends State<BabyNameCustomizerScreen> {
  final TextEditingController _babyNameController = TextEditingController();
  final TextEditingController _extraNameController = TextEditingController();
  String? _selectedFont;
  String? _selectedExtraFont;
  String? _selectedColor;
  String? _selectedExtraColor;
  bool _showExtraNameField = false;

  final List<String> fonts = ['Font 1', 'Font 2', 'Font 3'];
  final List<Color> colors = [
    Colors.yellow,
    Colors.grey,
    Colors.black,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.pink.shade200,
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "✨🌸 Personalize your baby's name 🌸✨",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Baby Name:"),
            TextField(
              controller: _babyNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter baby's name",
              ),
            ),
            const SizedBox(height: 20),
            const Text("Select The Font"),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              value: _selectedFont,
              hint: const Text("Please Select The Font"),
              items: fonts.map((font) {
                return DropdownMenuItem(
                  value: font,
                  child: Text(font),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedFont = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text("Select Sticker Color"),
            Wrap(
              spacing: 10,
              children: colors.map((color) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedColor = color.toString();
                    });
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: _selectedColor == color.toString()
                            ? Colors.black
                            : Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  _showExtraNameField = !_showExtraNameField;
                });
              },
              child: Row(
                children: [
                  Icon(_showExtraNameField
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down),
                  const Text("Extra Name (optional)"),
                ],
              ),
            ),
            if (_showExtraNameField)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: _extraNameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter extra name",
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text("Select Extra Name Font"),
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    value: _selectedExtraFont,
                    hint: const Text("Please Select The Font"),
                    items: fonts.map((font) {
                      return DropdownMenuItem(
                        value: font,
                        child: Text(font),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedExtraFont = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text("Select Extra Name Sticker Color"),
                  Wrap(
                    spacing: 10,
                    children: colors.map((color) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedExtraColor = color.toString();
                          });
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: _selectedExtraColor == color.toString()
                                  ? Colors.black
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
          ],
        ),
     
    );
  }
}
