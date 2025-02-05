import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<NavigationItem> _navigationItems = [
    NavigationItem(icon: Icons.home, label: 'Beranda'),
    NavigationItem(icon: Icons.favorite, label: 'Favorite'),
    NavigationItem(icon: Icons.assignment, label: 'Pesanan'),
    NavigationItem(icon: Icons.person, label: 'Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yogyakarta'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Kemana kamu pergi?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Cari...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Hotel'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Villa & Apt.'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sewa Mobil'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Hotel populer',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2CpCE6TWaisRU7l3YYK6V-hu2Mnyfn2k2Sg&s',
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        const Text('Manhattan Hotel'),
                        const Text('Rp914.000,00'),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Jelajahi Kota',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  _buildCityCard('Jakarta'),
                  _buildCityCard('Palembang'),
                  _buildCityCard('Yogyakarta'),
                  _buildCityCard('Bandung'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _navigationItems
            .map((item) => BottomNavigationBarItem(
                  icon: Icon(item.icon),
                  label: item.label,
                ))
            .toList(),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.teal[700],
      ),
    );
  }

  Widget _buildCityCard(String cityName) {
    return Card(
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // Tambahkan ini untuk menghindari overflow
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(8.0), // Atur radius sesuai kebutuhan
            child: Image.network(
              'https://www.kayak.co.id/rimg/himg/b3/10/90/ice-178163-120191068-424668.jpg?width=1366&height=768&crop=true',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Text(cityName),
        ],
      ),
    );
  }
}

class NavigationItem {
  final IconData icon;
  final String label;

  const NavigationItem({required this.icon, required this.label});
}
