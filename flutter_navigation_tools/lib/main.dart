import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Navitagor 1.0 vs 2.0

// Route name

// Widget Page

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginView());
  }
}

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Login"),
            TextField(decoration: const InputDecoration(labelText: 'Correo')),
            const SizedBox(height: 12),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Contraseña'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: (){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Menu(title: "Menu de Opciones",)), (route) => false);},
              child: Text("Iniciar Sesion"),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  String title;

  Menu({required this.title});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    // widget.title;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>FAQ(title: "Preguntas Frecuentes",)), (route) => false);}, child: Text("FAQ")),
            ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductForm(title: 'Formulario de Productos',)));}, child: Text("Formulario de Productos")),
            ElevatedButton(onPressed: (){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginView()), (route) => false);}, child: Text("LogOut")),
          ],
        ),
      ),
    );
  }
}

class FAQ extends StatefulWidget {
  String title;

  FAQ({required this.title});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    // widget.title;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Preguntas Frecuentes"),
            SizedBox(height: 12),
            Text("¿Cómo puedo cambiar mi contraseña?"),
            SizedBox(height: 12),
            Text("¿Dónde puedo ver mis pedidos?"),
            SizedBox(height: 12),
            Text("¿Cómo contacto al soporte?"),
            SizedBox(height: 12),

            ElevatedButton(onPressed: (){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Menu(title: "Menu de Opciones",)), (route) => false);}, child: Text("Regresar al Menu")),
          ],
        ),
      ),
    );
  }
}

class ProductForm extends StatefulWidget {
  String title;

  ProductForm({required this.title});

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  @override
  Widget build(BuildContext context) {
    // widget.title;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Formulario de Productos"),
            SizedBox(height: 12),
            TextField(decoration: const InputDecoration(labelText: 'Nombre del Producto')),
            SizedBox(height: 12),
            TextField(decoration: const InputDecoration(labelText: 'Descripción')),
            SizedBox(height: 12),
            TextField(decoration: const InputDecoration(labelText: 'Precio')),
            SizedBox(height: 12),
            ElevatedButton(onPressed: (){}, child: Text("Agregar Producto")),
            ElevatedButton(onPressed: (){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Menu(title: "Menu de Opciones",)), (route) => false);}, child: Text("Regresar al Menu")),
          ],
        ),
      ),
    );
  }
}