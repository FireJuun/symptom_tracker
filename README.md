# symptom_tracker

A Flutter project for the AMIA CIC Conference.

<img src="https://github.com/FireJuun/symptom_tracker/raw/master/symptom_tracker_demo.gif" align="right"  width="240">

## Getting Started

Follow these steps to [install Flutter][install_flutter] and [install Dart][install_dart]. Due to breaking changes, it is preferable to have at least Flutter 1.17.1 and Dart 2.8.2 installed.

If you plan to debug on multiple devices simultaneously, follow [these steps][multi_device].

## VS Code Setup

We suggest using Visual Studio Code (VS Code) with the following extensions:

- Awesome Flutter Snippets
- Better Comments
- Bracket Pair Colorizer 2
- Colonize
- Dart
- Error Lens
- Flutter
- Flutter Widget Snippets
- Git History
- GitLens -- Git Supercharged
- Live Share
- Material Icon Theme
- Pubspec Assist
- YAML

## Branches

This demo is part of a lecture series teaching Flutter on a basic to intermediate level. Slides for this lecture can be found [here][flutter_slides]. The workshop is separated into the following branches:

- `demo/0_initial_commit` "barebones" application with only a Text and MaterialApp widgets
- `demo/1_widgets` branch for covering "Widgets" and "Working with packages"
- `demo/2_screens_nav` branch for covering "Screens / Navigation"
- `demo/3_lists_gridviews_dashboard` branch for covering "Lists / Gridviews"
- `demo/4_services_checkin` branch for covering "Services"
- `demo/5_fire_fhir` branch where Firebase connections can be made
- `demo/6_sandbox` Sandbox / Liveshare branch

## FHIR

This package also serves as a preview of Dokotela's [FHIR package][fhir_package], which is currently a work in progress. FHIR stands for "Fast Healthcare Interoperability Resources", which is managed by [HL7 International][fhir_info].

In this demo, we connected Dokotela's FHIR package to both [Aidbox][aidbox] and to [HAPI FHIR][hapi_fhir], which have free options to create a FHIR server. This demo includes basic examples re:

- querying vital signs,
- creating new patients, and
- searching for patients.

Please feel free to fork this project and Dokotela's [FHIR package][fhir_package]. You are welcome to suggest changes and submit a pull request to optimize this project. Once the FHIR package is complete, we plan to submit this package to [pub.dev][pub] so that all may use.

<!-- Links -->

[install_flutter]: https://flutter.dev/docs/get-started/install
[install_dart]: https://dart.dev/get-dart
[multi_device]: https://github.com/flutter/flutter/wiki/Multi-device-debugging-in-VS-Code
[flutter_slides]: https://bit.ly/flutter_slides
[fhir_package]: https://github.com/Dokotela/fhir
[fhir_info]: https://www.hl7.org/fhir/overview.html
[aidbox]: https://www.health-samurai.io/aidbox
[hapi_fhir]: https://hapifhir.io/
[pub]: https://pub.dev
