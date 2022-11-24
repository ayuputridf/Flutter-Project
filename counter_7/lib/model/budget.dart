import 'package:flutter/material.dart';
// Membuat file budget yang akan menampilkan attribute yang dibutuhkan
class Budget {
  String judul;
  String nominal;
  String jenis;
  String date;

  Budget(this.judul, this.nominal, this.jenis, this.date);
}