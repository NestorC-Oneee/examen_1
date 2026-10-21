import 'dart:io';

// ==========================================
// EJERCICIO 1
// ==========================================
class Estudiante {
  String nombre;
  double nota1;
  double nota2;
  double nota3;

  Estudiante(this.nombre, this.nota1, this.nota2, this.nota3);

  double calcularPromedio() {
    return (nota1 + nota2 + nota3) / 3;
  }

  String determinarEstado() {
    double promedio = calcularPromedio();
    if (promedio >= 13) {
      return "Aprobado";
    } else {
      return "Desaprobado";
    }
  }

  void mostrarReporte() {
    print("\n--- REPORTE DEL ESTUDIANTE ---");
    print("Nombre: $nombre");
    print("Promedio: ${calcularPromedio()}");
    print("Estado: ${determinarEstado()}");
    print("");
  }
}

// ==========================================
// EJERCICIO 2
// ==========================================
class Producto {
  String nombre;
  double precioUnitario;
  int cantidadDisponible;

  Producto(this.nombre, this.precioUnitario, this.cantidadDisponible);

  double calcularValorInventario() {
    return precioUnitario * cantidadDisponible;
  }

  String determinarEstadoStock() {
    if (cantidadDisponible == 0) {
      return "Stock agotado";
    } else if (cantidadDisponible >= 1 && cantidadDisponible <= 5) {
      return "Stock bajo";
    } else {
      return "Stock suficiente";
    }
  }

  void mostrarInformacion() {
    print("\n--- INFORMACIÓN DEL PRODUCTO ---");
    print("Producto: $nombre");
    print("Precio unitario: S/ $precioUnitario");
    print("Cantidad disponible: $cantidadDisponible");
    print("Valor total del inventario: S/ ${calcularValorInventario()}");
    print("Estado del stock: ${determinarEstadoStock()}");
    print("");
  }
}

// ==========================================
// EJERCICIO 3
// ==========================================
class Vendedor {
  String nombre;
  double montoTotalVentas;

  Vendedor(this.nombre, this.montoTotalVentas);

  double calcularComision() {
    if (montoTotalVentas >= 2000) {
      return montoTotalVentas * 0.10;
    } else {
      return montoTotalVentas * 0.05;
    }
  }

  void mostrarReporte() {
    print("\n--- REPORTE DEL VENDEDOR ---");
    print("Vendedor: $nombre");
    print("Monto total de ventas: S/ $montoTotalVentas");
    print("Comisión obtenida: S/ ${calcularComision()}");
    print("");
  }
}

// ==========================================
// EJERCICIO 4
// ==========================================
class RegistroTemperaturas {
  String ciudad;
  List<double> temperaturas = [];

  RegistroTemperaturas(this.ciudad);

  void registrarTemperaturas() {
    print("\n--- REGISTRO DE TEMPERATURAS PARA $ciudad ---");
    for (int i = 1; i <= 5; i++) {
      print("Ingrese la temperatura del día $i (°C):");
      double temp = double.parse(stdin.readLineSync()!);
      temperaturas.add(temp);
    }
  }

  double calcularPromedio() {
    double suma = 0;
    for (int i = 0; i < temperaturas.length; i++) {
      suma = suma + temperaturas[i];
    }
    return suma / temperaturas.length;
  }

  int contarDiasCalurosos() {
    int contador = 0;
    for (int i = 0; i < temperaturas.length; i++) {
      if (temperaturas[i] > 30) {
        contador = contador + 1;
      }
    }
    return contador;
  }

  void mostrarReporte() {
    print("\n--- REPORTE CLIMÁTICO ---");
    print("Ciudad: $ciudad");
    print("Promedio de temperatura semanal: ${calcularPromedio()} °C");
    print("Cantidad de días calurosos (>30°C): ${contarDiasCalurosos()}");
    print("");
  }
}