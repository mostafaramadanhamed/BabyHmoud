import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/widgets/app_text_form_filed.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/text_styles.dart';

class BabyNameCustomizerScreen extends StatefulWidget {
  const BabyNameCustomizerScreen({super.key});
  @override
  State<BabyNameCustomizerScreen> createState() =>
      _BabyNameCustomizerScreenState();
}

class _BabyNameCustomizerScreenState extends State<BabyNameCustomizerScreen> {
  //final TextEditingController _babyNameController = TextEditingController();
  //final TextEditingController _extraNameController = TextEditingController();
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
    return Column(
      children: [
     
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.grey.shade300,
                )),
            color: Colors.white,
            elevation: 4.0,
            shadowColor: Colors.grey.shade300,
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
               
                  10.ph,
                  const Text("Baby Name:"),
                  4.ph,
                  const AppTextFormField(
                    hintText: '',
                  ),
                  16.ph,
                  const Text("Select The Font"),
                  4.ph,
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    )),
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
                  16.ph,
                  const Text("Select Sticker Color"),
                  4.ph,
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
                  8.ph,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _showExtraNameField = !_showExtraNameField;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    
                        Text(
                          "Extra Name (optional)",
                          style: TextStyles.font17Black,
                        ),    Icon(_showExtraNameField
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  if (_showExtraNameField)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        8.ph,
                        const Text("Extra Name:"),
                        4.ph,
                        const AppTextFormField(hintText: ''),
                        16.ph,
                        const Text("Select Extra Name Font"),
                        4.ph,
                        DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          )),
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
                        16.ph,
                        const Text("Select Extra Name Sticker Color"),
                        4.ph,
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
                                    color:
                                        _selectedExtraColor == color.toString()
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
                    8.ph,
                ],
              ),
            ),
          ),
      ],
    );
  }
}
