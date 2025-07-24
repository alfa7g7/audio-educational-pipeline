**Nota:** Solo entregamos un único archivo de audio de 5 minutos. Todo lo demás (transcripciones, métricas) lo generarás tú.  
**Adicional:** Si crees que falta alguna funcionalidad o mejora que sería guay incorporar al pipeline (por ejemplo, diarización avanzada, detección de emociones, un módulo de puntuación automática, etc.), ¡añádela y descríbela brevemente en tu informe!

### Recursos en 

- audio_full.m4a (5 minutos)

### Requisitos

1. **Generación de transcripción "raw"**
   - Usa la API o librería ASR que prefieras (Whisper, Google STT, Azure, etc.).
   - Crea un CSV transcript_raw.csv con:
     

csv
     audio_id,transcript_raw
     01,"…texto generado para todo el audio…"



2. **Creación de un "gold set"**
   - Del audio completo, extrae **5 fragmentos** (cada uno de 30–60 s) que consideres representativos.
   - Transcribe manualmente esos 5 clips y guarda en transcript_gold.csv:
     

csv
     clip_id,start_time,end_time,transcript_gold,speaker
     01,00:00,00:45,"Hello everyone, welcome to class","teacher"
     02,01:30,02:10,"I have a question about the present perfect","student"
     …


   - Asigna speaker ("teacher" o "student") según quién hable.

3. **Pipeline de corrección**
   - Selecciona e implementa un modelo de lenguaje (p. ej. transformer pretrained) que transforme **cada** transcript_raw → transcript_corrected.
   - Justifica:
     - Nombre y tamaño del modelo.
     - Si hiciste fine-tuning o solo inference.

4. **Evaluación cuantitativa**
   - Para tus 5 clips "gold":
     - Calcula WER y CER **raw vs. gold** y **corrected vs. gold**.
   - Presenta:
     - Tabla con WER/CER antes y después.
     - Gráfica sencilla (barras o líneas) que muestre la mejora porcentual.

5. **Insights pedagógicos**
   - Basándote en los errores detectados en esos 5 clips, extrae los **3–5 errores gramaticales o léxicos** más frecuentes de los estudiantes.
   - Propón **una regla de negocio**:
     > "Si un alumno comete el error *Y* más de *Z* veces, sugerir ejercicio de *…*."

6. **Funcionalidad extra (opcional)**
   - Describe cualquier módulo o característica adicional que hayas integrado (por ejemplo, scoring automático, detección de turnos de habla, feedback de pronunciación, etc.).
   - Explica brevemente su valor añadido y cómo lo has implementado.

---

### Entrega

- **Notebook Jupyter** (.ipynb) con:
  1. Código para llamar al ASR y generar transcript_raw.csv.  
  2. Script/notebook para recortar los 5 clips, crear tu gold set y calcular WER/CER.  
  3. Pipeline de corrección.  
  4. requirements.txt.

- **Informe breve** (Markdown o PDF) con:
  1. Descripción y justificación técnica de la ASR y el modelo de corrección.  
  2. Tabla de métricas y la gráfica comparativa.  
  3. Listado de los 3–5 errores frecuentes.  
  4. Regla de negocio propuesta y recomendaciones a futuro.  
  5. *(Opcional)* Descripción de la funcionalidad extra añadida y su impacto.