
import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NINH AI',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          _home(),
          _page('Học tập', Icons.school),
          _page('Thú cưng', Icons.pets),
          _page('Hồ sơ', Icons.person),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() => selectedIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book),
            label: 'Học tập',
          ),
          NavigationDestination(
            icon: Icon(Icons.pets),
            label: 'Thú cưng',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Hồ sơ',
          ),
        ],
      ),
    );
  }

  Widget _home() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFF292B65),
                Color(0xFF7657E8),
              ],
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CHÀO MỪNG ĐẾN NINH AI',
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(height: 12),
              Text(
                'Mỗi ngày một bước tiến!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Text(
                '⚡ 0 XP       ⭐ Level 1       🔥 0 ngày',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          'Nhiệm vụ hôm nay',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppTheme.navy,
          ),
        ),
        const SizedBox(height: 12),
        _quest('📚', 'Hoàn thành một bài học', '+20 XP'),
        _quest('📝', 'Làm một bài luyện tập', '+15 XP'),
        _quest('🐾', 'Chăm sóc thú cưng', '+10 XP'),
        const SizedBox(height: 25),
        const Text(
          'Khám phá',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _feature('🎓', 'Lớp học'),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _feature('🤖', 'AI Tutor'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _quest(String emoji, String title, String reward) {
    return Card(
      child: ListTile(
        leading: Text(emoji, style: const TextStyle(fontSize: 25)),
        title: Text(title),
        trailing: Text(
          reward,
          style: const TextStyle(
            color: AppTheme.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _feature(String emoji, String title) {
    return Card(
      color: AppTheme.lavender,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(emoji, style: const TextStyle(fontSize: 32)),
            const SizedBox(height: 8),
            Text(title, style: const TextStyle(
              fontWeight: FontWeight.bold,
            )),
          ],
        ),
      ),
    );
  }

  Widget _page(String title, IconData icon) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 65, color: AppTheme.purple),
          const SizedBox(height: 12),
          Text(title, style: const TextStyle(fontSize: 23)),
        ],
      ),
    );
  }
}
