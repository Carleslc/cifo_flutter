#!/bin/bash

# Usage: ./create_flutter_app_idx.sh new_app

# Surt prematurament si hi ha cap error
set -e

# Plataformes que es volen afegir (paràmetre --platform de flutter create)
PLATFORMS="android,ios,web"

# Dart SDK a utilitzar (versió suportada per IDX flutter --version)
SDK_VERSION="'>=3.4.3 <4.0.0'"

# Nom de l'aplicació d'on copiar els fitxers
TEMPLATE_APP_NAME="demo_counter"

# Nom de l'aplicació a crear (es passa com a paràmetre)
NEW_APP_NAME=$1

# Verifica que s'ha proporcionat el nom de l'aplicació
if [ -z "$NEW_APP_NAME" ]; then
    echo "Usage: ./create_flutter_app_idx.sh new_app"
    exit 1
fi

# Elimina la barra final opcional del nom de l'aplicació
NEW_APP_NAME=${NEW_APP_NAME%/}

# Verifica si la carpeta de l'aplicació ja existeix
if [ -d "$NEW_APP_NAME" ]; then
    echo "Already created: $NEW_APP_NAME"
else
    # Crea l'aplicació amb Flutter (es passen paràmetres opcionals)
    echo "Creating flutter app... (platforms: $PLATFORMS)"
    
    flutter create --platform "$PLATFORMS" "$NEW_APP_NAME" "${@:2}"
fi

echo "Applying modifications to support IDX..."

# Copia el directori .idx de l'aplicació plantilla a la nova aplicació
if [ ! -d "$NEW_APP_NAME/.idx" ]; then
    cp -r "$TEMPLATE_APP_NAME/.idx" "$NEW_APP_NAME/.idx"
    echo "Added: $NEW_APP_NAME/.idx"
fi

# Copia el directori .vscode de l'aplicació plantilla a la nova aplicació
if [ ! -d "$NEW_APP_NAME/.vscode" ]; then
    cp -r "$TEMPLATE_APP_NAME/.vscode" "$NEW_APP_NAME/.vscode"
    echo "Added: $NEW_APP_NAME/.vscode"
fi

# Modifica automàticament el SDK version al pubspec.yaml per suportar la versió de IDX
OLD_SDK_VERSION=$(sed -n '/environment:/,/sdk:/p' "$NEW_APP_NAME/pubspec.yaml" | grep sdk)
sed -i '' "/environment:/,/sdk:/ s/sdk: .*/sdk: $SDK_VERSION/" "$NEW_APP_NAME/pubspec.yaml"
echo "Set pubspec.yaml SDK version from $OLD_SDK_VERSION to $SDK_VERSION"

# Copia l'arxiu build.gradle de l'aplicació plantilla a la nova aplicació
cp "$TEMPLATE_APP_NAME/android/app/build.gradle" "$NEW_APP_NAME/android/app/build.gradle"

# Reemplaça el nom de l'aplicació plantilla pel nou nom a build.gradle
sed -i '' "s/$TEMPLATE_APP_NAME/$NEW_APP_NAME/g" "$NEW_APP_NAME/android/app/build.gradle"

echo "Modified: $NEW_APP_NAME/android/app/build.gradle"

# Confirma l'operació, suggerint canviar el directori a la nova aplicació
echo "Done!"
echo "Change to the app folder: cd $NEW_APP_NAME"
