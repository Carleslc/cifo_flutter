# cifo_flutter

Activitats i aplicacions del curs de Flutter al CIFO de l'Hospitalet 2024.

Cada carpeta és una aplicació independent que conté un `README.md` amb detalls de l'aplicació corresponent.

<!-- toc -->

- [Importar una aplicació](#importar-una-aplicació)
  * [Desenvolupament a IDX](#desenvolupament-a-idx)
  * [Desenvolupament local](#desenvolupament-local)
- [Recursos](#recursos)
  * [Documentation](#documentation)
  * [Code examples](#code-examples)
  * [Apps and Widgets examples](#apps-and-widgets-examples)
  * [State management](#state-management)
  * [Packages](#packages)
  * [Icons](#icons)
  * [Fonts](#fonts)
  * [Testing](#testing)
  * [Release](#release)
  * [Other](#other)
- [CLI](#cli)
  * [Doctor](#doctor)
  * [Dependències](#dependències)
  * [Configuració](#configuració)
  * [Linter](#linter)
  * [Dispositius](#dispositius)
  * [Connexió inal·làmbrica (Android)](#connexió-inallàmbrica-android)
  * [Build](#build)
  * [CORS](#cors)
  * [Clean](#clean)
  * [Dart](#dart)
- [(Dev) Afegeix una aplicació](#dev-afegeix-una-aplicació)

<!-- tocstop -->

## Importar una aplicació

### Desenvolupament a IDX

Les aplicacions es poden importar directament al IDE web [Project IDX](https://idx.google.com/).

Al repositori de cada aplicació hi ha un botó **Open in IDX** per importar el repositori a IDX i provar o modificar l'aplicació sense haver d'instal·lar-la en local. Recordeu seleccionar _"This is a Flutter app"_.

Un cop s'hagi importat l'aplicació espereu a que carregui l'entorn i s'executi l'aplicació al web i a l'emulador Android.

### Desenvolupament local

Es pot importar una aplicació individual clonant el seu repositori independent o totes alhora.

Per clonar només una aplicació, accedeix a la carpeta de l'aplicació desitjada, amb instruccions d'instal·lació individuals.

Per clonar aquest repositori amb totes les aplicacions com a submòduls, executa les següents comandes:

```sh
git clone --recurse-submodules https://github.com/Carleslc/cifo_flutter.git cifo_flutter
# GitHub CLI: gh repo clone Carleslc/cifo_flutter cifo_flutter -- --recurse-submodules

# Per actualitzar el repositori
git pull --recurse-submodules --all
```

Després accedeix a l'aplicació desitjada:

```sh
cd activitat_1_generador_noms
```

Instal·la les dependències:

```sh
flutter pub get
```

Es pot executar l'aplicació amb `flutter run` o desde l'IDE.

## Recursos

### Documentation

- [API Docs](https://api.flutter.dev/)
- [Flutter Docs](https://docs.flutter.dev/)
- [Dart Style Guide](https://dart.dev/effective-dart)
- [Material Widgets](https://docs.flutter.dev/ui/widgets/material)
- [Cupertino Widgets](https://docs.flutter.dev/ui/widgets/cupertino)
- [Layouts in Flutter](https://docs.flutter.dev/ui/layout)
- [Navigation](https://docs.flutter.dev/ui/navigation)
- [Assets and images](https://docs.flutter.dev/ui/assets/assets-and-images)
- [Asynchronous programming](https://dart.dev/libraries/async/async-await)
- [Networking](https://docs.flutter.dev/data-and-backend/networking)
- [JSON Serialization](https://docs.flutter.dev/data-and-backend/serialization/json)
- [Persistence](https://docs.flutter.dev/data-and-backend/persistence)
- [Responsive design](https://docs.flutter.dev/ui/adaptive-responsive)
- [Animations and transitions](https://docs.flutter.dev/ui/animations)
- [Accessibility](https://docs.flutter.dev/ui/accessibility-and-internationalization/accessibility)
- [Internationalization](https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization)

### Code examples

- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Codelab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Navigation](https://docs.flutter.dev/cookbook/navigation/navigation-basics)
- [Themes](https://docs.flutter.dev/cookbook/design/themes)

### Apps and Widgets examples

- [YouTube: Flutter Widget of the Week](https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG)
- [Flutter Samples](https://flutter.github.io/samples/)
- [flutter_catalog](https://github.com/X-Wei/flutter_catalog?tab=readme-ov-file#readme) ([web](https://x-wei.github.io/flutter_catalog/))
- [flutter-examples](https://github.com/nisrulz/flutter-examples?tab=readme-ov-file#readme)
- [material_3_demo](https://flutter.github.io/samples/web/material_3_demo/)
- [Snackbar](https://docs.flutter.dev/cookbook/design/snackbars)
- [Dialog](https://api.flutter.dev/flutter/material/AlertDialog-class.html)
- [Drawer](https://docs.flutter.dev/cookbook/design/drawer) / [NavigationDrawer](https://api.flutter.dev/flutter/material/NavigationDrawer-class.html)
- [BottomNavigationBar](https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html) / [NavigationBar](https://api.flutter.dev/flutter/material/NavigationBar-class.html)
- [SafeArea](https://api.flutter.dev/flutter/widgets/SafeArea-class.html) & [MediaQuery](https://api.flutter.dev/flutter/widgets/MediaQuery-class.html)
- [ThemeData](https://api.flutter.dev/flutter/material/ThemeData-class.html) ([ColorScheme](https://api.flutter.dev/flutter/material/ColorScheme-class.html), [TextTheme](https://api.flutter.dev/flutter/material/TextTheme-class.html))
- [FutureBuilder](https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html)
- [Introduction Screen](https://pub.dev/packages/introduction_screen)

### State management

- [Managing state](https://docs.flutter.dev/ui/interactivity#managing-state)
- [Simple app state management](https://docs.flutter.dev/data-and-backend/state-mgmt/simple)
- [Stateless vs. Stateful widgets](https://medium.com/@Thebro_11/diferencias-entre-stateless-y-stateful-widgets-3693e712ce98)
- [Widget Lifecycle](https://www.dhiwise.com/post/unveiling-the-flutter-widget-lifecycle) ([2](https://dev.to/pranjal-barnwal/the-journey-of-a-widget-understanding-the-lifecycle-in-flutter-3plp)) ([3](https://flutterexperts.com/explore-widget-lifecycle-in-flutter))
- [When to use Keys](https://www.youtube.com/watch?v=kn0EOS-ZiIc)
- [Provider](https://pub.dev/packages/provider)
- [Riverpod](https://riverpod.dev/docs/introduction/why_riverpod) ([`riverpod`](https://pub.dev/packages/riverpod)) ([tutorial](https://codewithandrea.com/articles/flutter-state-management-riverpod/))

### Packages

- [pub.dev](https://pub.dev/packages?sort=popularity)
- [Flutter Gems](https://fluttergems.dev/)

### Icons

- [Material Symbols](https://fonts.google.com/icons?icon.set=Material+Symbols) [+info](https://developers.google.com/fonts/docs/material_symbols) ([`material_symbols_icons`](https://pub.dev/packages/material_symbols_icons))
- [Material Icons](https://fonts.google.com/icons?icon.set=Material+Icons)
- [Material Community Icons](https://pictogrammers.com/library/mdi/) ([`community_material_icon`](https://pub.dev/packages/community_material_icon))
- [Freepik Icons](https://www.freepik.es/search?format=families&iconType=standard&last_filter=iconType&last_value=standard&shape=lineal-color&type=icon)

### Fonts

- [Google Fonts](https://fonts.google.com/) ([`google_fonts`](https://pub.dev/packages/google_fonts))
- [MixFont](https://www.mixfont.com/)

## Design

- [Figma](https://www.figma.com/) ([_Material Theme Builder_](https://www.figma.com/community/plugin/1034969338659738588/material-theme-builder))
- [Proto.io](https://proto.io/)
- [marvelapp](https://marvelapp.com/)
- [sketchize](https://www.sketchize.com/)

### Testing

- [Testing Documentation](https://docs.flutter.dev/testing/overview)
- [Mocking](https://pub.dev/packages/mocktail)

### Release

- [Release Documentation](https://docs.flutter.dev/deployment) ([android](https://docs.flutter.dev/deployment/android), [ios](https://docs.flutter.dev/deployment/ios))
- [App Icon](https://docs.flutter.dev/ui/assets/assets-and-images#updating-the-app-icon) ([android](https://docs.flutter.dev/deployment/android#add-a-launcher-icon))
- [Splash Screen](https://docs.flutter.dev/ui/assets/assets-and-images#updating-the-launch-screen) ([android](https://docs.flutter.dev/platform-integration/android/splash-screen), [ios](https://docs.flutter.dev/platform-integration/ios/splash-screen))
- [Icon Kitchen](https://icon.kitchen/) / [Android: Image Asset Studio](https://developer.android.com/studio/write/create-app-icons)
- [Bundle _google_fonts_ for release](https://pub.dev/packages/google_fonts#bundling-fonts-when-releasing)

### Other

- [Awesome Flutter](https://github.com/Solido/awesome-flutter)
- [Paletes de colors](https://coolors.co/)
- [JSON to DataModels](https://app.quicktype.io/)
- [Android API Levels](https://apilevels.com/)
- [Free APIs](https://apipheny.io/free-api/)

## CLI

### Doctor

```sh
# Verifica la instal·lació de Flutter
flutter doctor

# Mostra més informació
flutter doctor -v

# Mostra la versió de Flutter i Dart
flutter --version

# Actualitza Flutter
flutter upgrade
```

### Dependències

```sh
# Instal·la les dependències
flutter pub get

# Afegeix una dependència
flutter pub add google_fonts
flutter pub add flutter_localizations --sdk=flutter

# Actualitza les dependències
flutter pub upgrade

# Elimina una dependència
flutter pub remove google_fonts
```

### Configuració

Activa o desactiva les plataformes suportades per `flutter create`:

```sh
flutter config --list
flutter config --no-enable-linux-desktop
flutter config --no-enable-macos-desktop
flutter config --no-enable-windows-desktop
flutter config --enable-android
flutter config --enable-ios
flutter config --enable-web
```

### Linter

Al fitxer [`analysis_options.yaml`](https://dart.dev/guides/language/analysis-options) ([exemple](./harry_potter_example/analysis_options.yaml)) d'una aplicació es poden afegir [regles d'estil](https://dart.dev/tools/linter-rules) per fer el codi més robust i llegible, segons la [guia d'estil](https://dart.dev/effective-dart).

```sh
# Mostra els possibles problemes d'estil
dart fix --dry-run

# Corregeix els problemes d'estil trobats automàticament
dart fix --apply
```

Si cal ignorar el warning d'una regla determinada, es pot afegir un comentari a la línia o fitxer corresponent:

```dart
// ignore: directives_ordering
// ignore_for_file: directives_ordering
```

### Dispositius

```sh
# Dispositius connectats
flutter devices

# Dispositius Android connectats
adb devices -l

# Captura de pantalla del dispositiu actual
flutter screenshot

# Simulador iOS (Xcode)
open -a Simulator
```

### Connexió inal·làmbrica (Android)

Comprova la IP del dispositiu connectat per USB a la configuració del dispositiu.

```sh
# Connecta el dispositiu via TCP/IP
adb tcpip 5555
adb connect <IP>:5555

# Comproba els dispositius connectats
adb devices -l
```

### Build

```sh
# Debug
flutter run

# Release
flutter build apk --release

# Instal·la l'aplicació al dispositiu
adb install -r build/app/outputs/flutter-apk/app-release.apk

# Instal·la l'aplicació en un dispositiu determinat (amb serial device-ID, p.e. emulator-5554)
adb -s device-ID install -r build/app/outputs/flutter-apk/app-release.apk

# Desinstal·la l'aplicació del dispositiu
adb uninstall com.example.demo_counter
```

### CORS

A vegades a la web no es mostren les imatges correctament.

Per solucionar-ho es pot canviar el mètode de renderitzat a l'hora d'executar l'aplicació:

```sh
# Debug on chrome to avoid CORS issues
flutter run -d chrome --web-renderer html

# Release for web with html renderer
flutter build web --web-renderer html --release
```

Per executar-ho amb _Visual Studio Code_ afegeix la configuració de [`.vscode/launch.json`](harry_potter_example/.vscode/launch.json).

Una alternativa per les imatges és utilitzar la llibreria [`image_network`](https://pub.dev/packages/image_network).

### Clean

Esborra els directoris relacionats amb `build`:

```sh
flutter clean
```

### Dart

Executa codi Dart independent:

```sh
dart --enable-asserts fitxer.dart
```

## (Dev) Afegeix una aplicació

Per crear una nova aplicació _(*)_:

```sh
flutter create --platform android,ios,web new_app

# Alternativament: ./create_flutter_app_idx.sh new_app
```

Després s'ha de pujar el codi a un nou repositori.

Per enllaçar el respositori de l'aplicació en aquest repositori:

```sh
git submodule add -b master https://github.com/Carleslc/cifo_flutter_new_app.git new_app
git submodule init && git submodule update
```

### _(*)_ Modificacions per IDX

Per tal de que funcioni directament a IDX s'han de fer alguns canvis:

- Afegir la carpeta `.idx` i el fitxer `dev.nix` (es pot copiar la carpeta de qualsevol altre aplicació).

- Modificar `android/app/build.gradle` per agafar bé els paràmetres `flutter.versionCode` i `flutter.versionName` tal i com s'utilitzen a IDX (es pot copiar de qualsevol altre aplicació, i canviar el nom del paquet de l'aplicació).

- Utilitzar al `pubspec.yaml` un `sdk` de Dart i versió de Flutter suportades per IDX (`flutter --version`), per exemple `'>=3.4.3'`.

Es pot automatitzar aquest procés de creació utilitzant el script `create_flutter_app_idx.sh`:

```sh
chmod +x create_flutter_app_idx.sh

./create_flutter_app_idx.sh new_app
```
