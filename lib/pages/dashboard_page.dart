import 'package:flutter/material.dart';
import 'counter_page.dart';
import 'nested_widget_page.dart';
import 'user_input_page.dart';
import 'dynamic_list_page.dart';
import 'simple_navigation_page.dart';
import 'grid_view_page.dart';
import 'about_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = -1;

  final List<_DashboardItem> _items = [
    _DashboardItem(title: 'Counter', page: const CounterPage()),
    _DashboardItem(title: 'Widget Bertingkat', page: const NestedWidgetPage()),
    _DashboardItem(title: 'User Input Example', page: const UserInputPage()),
    _DashboardItem(
      title: 'Dynamic List Example',
      page: const DynamicListPage(),
    ),
    _DashboardItem(
      title: 'Navigasi Sederhana',
      page: const SimpleNavigationPage(),
    ),
    _DashboardItem(title: 'Grid View', page: const GridViewPage()),
    _DashboardItem(title: 'Tentang Saya', page: const AboutPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MyPorto'), elevation: 0),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cek hasil karyaku disini:',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView.separated(
                    itemCount: _items.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final isSelected = _selectedIndex == index;
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isSelected
                              ? const Color(0xFF90A4AE)
                              : const Color(0xFFDADCE0),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        onPressed: () {
                          setState(() {
                            _selectedIndex = index;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => _items[index].page,
                            ),
                          );
                        },
                        child: Text(
                          _items[index].title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DashboardItem {
  final String title;
  final Widget page;

  _DashboardItem({required this.title, required this.page});
}
