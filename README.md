# cifo_flutter

Activitats i aplicacions del curs de Flutter al CIFO de l'Hospitalet 2024.

Cada carpeta és una aplicació independent que conté un `README.md` amb detalls de l'aplicació corresponent.

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
- [Assets and images](https://docs.flutter.dev/ui/assets/assets-and-images)
- [Asynchronous programming](https://dart.dev/libraries/async/async-await)
- [JSON Serialization](https://docs.flutter.dev/data-and-backend/serialization/json)

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
- [Drawer](https://docs.flutter.dev/cookbook/design/drawer)
- [Dialog](https://api.flutter.dev/flutter/material/AlertDialog-class.html)
- [Introduction Screen](https://pub.dev/packages/introduction_screen)

### State management

- [Managing state](https://docs.flutter.dev/ui/interactivity#managing-state)
- [Stateless vs. Stateful widgets](https://medium.com/@Thebro_11/diferencias-entre-stateless-y-stateful-widgets-3693e712ce98)
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

### Fonts

- [Google Fonts](https://fonts.google.com/) ([`google_fonts`](https://pub.dev/packages/google_fonts))

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
