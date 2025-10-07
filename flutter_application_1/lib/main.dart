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
      body: Container(
        // Ocupa toda la pantalla
        width: double.infinity,
        height: double.infinity,

        // Fondo con un degradado
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4CAF50), Color(0xFF2E7D32)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Container(
              width: 500,
              height: 550,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.lock_outline, size: 70, color: Color(0xFF4CAF50)),
                  const SizedBox(height: 16),
                  const Text("Iniciar Sesión", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF2E7D32))),
                  const SizedBox(height: 32),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Correo',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility),
                        padding: const EdgeInsets.only(right: 10),
                        onPressed: null
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () { Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Menu(title: "Menu de Opciones",)), (route) => false);},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4CAF50),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        "Iniciar sesión",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ]
            ),
          ),
        ),
        )
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