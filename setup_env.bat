@echo off
REM Script para crear y activar entorno virtual, e instalar dependencias

python -m venv venv
if exist venv\Scripts\activate.bat (
    call venv\Scripts\activate.bat
    echo Entorno virtual activado.
    pip install --upgrade pip
    pip install -r requirements.txt
    echo Dependencias instaladas.
    echo Listo. Para activar el entorno en el futuro, ejecuta: venv\Scripts\activate.bat
) else (
    echo Error: No se pudo crear el entorno virtual.
) 