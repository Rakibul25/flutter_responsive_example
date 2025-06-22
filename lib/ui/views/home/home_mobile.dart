import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mobile Dashboard")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildProfile(),
          const SizedBox(height: 16),
          _buildStats(),
          const SizedBox(height: 16),
          _buildActivities(),
        ],
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
        subtitle: Text("Mobile User"),
      ),
    );
  }

  Widget _buildStats() {
    return Column(
      children: [
        _buildStatItem("Users", "1.2k", Icons.people),
        _buildStatItem("Revenue", "\$34k", Icons.attach_money),
      ],
    );
  }

  Widget _buildStatItem(String title, String value, IconData icon) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent),
        title: Text(title),
        trailing: Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildActivities() {
    return const Card(
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Recent Activities",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Divider(height: 1),
          ListTile(title: Text("Logged in")),
          Divider(height: 1),
          ListTile(title: Text("Viewed dashboard")),
        ],
      ),
    );
  }
}
