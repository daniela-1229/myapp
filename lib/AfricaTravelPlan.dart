import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AfricaTravelPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Descubre África", style: GoogleFonts.lora(fontSize: 24)),
        backgroundColor: Colors.pink[200],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen de fondo de un lugar emblemático africano
            Stack(
              children: [
                Image.asset(
                  'assets/images/safari.jpg', // Añadir imagen de fondo
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
                      color: Colors.white,
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
                  Text("Destinos: Kenia, Sudáfrica, Egipto, Marruecos"),
                  Text("Duración: 10 días"),
                  Text("Tipo de viaje: Aventura, Safari, Cultural"),
                  SizedBox(height: 16),

                  // Secciones de lugares imperdibles, experiencias únicas, actividades
                  sectionTitle("Lugares Imperdibles"),
                  placeItem("Pirámides de Giza (Egipto)"),
                  placeItem("Parque Nacional Kruger (Sudáfrica)"),
                  placeItem("Monte Kilimanjaro (Tanzania)"),
                  placeItem("Sahara (Marruecos)"),
                  SizedBox(height: 16),

                  sectionTitle("Experiencias Únicas"),
                  placeItem("Safari en la Sabana Africana"),
                  placeItem("Visitar las tribus Masái en Kenia"),
                  placeItem("Crucero por el río Nilo"),
                  SizedBox(height: 16),

                  sectionTitle("Actividades"),
                  placeItem("Escalada en el Monte Kilimanjaro"),
                  placeItem("Visita a la Reserva Nacional de Masái Mara"),
                  placeItem("Tour por la Ciudad de Marrakech"),
                  SizedBox(height: 16),

                  // Consejos y recomendaciones
                  sectionTitle("Consejos y Recomendaciones"),
                  Text("- Mejor época para visitar: De junio a octubre"),
                  Text("- Documentos necesarios: Pasaporte, Visa en algunos países"),
                  Text("- Seguridad y precauciones: Precaución con la fauna salvaje"),
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
