import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
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
          icon: Icons.check_circle_outline,
          title: 'Check-in',
          subtitle: 'Enter your temperature, symptoms, and relevant tests',
          isGrey: true,
          onPressed: () => Get.to(CheckinScreen()),
        ),
        _listTile(
          icon: FlutterIcons.calendar_oct,
          title: 'History',
          subtitle: 'See/edit your past entries',
        ),
        _listTile(
          icon: FlutterIcons.map_clock_outline_mco,
          title: 'Contact tracing',
          subtitle: 'Toggle method:\nlocation / bluetooth / both / off',
        ),
        _listTile(
          icon: FlutterIcons.information_variant_mco,
          title: 'Info',
          subtitle: 'Learn more about COVID-19',
        ),
      ],
    );
  }

  Widget _listTile(
      {@required IconData icon,
      @required String title,
      @required String subtitle,
      bool isGrey,
      void Function() onPressed}) {
    var _txtTheme = Get.theme.textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
          border: Border.all(color: Get.theme.unselectedWidgetColor), borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Icon(
          icon,
          size: 24,
          color: (isGrey ?? false) ? Get.theme.disabledColor : Get.theme.primaryColor,
        ),
        title: Text(title, style: _txtTheme.subtitle1),
        subtitle: Text(subtitle, style: _txtTheme.subtitle2),
        onTap: onPressed,
      ),
    );
  }
}
