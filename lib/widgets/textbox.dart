import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Padding LocationTextBox(bool isActiveColor) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      height: 35,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), 
          ),
        ],
      ),
      child: TextFormField(
        cursorColor: Colors.deepOrange,
        decoration: InputDecoration(
            fillColor: isActiveColor ? Colors.white : Colors.grey[200],
            filled: true,
            contentPadding: EdgeInsets.zero,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.orange)),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            prefixIcon: const Icon(
              Icons.location_on_outlined,
              color: Colors.deepOrange,
            ),
            prefixIconConstraints: const BoxConstraints.tightFor(width: 40),
            hintText: "Set your delivery location",
            hintStyle: const TextStyle(color: Colors.grey)),
      ),
    ),
  );
}
