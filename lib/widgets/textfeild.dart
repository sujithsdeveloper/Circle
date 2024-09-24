import 'package:flutter/material.dart';

class TextfeildWidget extends StatelessWidget {
  const TextfeildWidget({
    super.key,
    required this.iconColor,
    required this.label,
    required this.labelIcon,
  });

  final Color iconColor;
  final String label;
  final Icon labelIcon;

  @override
  Widget build(BuildContext context) {
    final Color currentThemeColor =
        Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black;
    final Color cursorColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;
    return TextFormField(
      style: TextStyle(color: currentThemeColor),
      cursorColor: cursorColor,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
          focusColor: Colors.black,
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              labelIcon,
              const SizedBox(width: 5),
              Text(
                label,
                style: TextStyle(color: iconColor),
              )
            ],
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.grey))),
    );
  }
}
