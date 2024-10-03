# weather_example

**Repositori d'aplicacions: [cifo_flutter](https://github.com/Carleslc/cifo_flutter)**

Aplicació d'exemple per aprendre a utilitzar APIs externes amb Flutter.

S'utilitza l'API [7timer](https://github.com/Yeqzids/7timer-issues/wiki/Wiki) per obtenir informació meteorològica.

La previsió meteorològica per les pròximes hores es mostra en una llista amb diferents icones utilitzant la llibreria [`weather_icons`](https://pub.dev/packages/weather_icons).

La ubicació de la previsió és fixa utilitzant coordenades latitud i longitud (constant `location` a `lib/location.dart`).

Codi original: [https://github.com/poqueque/cifo_2024s2_weather_app/](https://github.com/poqueque/cifo_2024s2_weather_app/)

<a href="https://idx.google.com/import?url=https%3A%2F%2Fgithub.com%2FCarleslc%2Fcifo_flutter_weather_example%2F" target="_blank">
  <picture>
    <source
      media="(prefers-color-scheme: dark)"
      srcset="https://cdn.idx.dev/btn/open_dark_32.svg">
    <source
      media="(prefers-color-scheme: light)"
      srcset="https://cdn.idx.dev/btn/open_light_32.svg">
    <img
      height="32"
      alt="Open in IDX"
      src="https://cdn.idx.dev/btn/open_purple_32.svg">
  </picture>
</a>

## Instal·lació

1. S'ha d'haver instal·lat el [Flutter SDK](https://docs.flutter.dev/get-started/install).

2. Clonar el repositori:

```sh
git pull https://github.com/Carleslc/cifo_flutter_weather_example.git
# GitHub CLI: gh repo clone Carleslc/cifo_flutter_weather_example

cd cifo_flutter_weather_example
```

3. Instal·lar les dependències:

```sh
flutter pub get
```

4. Executar l'aplicació amb `flutter run` o desde l'IDE.

## Estructura de l'aplicació

```
lib
├── location.dart
├── main.dart
├── models
│   └── meteo.dart
├── screens
│   └── weather_list.dart
├── services
│   └── weather_service.dart
└── widgets
    └── forecast_widget.dart
```

L'inici de l'aplicació és a `main.dart`, a `models` hi ha la clase `Meteo` que és un model de dades generat mitjançant [quicktype](https://app.quicktype.io/), a `screens` està el codi de la pantalla `WeatherList`, a `services` hi ha el servei que obté les dades de l'API externa i a `widgets` es troben els widgets propis que no corresponen a una pantalla determinada.

## Imatges

![weather_example.png](<./images/weather_example.png>)

## Recursos

- [7timer API](https://github.com/Yeqzids/7timer-issues/wiki/Wiki)
- [Weather Icons](https://erikflowers.github.io/weather-icons/) ([`weather_icons`](https://pub.dev/packages/weather_icons))

### Docs

- [Networking](https://docs.flutter.dev/data-and-backend/networking)
- [JSON Serialization](https://docs.flutter.dev/data-and-backend/serialization/json)
