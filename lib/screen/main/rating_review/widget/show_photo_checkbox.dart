import 'package:flutter/material.dart';

class ShowPhotoCheckbox extends StatelessWidget {
  final bool showPhoto;
  final void Function(bool?)? onChanged;

  const ShowPhotoCheckbox({
    Key? key,
    required this.showPhoto,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: showPhoto,
      onChanged: onChanged,
      activeColor: Colors.black,
      checkColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      side: BorderSide(color: Colors.grey.shade500, width: 1.0),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
    );
  }
}
