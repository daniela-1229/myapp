import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AsiaTravelPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Descubre la Magia de Asia", style: GoogleFonts.lora(fontSize: 24)),
        backgroundColor: Colors.pink[200],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            Stack(
              children: [
                Image.asset(
                  'assets/images/asia.jpg', 
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Text(
                    '',
                    style: GoogleFonts.lora(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Información principal
                  Text(
                    "Información del Viaje",
                    style: GoogleFonts.lora(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text("Destinos: Tailandia, Camboya, Vietnam, Japón, China"),
                  Text("Duración: 15 días"),
                  Text("Tipo de viaje: Cultural, Aventura, Gastronómico"),
                  SizedBox(height: 16),

                  // Secciones de lugares imperdibles, experiencias únicas, actividades
                  sectionTitle("Lugares Imperdibles"),
                  placeItem("Angkor Wat (Camboya)"),
                  placeItem("Gran Muralla China (China)"),
                  placeItem("Tokio (Japón)"),
                  placeItem("Ha Long Bay (Vietnam)"),
                  SizedBox(height: 16),

                  sectionTitle("Experiencias Únicas"),
                  placeItem("Degustar comida callejera en Bangkok"),
                  placeItem("Visitar un mercado flotante en Tailandia"),
                  placeItem("Practicar artes marciales en China"),
                  SizedBox(height: 16),

                  sectionTitle("Actividades"),
                  placeItem("Caminata por la selva en Camboya"),
                  placeItem("Paseo en barco por el río Mekong"),
                  placeItem("Visita a un templo budista en Tailandia"),
                  SizedBox(height: 16),

                  // Consejos y recomendaciones
                  sectionTitle("Consejos y Recomendaciones"),
                  Text("- Mejor época para visitar: Primavera y Otoño"),
                  Text("- Documentos necesarios: Pasaporte, Visa en algunos países"),
                  Text("- Seguridad y precauciones: Precaución con la comida callejera"),
                  SizedBox(height: 16),

                  // Botones de acción
                  actionButton(context, "Reservar Ahora"),
                  actionButton(context, "Ver Itinerario Completo"),
                  actionButton(context, "Contactar con un Experto"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.lora(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Widget placeItem(String place) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(place, style: GoogleFonts.lora(fontSize: 16)),
    );
  }

  Widget actionButton(BuildContext context, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[200],
            padding: EdgeInsets.symmetric(vertical: 12),
          ),
          onPressed: () {
            // Acción del botón
          },
          child: Text(label, style: GoogleFonts.lora(fontSize: 16)),
        ),
      ),
    );
  }
}
