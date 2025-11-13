//de qui se podra configurar los datos el perfil
//de aqui se pondra un boton para registrar cita

import 'package:flutter/material.dart';
import 'package:aplicacion/screens/profile.dart';
import 'package:aplicacion/services/agendar_cita.dart';
import 'package:aplicacion/services/horas_disponibles.dart';

class Home extends StatelessWidget {
  final String userName = 'Javier'; // nota: cambiar para usar el usuario registrado

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Stack(
          children: [
            // Contenido principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hola, $userName',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 110),
                  Text(
                    'AGENDA TU CITA DE MANERA FÁCIL',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Desde la comodidad de tu casa.',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      //<============ te lleva a la pantalla de horarios disponibles
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HorasDisponibles()),
  );
  print('');
},
                    icon: Icon(Icons.calendar_today),
                    label: Text('Agendar cita'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 90),
                  Text(
                    '¿Qué día puedo asistir?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Días disponibles para tu próxima visita',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      //<============ te lleva a la pantalla de agendar cita
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CitaScreen()),
  );
  print('');
},
                    icon: Icon(Icons.access_time),
                    label: Text('Horario'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: Text(
                      'Disponible las 24H',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            // Botón redondo en la esquina superior derecha
            Positioned(
              top: 16,
              right: 16,
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.blue,
                child: IconButton(
                  icon: Icon(Icons.person, color: Colors.white),
                  onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfileScreen()),
  );
  print('Botón de perfil presionado');
},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
