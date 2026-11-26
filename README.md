# juntaAndalucia (StoneTrip 3D / interactive presentation)

> **This project is shared ONLY for educational purposes. Its use, direct or derived, for professional or economic purposes is not permitted.**

An interactive 3D presentation prototype for the Junta de Andalucia, built with StoneTrip 3D / STK. It combines Lua behaviour scripts, `.stk` scene resources, 3ds Max / FBX / LightWave / Cinema 4D models, textures and a small web export that embeds the player through `stkobject1.8.js`. The `dev/` tree holds the main authored resources and `test/` holds the exported test project and HTML demos.

For security reasons, some parts of the project may have been edited or removed. No keygens, cracks, serial numbers, certificates, private keys or evident passwords were found or included. Third-party headers, URLs, emails, analytics IDs and personal `C:\...` paths were left untouched where present.

## Requirements / How to run

- StoneTrip 3D Studio / STK player 1.8 or a compatible runtime (the exported pages use `stkobject1.8.js` and reference the StoneTrip player generator).
- Lua 5.x compatible scripting as used by the StoneTrip handlers in `dev/Resources/Scripts/` and `test/Resources/Scripts/` (`.lua` sources plus compiled `.lub` / `.luo` versions).
- 3D authoring tools for editing the source assets: 3ds Max (`.max`), Autodesk FBX / Collada (`.FBX`, `.dae`), LightWave (`.lwo`, `.lws`) and Cinema 4D (`.c4d`) for the included third-party landscape library.
- Windows is the original authoring environment. To view the web demo, open `test/export/cubensis.html` (or `test2.htm`) with the STK browser runtime available and place the corresponding compressed `.stk.rar` package next to it; the HTML calls `stkobject(...)` at 640x480.
- Demo controls from the page: number keys `1,2,3..0` switch viewpoints, `borrar` resets, `espacio` toggles fullscreen and `ESC` quits.
- There is no build script: the project is opened through the StoneTrip project files (`Project.cfg` / `test/Project.cfg`) and the scene resources under `dev/` and `test/`.

## Large assets

Three individual files exceed 100 MB and are not stored in this repository:

- `docs/objetos/Escena_con_cambios_01.rar` (119.28 MB)
- `docs/objetos/Escena_01/Escena_01_75.FBX` (110.70 MB)
- `docs/objetos/Escena_con_cambios_01/Escena_01_75.fbm/texfile6_modificado.tif` (148.09 MB)

Download `juntaAndalucia-assets.zip` from the **Releases** tab (263.31 MB) and extract it into the project root, preserving the folder structure. The ZIP is well below the ~2 GiB GitHub Release asset limit.

## Disclaimer

The software is provided "as is", without warranty of any kind. No liability is accepted for any errors or damages resulting from its use.

> **AI training**: the use of the content of this repository (code, assets, documentation) to train or fine-tune machine learning models or AI systems is expressly **not permitted**. All of the repository is licensed under CC-BY-NC-4.0 (see the `LICENSE` file).

---

# juntaAndalucia (StoneTrip 3D / presentación interactiva)

> **Este proyecto se comparte SOLO con valor educativo. No está permitido su uso (directo o derivado) para fines profesionales o económicos.**

Un prototipo de presentación interactiva en 3D para la Junta de Andalucia, creado con StoneTrip 3D / STK. Combina scripts Lua, recursos de escena `.stk`, modelos de 3ds Max / FBX / LightWave / Cinema 4D, texturas y una pequeña exportación web que incrusta el reproductor mediante `stkobject1.8.js`. El árbol `dev/` contiene los recursos principales y `test/` el proyecto de prueba exportado y las demos HTML.

Por motivos de seguridad, es posible que algunas partes se encuentren editadas o eliminadas. No se han encontrado ni incluido keygens, cracks, números de serie, certificados, claves privadas ni contraseñas evidentes. Las cabeceras de terceros, URLs, correos, identificadores de analítica y rutas personales `C:\...` se han dejado intactas cuando existían.

## Requisitos / Cómo ejecutar

- StoneTrip 3D Studio / reproductor STK 1.8 o un runtime compatible (las páginas exportadas usan `stkobject1.8.js` y hacen referencia al generador del reproductor StoneTrip).
- Scripts Lua compatibles con Lua 5.x, tal como se usan en los handlers de `dev/Resources/Scripts/` y `test/Resources/Scripts/` (fuentes `.lua` y versiones compiladas `.lub` / `.luo`).
- Herramientas de edición 3D para modificar los recursos fuente: 3ds Max (`.max`), Autodesk FBX / Collada (`.FBX`, `.dae`), LightWave (`.lwo`, `.lws`) y Cinema 4D (`.c4d`) para la biblioteca de paisajes de terceros incluida.
- El entorno de autoría original es Windows. Para ver la demo web, abre `test/export/cubensis.html` (o `test2.htm`) con el runtime de navegador STK disponible y coloca junto a él el paquete comprimido `.stk.rar` correspondiente; el HTML invoca `stkobject(...)` a 640x480.
- Controles de la demo: las teclas `1,2,3..0` cambian de punto de vista, `borrar` reinicia, `espacio` alterna pantalla completa y `ESC` sale.
- No hay script de compilación: el proyecto se abre mediante los archivos de proyecto StoneTrip (`Project.cfg` / `test/Project.cfg`) y los recursos de escena de `dev/` y `test/`.

## Archivos grandes

Tres archivos individuales superan los 100 MB y no se incluyen en este repositorio:

- `docs/objetos/Escena_con_cambios_01.rar` (119,28 MB)
- `docs/objetos/Escena_01/Escena_01_75.FBX` (110,70 MB)
- `docs/objetos/Escena_con_cambios_01/Escena_01_75.fbm/texfile6_modificado.tif` (148,09 MB)

Descarga `juntaAndalucia-assets.zip` desde la pestaña **Releases** (263,31 MB) y extráelo en la raíz del proyecto, manteniendo la estructura de carpetas. El ZIP está muy por debajo del límite de ~2 GiB por recurso de GitHub Releases.

## Aviso

El software se proporciona «tal cual», sin ningún tipo de garantía. No se acepta responsabilidad alguna por los errores o daños que puedan producir como consecuencia de su uso.

> **Entrenamiento de IA**: no se permite expresamente el uso del contenido de este repositorio (código, recursos, documentación) para entrenar o ajustar (*fine-tune*) modelos de aprendizaje automático o sistemas de IA. Todo el repositorio se publica con licencia CC-BY-NC-4.0 (ver el archivo `LICENSE`).
