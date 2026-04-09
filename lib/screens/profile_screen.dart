import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    final Color primaryBlue = Colors.blue[900]!;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("My Profile", style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * 0.05)),
        backgroundColor: Colors.transparent,
        foregroundColor: primaryBlue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(w * 0.05),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: w * 0.15,
                  backgroundColor: primaryBlue, 
                  child: Icon(Icons.person, size: w * 0.18, color: Colors.white),
                ),
              ),
              SizedBox(height: w * 0.04),

              Text("Binu Rajakaruna", style: TextStyle(fontSize: w * 0.06, fontWeight: FontWeight.bold, color: primaryBlue)),
              Text("binu@example.com", style: TextStyle(color: Colors.blueAccent, fontSize: w * 0.04)),
              SizedBox(height: w * 0.05),

              _buildMenuCard(w, Icons.person_outline, "Account", "Manage your personal information", Colors.blue),
              _buildMenuCard(w, Icons.analytics_outlined, "Activity", "View your activity history", Colors.orange),
              _buildMenuCard(w, Icons.settings_outlined, "Settings", "Customize your preferences", Colors.teal),
              _buildMenuCard(w, Icons.security_outlined, "Security", "Manage your security settings", Colors.redAccent),
              SizedBox(height: w * 0.08),

              SizedBox(
                width: double.infinity,
                height: w * 0.13,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: primaryBlue, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(w * 0.04))),
                  onPressed: () {},
                  child: Text("Edit Profile", style: TextStyle(color: Colors.white, fontSize: w * 0.04)),
                ),
              ),
              SizedBox(height: w * 0.03),
              
              SizedBox(
                width: double.infinity,
                height: w * 0.13,
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.redAccent), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(w * 0.04))),
                  onPressed: () {},
                  icon: Icon(Icons.logout, color: Colors.redAccent, size: w * 0.05),
                  label: Text("Logout", style: TextStyle(color: Colors.redAccent, fontSize: w * 0.04, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard(double w, IconData icon, String title, String subtitle, Color iconColor) {
    return Card(
      margin: EdgeInsets.only(bottom: w * 0.03),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(w * 0.04)),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(w * 0.02),
          decoration: BoxDecoration(color: iconColor.withOpacity(0.1), borderRadius: BorderRadius.circular(w * 0.02)),
          child: Icon(icon, color: iconColor, size: w * 0.06),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: w * 0.04)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.grey[600], fontSize: w * 0.032)),
        trailing: Icon(Icons.chevron_right, color: Colors.grey, size: w * 0.05),
        onTap: () {},
      ),
    );
  }
}