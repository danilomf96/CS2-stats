import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CS2 Tracker"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildCard(
              icon: Icons.bar_chart,
              label: "Meus Stats",
            ),
            const SizedBox(height: 16),
            _buildCard(
              icon: Icons.weapons, // vai dar erro, Flutter não tem esse ícone
              label: "Armas Favoritas",
            ),
            const SizedBox(height: 16),
            _buildCard(
              icon: Icons.history,
              label: "Histórico de Partidas",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({required IconData icon, required String label}) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(icon, size: 32),
        title: Text(label, style: const TextStyle(fontSize: 20)),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        onTap: () {},
      ),
    );
  }
}
