import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
            ElevatedButton(onPressed: (){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> ProductListView(title: "Lista de Productos",)), (route) => false);}, child: Text("Lista de Productos")),
            ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductForm(title: 'Formulario de Productos',)));}, child: Text("Formulario de Productos")),
            ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileView(title: 'Perfil de Usuario',)));}, child: Text("Perfil de Usuario")),
            ElevatedButton(onPressed: (){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginView()), (route) => false);}, child: Text("LogOut")),
          ],
        ),
      ),
    );
  }
}

class ProductListView extends StatefulWidget {
  String title;

   ProductListView({required this.title});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    // widget.title;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Lista de Productos"),
            SizedBox(height: 12),
            Text("1. Producto A"),
            SizedBox(height: 12),
            Text("2. Producto B"),
            SizedBox(height: 12),
            Text("3. Producto C"),
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

class ProfileView extends StatefulWidget {
  String title;

  ProfileView({required this.title});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    // widget.title;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Perfil de Usuario"),
            SizedBox(height: 12),
            Text("Nombre: Juan Pérez"),
            SizedBox(height: 12),
            Text("Correo: juan.perez@example.com"),
            SizedBox(height: 12),
            ElevatedButton(onPressed: (){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Menu(title: "Menu de Opciones",)), (route) => false);}, child: Text("Regresar al Menu")),
          ],
        ),
      ),
    );
  }
}