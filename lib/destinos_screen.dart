import 'package:flutter/material.dart';
import 'AsiaTravelPlan.dart';  // Importa la vista de Asia
import 'AfricaTravelPlan.dart';  // Importa la nueva vista de África

class DestinosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinos'),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context);  // Volver a la pantalla de inicio
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Acción de búsqueda
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Destinos',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: const EdgeInsets.all(8),
                children: [
                  _buildGridItem(context, 'Asia', 'assets/images/asia.jpg', 'Asia'),
                  _buildGridItem(context, 'África', 'assets/images/safari.jpg', 'Africa'),
                  _buildGridItem(context, 'América del norte', 'assets/images/america_norte.jpg', 'América del norte'),
                  _buildGridItem(context, 'Sudamérica', 'assets/images/sudamerica.jpg', 'Sudamérica'),
                  _buildGridItem(context, 'Europa', 'assets/images/europa.jpg', 'Europa'),
                  _buildGridItem(context, 'Oceanía', 'assets/images/oceania.jpg', 'Oceanía'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String title, String imagePath, String destination) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        ElevatedButton(
          onPressed: () {
            if (destination == 'Asia') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AsiaTravelPlan()),
              );
            } else if (destination == 'Africa') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AfricaTravelPlan()),
              );
            } else {
              // Otras acciones o destinos futuros
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[200],
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          ),
          child: Text(
            'Ver más',
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
