//aqui va el perfil del cliente pendjo o el paciente la misma mmda pues
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context); // Regresa a la pantalla anterior
        },
      ),
      title: const Row(
        children: [
          Icon(Icons.bloodtype, color: Colors.redAccent),
          SizedBox(width: 8),
          Text('HematoLab', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Center(
              child: Column(
                children: [
                  Text('Foto de perfil', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile.png'), // Reemplaza con tu imagen
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const _CampoTexto(label: 'Nombre(s)'),
            const _CampoTexto(label: 'Apellido paterno'),
            const _CampoTexto(label: 'Apellido materno'),
            const _CampoTexto(label: 'Teléfono', keyboardType: TextInputType.phone),
            const _CampoTexto(label: 'Correo electrónico', keyboardType: TextInputType.emailAddress),
            const SizedBox(height: 32),
            ElevatedButton(


              onPressed: () {
                //<======== checar o hacer un metodo de guardar/ Acción de guardar
              },




              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text('Guardar', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

class _CampoTexto extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;

  const _CampoTexto({
    required this.label,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
