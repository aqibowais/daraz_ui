import 'package:flutter/material.dart';

PreferredSizeWidget? homeAppBar({
  required bool isActiveColor,
  required IconData leadingIcon,
  required IconData actionIcon1,
  required IconData actionIcon2,
  VoidCallback? onLeadingPressed,
  VoidCallback? onAction1Pressed,
  VoidCallback? onAction2Pressed,
}) {
  return AppBar(
    backgroundColor: isActiveColor ? Colors.transparent : Colors.white,
    elevation: 0,
    surfaceTintColor: Colors.transparent,
    leading: IconButton(
      onPressed: onLeadingPressed ?? () {},
      icon: Icon(leadingIcon),
    ),
    leadingWidth: 50,
    titleSpacing: 0,
    title: SizedBox(
      height: 35,
      child: TextFormField(
        cursorColor: Colors.deepOrange,
        decoration: InputDecoration(
          fillColor: isActiveColor ? Colors.white : Colors.grey[200],
          filled: true,
          contentPadding: EdgeInsets.zero,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          prefixIconConstraints: const BoxConstraints.tightFor(width: 40),
          hintText: "Search ...",
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    ),
    actions: [
      const SizedBox(width: 5),
      SizedBox(
        width: 40,
        child: IconButton(
          onPressed: onAction1Pressed ?? () {},
          icon: Icon(
            actionIcon1,
            color: Colors.orange,
          ),
        ),
      ),
      SizedBox(
        width: 40,
        child: IconButton(
          onPressed: onAction2Pressed ?? () {},
          icon: Icon(actionIcon2),
        ),
      ),
      const SizedBox(width: 5),
    ],
  );
}
