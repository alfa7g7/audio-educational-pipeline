# Proyecto: Pipeline de Audio Educativo

## Requisitos del sistema

- Python 3.8+
- ffmpeg (ejecutable, necesario para procesar archivos de audio)

## Instalación de dependencias

1. **Crea y activa un entorno virtual:**
   ```
   python -m venv venv
   venv\Scripts\activate
   ```

2. **Instala las dependencias de Python:**
   ```
   pip install -r requirements.txt
   ```

3. **Instala ffmpeg (obligatorio):**
   - Descarga la versión para Windows desde: https://www.gyan.dev/ffmpeg/builds/
   - Extrae el archivo ZIP en una carpeta, por ejemplo: `C:\ffmpeg`
   - Agrega la ruta `C:\ffmpeg\bin` a la variable de entorno `Path`.
   - Cierra y vuelve a abrir la terminal para que los cambios surtan efecto.
   - Verifica la instalación ejecutando en la terminal:
     ```
     ffmpeg -version
     ```
   - Si ves información de ffmpeg, ¡todo está listo!

## Uso del pipeline

1. **Abre Jupyter Notebook:**
   ```
   jupyter notebook
   ```

2. **Ejecuta el notebook `pipeline_audio.ipynb`:**
   - El notebook ejecutará automáticamente todos los pasos del pipeline
   - Generará los archivos de transcripción y métricas
   - Creará gráficas comparativas de WER/CER

## Archivos generados

- `transcript_raw.csv`: Transcripción automática del audio completo
- `transcript_gold.csv`: Transcripción manual de 5 fragmentos representativos
- `transcript_corrected.csv`: Transcripción corregida automáticamente
- `metrics.csv`: Métricas WER/CER antes y después de la corrección
- `errores_detallados.csv`: Análisis detallado de errores detectados
- `clip_01.wav` a `clip_05.wav`: Fragmentos de audio recortados

## Dependencias incluidas

- **openai-whisper**: Transcripción automática de audio
- **pydub**: Procesamiento y recorte de archivos de audio
- **jiwer**: Cálculo de métricas WER/CER
- **pandas**: Manipulación de datos y CSVs
- **matplotlib**: Generación de gráficas
- **torch**: Framework de deep learning (requerido por Whisper)
- **notebook**: Entorno Jupyter Notebook
- **ffmpeg-python**: Interfaz Python para ffmpeg
- **transformers**: Modelos de HuggingFace para corrección gramatical

## Notas
- El pipeline requiere ffmpeg para que Whisper y pydub puedan procesar archivos de audio.
- Si tienes problemas, asegúrate de que ffmpeg esté correctamente instalado y en el PATH del sistema.
- El modelo Whisper "large" puede tardar varios minutos en procesar el audio completo.
- Para mejor rendimiento, se recomienda tener una GPU compatible con CUDA. 