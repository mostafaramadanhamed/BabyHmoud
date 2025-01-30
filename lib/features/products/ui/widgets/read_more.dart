import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ReadMoreText extends StatefulWidget {
  final String text;
  final int maxLines;
  final TextStyle? style;

  const ReadMoreText(
      {super.key, required this.text, this.maxLines = 3, this.style});

  @override
  _ReadMoreTextState createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _isExpanded ? widget.text : widget.text.substring(0, 180),
          style: widget.style,
          maxLines: _isExpanded ? null : widget.maxLines,
        ),
        if (widget.text.length > 180)
          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Text(
              _isExpanded ? 'Show less' : 'Read more',
              style: const TextStyle(
                color: AppColors.darkBrown,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
      ],
    );
  }
}
