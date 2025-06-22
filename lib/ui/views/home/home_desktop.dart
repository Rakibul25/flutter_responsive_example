import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Desktop Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            // Left: Profile
            Expanded(
              flex: 2,
              child: _buildProfile(),
            ),
            const SizedBox(width: 24),
            // Right: Stats + Activities
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildStats(),
                  const SizedBox(height: 24),
                  _buildActivities(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildProfile() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
            ),
            SizedBox(height: 12),
            Text("John Doe", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("Desktop User", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget _buildStats() {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        _buildStatCard("Users", "1.2k", Icons.people),
        _buildStatCard("Revenue", "\$34k", Icons.attach_money),
        _buildStatCard("Tasks", "12", Icons.task),
      ],
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return SizedBox(
      width: 180,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Icon(icon, size: 36, color: Colors.blueAccent),
              const SizedBox(height: 8),
              Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(title, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActivities() {
    return const Card(
      elevation: 4,
      child: Column(
        children: [
          ListTile(
            title: Text("Recent Activities", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Divider(height: 1),
          ListTile(title: Text("Logged in from desktop")),
          Divider(height: 1),
          ListTile(title: Text("Reviewed project stats")),
        ],
      ),
    );
  }
}
