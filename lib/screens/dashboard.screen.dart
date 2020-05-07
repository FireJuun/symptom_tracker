import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/screens/screens.dart';
import 'package:symptom_tracker/shared/shared.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'Dashboard',
        actions: [
          IconButton(icon: Icon(Icons.close), onPressed: () => Get.offAll(HomeScreen())),
        ],
      ),
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 28),
          child: Text(
            'Good morning, AMIA',
            style: Get.theme.textTheme.headline3,
            textAlign: TextAlign.center,
          ),
        ),
        _listTile(
          icon: Icons.ac_unit,
          title: 'Check-in',
          subtitle: 'Enter your temperature, symptoms, and relevant tests',
        ),
        _listTile(
          icon: Icons.ac_unit,
          title: 'History',
          subtitle: 'See/edit your past entries',
        ),
        _listTile(
          icon: Icons.ac_unit,
          title: 'Contact tracing',
          subtitle: 'Toggle method:\nlocation / bluetooth / both / off',
        ),
        _listTile(
          icon: Icons.ac_unit,
          title: 'Info',
          subtitle: 'Learn more about COVID-19',
        ),
      ],
    );
  }

  Widget _listTile({@required IconData icon, @required String title, @required String subtitle}) {
    var _textTheme = Get.theme.textTheme;
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: _textTheme.subtitle1),
      subtitle: Text(subtitle, style: _textTheme.subtitle2),
    );
  }
}
