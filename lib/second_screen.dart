import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  final List<Map<String, String>> appointments = [
    {"name": "Julian Ruja", "time": "10:50", "status": "none"},
    {"name": "Victoria Olari", "time": "13:00", "status": "none"},
    {"name": "Diana Stefan", "time": "15:20", "status": "none"},
    {"name": "Gheorge Popa", "time": "16:10", "status": "none"},
    {"name": "Alexandru Sandu", "time": "16:40", "status": "cancel"},
    {"name": "Dumitru Simona", "time": "08:00", "status": "done"},
  ];

  final statusIcons = {
    'done': Icon(Icons.done, color: Colors.blue),
    'cancel': Icon(Icons.close, color: Colors.red),
    'none': Icon(Icons.chevron_right, color: Colors.grey),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leadingWidth: 48,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Image.asset(
            'assets/photo_5861993720792681267_x.jpg',
            color: Colors.white,
          ),
        ),
        title: Text(
          'Appointments',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        actions: [Icon(Icons.menu, size: 28, color: Colors.white)],
        actionsPadding: EdgeInsets.all(12),
      ),
      body: Column(
        children: [
          SizedBox(height: 12),
          Text(
            "Wednesday, 22 May 2019",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.builder(
                itemCount: appointments.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        appointments[index]['name']!,
                        style: TextStyle(fontSize: 16),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(Icons.alarm),
                          SizedBox(width: 5),
                          Text(
                            appointments[index]['time']!,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      trailing: statusIcons[appointments[index]['status']],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
