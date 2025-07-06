# Flutter Project Template

A Template to start Flutter app development with minimal effort

## Requirements

These are the requirements to run this project:

- Java minimum version 17
- Flutter version 3.32.5
- dart version 3.8.1
- Android Studio version Meerkat 2024.3.1
- Xcode up to version 16.4

## Change package name:

Change your package name:

```bash
dart run change_app_package_name:main com.new.package.name
```

Search for "flutter_project_template_arch" and rename it to your repository name

## Change app name (Android):

Change the value of android:label on AndroidManifest.xml

## Change app icon:

Put your icon file in this path:

```bash
assets/icon/icon.png
```

And then do:

```bash
dart run flutter_launcher_icons
```

## Run the app

Load an .env file in root project and do:

```bash
dart run build_runner build
```

To run the app, do:

```bash
flutter run
```