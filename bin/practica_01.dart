import 'dart:io';
// importar de lib el clases.dart
import 'package:practica_01/clases.dart';

void main() {
  print("       EVALUACIÓN PRÁCTICA  1          ");

  // --- este es el enunciado del ejercicio 1 ---
  print("--- REGISTRO DE ESTUDIANTE ---");
  print("Ingrese el nombre del estudiante:");
  String nomEst = stdin.readLineSync()!;
  print("Ingrese la nota 1:");
  double n1 = double.parse(stdin.readLineSync()!);
  print("Ingrese la nota 2:");
  double n2 = double.parse(stdin.readLineSync()!);
  print("Ingrese la nota 3:");
  double n3 = double.parse(stdin.readLineSync()!);

  Estudiante e1 = Estudiante(nomEst, n1, n2, n3);
  e1.mostrarReporte();

  // --- enunciado del ejercicio 2  ---
  print("--- REGISTRO DE PRODUCTO ---");
  print("Ingrese el nombre del producto:");
  String nomProd = stdin.readLineSync()!;
  print("Ingrese el precio unitario:");
  double precio = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad disponible:");
  int cant = int.parse(stdin.readLineSync()!);

  Producto p1 = Producto(nomProd, precio, cant);
  p1.mostrarInformacion();

  // --- enunciado del ejercicio 3  ---
  print("--- REGISTRO DE VENDEDOR ---");
  print("Ingrese el nombre del vendedor:");
  String nomVend = stdin.readLineSync()!;
  print("Ingrese el monto total de ventas:");
  double ventas = double.parse(stdin.readLineSync()!);

  Vendedor v1 = Vendedor(nomVend, ventas);
  v1.mostrarReporte();

  // --- enunciado del ejercicio 4  ---
  print("--- REGISTRO DE CIUDAD ---");
  print("Ingrese el nombre de la ciudad:");
  String ciudadInput = stdin.readLineSync()!;

  RegistroTemperaturas r1 = RegistroTemperaturas(ciudadInput);
  r1.registrarTemperaturas();
  r1.mostrarReporte();
}