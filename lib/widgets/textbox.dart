import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Padding LocationTextBox(bool isActiveColor) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SizedBox(
      height: 35,
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: isActiveColor ? Colors.white : Colors.grey[200],
          filled: true,
          contentPadding: EdgeInsets.zero,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          prefixIcon: const Icon(
            Icons.location_on,
            color: Colors.grey,
          ),
          prefixIconConstraints: const BoxConstraints.tightFor(width: 40),
          hintText: "Set your delivery location",
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    ),
  );
}
