import 'package:flutter/material.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tablet Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Top: Profile + Stats (side-by-side)
            Row(
              children: [
                Expanded(flex: 2, child: _buildProfile()),
                const SizedBox(width: 16),
                Expanded(flex: 3, child: _buildStats()),
              ],
            ),
            const SizedBox(height: 24),
            // Bottom: Activities
            _buildActivities(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfile() {
    return const Card(
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage("https://i.pravatar.cc/150"),
        ),
        title: Text("John Doe"),
        subtitle: Text("Tablet User"),
      ),
    );
  }

  Widget _buildStats() {
    return Column(
      children: [
        _buildStatItem("Users", "1.2k", Icons.people),
        const SizedBox(height: 12),
        _buildStatItem("Revenue", "\$34k", Icons.attach_money),
      ],
    );
  }

  Widget _buildStatItem(String title, String value, IconData icon) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: Colors.deepPurple),
        title: Text(title),
        trailing: Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildActivities() {
    return const Card(
      elevation: 3,
      child: Column(
        children: [
          ListTile(
            title: Text("Recent Activities", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Divider(height: 1),
          ListTile(title: Text("Signed in from Tablet")),
          Divider(height: 1),
          ListTile(title: Text("Checked Notifications")),
        ],
      ),
    );
  }
}
