import 'package:flutter/material.dart';
import 'package:minimart/common/widgets/custom_shape/containers/circular_container.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class ChoiceChipWidget extends StatelessWidget {
  const ChoiceChipWidget({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = HelperFunction.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        // ignore: dead_code
        labelStyle: TextStyle(color: selected ? AppColors.white : null),
        avatar: isColor
            ? CircularContainer(
                width: 50,
                height: 50,
                backgroundColor: HelperFunction.getColor(text)!)
            : null,
        shape:
            HelperFunction.getColor(text) != null ? const CircleBorder() : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,

        backgroundColor: isColor ? HelperFunction.getColor(text)! : null,
      ),
    );
  }
}
