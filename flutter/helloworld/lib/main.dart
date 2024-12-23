import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.brown[800],
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Resume',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.brown[800],
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.brown[200]!, Colors.brown[100]!],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Section
                  Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                            "https://scontent.fbkk14-1.fna.fbcdn.net/v/t39.30808-6/272995026_4862247783864408_8149424107543921973_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=mIac299jGTkQ7kNvgF-lOrM&_nc_zt=23&_nc_ht=scontent.fbkk14-1.fna&_nc_gid=AO1nQi8x-ZLr-fXSS69FedB&oh=00_AYD0l0T1awky4t8CGBkCYaQMXe_phk6iHsK8_0TawTfShQ&oe=676F5F2A",
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Ariya Seton New",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown[900],
                          ),
                        ),
                        SizedBox(height: 8),
                        Divider(thickness: 1.5, color: Colors.brown[300]),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),

                  // Personal Information Section
                  _buildSectionTitle("Personal Information"),
                  SizedBox(height: 12),
                  _buildCard(
                    children: [
                      _buildDetailRow("Hobby",
                          "Play a game, Make a coffee, Listen to music"),
                      _buildDetailRow("Favorite Food",
                          "Chicken Rice, Pad ka praow with Fried Egg, Fried Rice"),
                      _buildDetailRow("Birthplace", "Phitsanulok"),
                    ],
                  ),
                  SizedBox(height: 24),

                  // Education Section
                  _buildSectionTitle("Education"),
                  SizedBox(height: 12),
                  _buildCard(
                    children: [
                      _buildEducationRow(
                          "Elementary", "Anubanphitsanulok School", "59"),
                      _buildEducationRow("Primary", "Rojanawit School", "59"),
                      _buildEducationRow(
                          "High School", "Phitsanulok Pittayakom School", "65"),
                      _buildEducationRow(
                          "Undergrad", "Naresuan University", "69"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

// Helper widget to build section titles
Widget _buildSectionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.brown[700],
      ),
    ),
  );
}

// Helper widget to build personal detail rows
Widget _buildDetailRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6.0),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "$title: $value",
            style: TextStyle(fontSize: 16, color: Colors.brown[800]),
          ),
        ),
      ],
    ),
  );
}

// Helper widget to build education rows
Widget _buildEducationRow(String level, String institution, String year) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6.0),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "$level: $institution",
            style: TextStyle(fontSize: 16, color: Colors.brown[800]),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          "Year: $year",
          style: TextStyle(fontSize: 16, color: Colors.brown[600]),
        ),
      ],
    ),
  );
}

// Helper widget to build reusable card
Widget _buildCard({required List<Widget> children}) {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.brown[50],
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.brown[200]!,
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    ),
  );
}
