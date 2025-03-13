import 'package:flutter/material.dart';

void main() => runApp(MiExamenDeLeon());

class Producto {
  final int productoID;
  final String nombre;
  final String descripcion;
  final double precio;
  final String categoria;
  final int stock;
  final String fechaIngreso;

  Producto({
    required this.productoID,
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.categoria,
    required this.stock,
    required this.fechaIngreso,
  });

  @override
  String toString() {
    return "ID: $productoID\nNombre: $nombre\nDescripción: $descripcion\nPrecio: \$${precio.toStringAsFixed(2)}\nCategoría: $categoria\nStock: $stock\nFecha de Ingreso: $fechaIngreso";
  }
}

class MiExamenDeLeon extends StatelessWidget {
  const MiExamenDeLeon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Producto> productoslista = [
      Producto(
        productoID: 1,
        nombre: "CheeseCake",
        descripcion: "CheeseCake con base de galleta",
        precio: 120,
        categoria: "CheeseCakes",
        stock: 100,
        fechaIngreso: "2025-03-13",
      ),
      Producto(
        productoID: 2,
        nombre: "Cupcake",
        descripcion: "Cupcake de chocolate con chispas",
        precio: 30,
        categoria: "Cupcakes",
        stock: 100,
        fechaIngreso: "2025-03-10",
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("De Leon Productos 1165"),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          centerTitle: true,
          backgroundColor: Color(0xffb167ed),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    color: Color(0xff6cbeff),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Producto 1",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(height: 8),
                          Text(productoslista[0].toString(),
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    color: Color(0xffef9cff),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Producto 2",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(height: 8),
                          Text(productoslista[1].toString(),
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
