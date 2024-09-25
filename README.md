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
- [Material Widgets](https://docs.flutter.dev/ui/widgets/material)
- [Cupertino Widgets](https://docs.flutter.dev/ui/widgets/cupertino)

### Code examples

- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Codelab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)

### Apps and Widgets examples

- [YouTube: Flutter Widget of the Week](https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG)
- [Flutter Samples](https://flutter.github.io/samples/)
- [flutter_catalog](https://github.com/X-Wei/flutter_catalog?tab=readme-ov-file#readme) ([web](https://x-wei.github.io/flutter_catalog/))
- [flutter-examples](https://github.com/nisrulz/flutter-examples?tab=readme-ov-file#readme)
- [material_3_demo](https://flutter.github.io/samples/web/material_3_demo/)

### Packages

- [pub.dev](https://pub.dev/packages?sort=popularity)
- [Flutter Gems](https://fluttergems.dev/)

### Icons

- [Material Symbols](https://fonts.google.com/icons?icon.set=Material+Symbols) [+info](https://developers.google.com/fonts/docs/material_symbols)
- [Material Icons](https://fonts.google.com/icons?icon.set=Material+Icons)

### Other

- [Awesome Flutter](https://github.com/Solido/awesome-flutter)
- [Android API Levels](https://apilevels.com/)

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
