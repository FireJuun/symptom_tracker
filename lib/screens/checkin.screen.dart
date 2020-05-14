import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/screens/screens.dart';
import 'package:symptom_tracker/services/services.dart';
import 'package:symptom_tracker/shared/shared.dart';

class CheckinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'Check-in',
        actions: [
          IconButton(icon: Icon(Icons.close), onPressed: () => Get.offAll(HomeScreen())),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 48),
          _buildHeader(),
          SizedBox(height: 24),
          _buildSymptomList(),
          SizedBox(height: 24),
          SharedActionButton(
            title: 'Submit',
            onPressed: () {
              Get.snackbar('Check-in complete', 'Be sure to check-in tomorrow as well!');
              Get.back();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Text(
          'Please select your symptoms',
          style: Get.theme.textTheme.headline4,
        ),
        SizedBox(height: 8),
        Text(
          'Yesterday, you had cough, short of breath, and body aches',
          style: Get.theme.textTheme.headline5,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildSymptomList() {
    return GetBuilder<SymptomService>(
      init: SymptomService(),
      builder: (data) => Expanded(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 2),
          children: [...data.symptomList.map((item) => _listItem(item))],
        ),
      ),
    );
  }

  Widget _listItem(Symptom item) {
    return GestureDetector(
      onTap: () => SymptomService.to.toggleChecked(item),
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.only(left: 8),
        decoration: BoxDecoration(
            border: Border.all(color: Get.theme.unselectedWidgetColor), borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Icon(
              item.icon,
              color: (item.isChecked) ? Get.theme.primaryColor : Get.theme.disabledColor,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(item.name,
                    textAlign: TextAlign.center,
                    style: Get.theme.textTheme.subtitle2
                        .apply(color: (item.isChecked) ? Get.theme.primaryColor : Get.theme.disabledColor)),
              ),
            ),
            Checkbox(
              activeColor: Get.theme.primaryColor,
              value: item.isChecked,
              onChanged: (value) => SymptomService.to.toggleChecked(item),
            )
          ],
        ),
      ),
    );
  }
}
