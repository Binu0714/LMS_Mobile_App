import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color primaryBlue = Colors.blue[900]!;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        foregroundColor: primaryBlue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: primaryBlue, 
                  child: const Icon(Icons.person, size: 70, color: Colors.white),
                ),
              ),
              const SizedBox(height: 15),

              Text("Binu Rajakaruna",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: primaryBlue)),
              const Text("binu@example.com",style: TextStyle(color: Colors.blueAccent, fontSize: 16)),
              
              const SizedBox(height: 20),

              _buildMenuCard(Icons.person_outline, "Account","Manage your personal information", Colors.blue),
              _buildMenuCard(Icons.analytics_outlined, "Activity", "View your activity history", Colors.orange),
              _buildMenuCard(Icons.settings_outlined, "Settings", "Customize your preferences", Colors.teal),
              _buildMenuCard(Icons.security_outlined, "Security", "Manage your security settings", Colors.redAccent),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryBlue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () {},
                  child: const Text("Edit Profile",style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              const SizedBox(height: 15),
              
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.redAccent),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.logout, color: Colors.redAccent),
                  label: const Text("Logout",style: TextStyle(color: Colors.redAccent, fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard(IconData icon, String title, String subtitle, Color iconColor) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: iconColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: iconColor),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.grey[600], fontSize: 13),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: () {
         
        },
      ),
    );
  }
}