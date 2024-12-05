import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Возвращаемся на предыдущий экран
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Профиль
            _buildSettingsItem(
              title: 'Профиль',
              subtitle: '+7 777 777 7777',
              icon: Icons.person_outline,
            ),
            SizedBox(height: 8),
            // История аренд
            _buildSettingsItem(
              title: 'История аренд',
              subtitle: 'А также добавить отзыв',
              icon: Icons.history,
            ),
            SizedBox(height: 8),
            // Техподдержка
            _buildSettingsItem(
              title: 'Техподдержка',
              subtitle: 'Всегда рады ответить вам',
              icon: Icons.headset_mic_outlined,
            ),
            SizedBox(height: 16),
            // Сетка кнопок
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: [
                _buildGridButton(
                  title: 'Категория товаров',
                  icon: Icons.grid_view,
                  color: Colors.orange,
                ),
                _buildGridButton(
                  title: 'Кошелек',
                  icon: Icons.account_balance_wallet_outlined,
                  color: Colors.orange,
                ),
                _buildGridButton(
                  title: 'Мои отзывы',
                  icon: Icons.people_outline,
                  color: Colors.orange,
                ),
                _buildGridButton(
                  title: 'Стать арендодателем',
                  icon: Icons.home_work_outlined,
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsItem({
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 40, color: Colors.black54),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGridButton({
    required String title,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: color),
          SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
