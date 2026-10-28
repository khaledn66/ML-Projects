# Event Chronicle AI

**German Text Event Classification & Chronology Reconstruction**

## Overview

Event Chronicle AI is a small Natural Language Processing (NLP) project that processes German text, identifies event-related information, classifies sentences into event categories, and visualizes events on a timeline.

The project also integrates **Arize Phoenix** and **OpenTelemetry** to trace real classifier inference calls and inspect model inputs and outputs.

## Features

- **Sentence segmentation:** Splits German text into individual sentences using spaCy.
- **Multilingual embeddings:** Generates sentence embeddings using Sentence Transformers.
- **Clustering:** Groups semantically similar sentences using KMeans.
- **Date extraction:** Detects date expressions in German text with dateparser.
- **Event classification:** Uses a zero-shot classification model to assign event categories.
- **Timeline visualization:** Displays dated events chronologically with Matplotlib.
- **LLM/model observability:** Uses Arize Phoenix and OpenTelemetry to trace classifier calls and inspect their inputs, outputs, and execution status.

## Event Categories

The classifier uses the following candidate labels:

- `Festnahme` — Arrest
- `Hinweis` — Tip or lead
- `Beweismaterial` — Evidence
- `Sonstiges` — Other

The predicted category depends on the model output and is not guaranteed to be correct.

## Technologies

- Python
- Google Colab
- spaCy
- Sentence Transformers
- scikit-learn
- dateparser
- Hugging Face Transformers
- Facebook BART MNLI
- Matplotlib
- Arize Phoenix
- OpenTelemetry

## How It Works

1. A German text sample is provided as input.
2. spaCy splits the text into sentences.
3. Sentence Transformers generates multilingual embeddings.
4. KMeans groups the sentence embeddings.
5. dateparser extracts dates from the sentences.
6. A zero-shot classifier assigns an event category and scores to each sentence.
7. Matplotlib visualizes dated events on a timeline.
8. OpenTelemetry sends tracing data to Phoenix, where real classifier calls can be inspected.

## Getting Started

### Run in Google Colab

1. Download or clone this repository.
2. Open `event_chronicle_ai.ipynb` in Google Colab.
3. Run the notebook cells from top to bottom.
4. Follow the notebook instructions to open the Phoenix interface.
5. Inspect the final event table, timeline, and classifier traces.

The first run may take several minutes while the required models and language resources are downloaded.

## Phoenix Tracing

The notebook uses OpenTelemetry to create a trace span for each real classifier inference call.

The traces record:
- Input sentence
- Classifier model name
- Predicted event category
- Classification scores
- Execution status

This instrumentation is implemented around the classifier calls in the project code.

## Example Output

The notebook produces:
- A table containing dates, sentences, clusters, predicted event types, and scores
- A chronological timeline of events with category-based colors
- Phoenix traces for inspecting classifier inputs and outputs

## Limitations

- The project is a demonstration and is not a validated forensic or law-enforcement decision system.
- Zero-shot classification results may be incorrect and require human review.
- The selected `facebook/bart-large-mnli` model may not classify German text as reliably as a model specifically evaluated for German.
- Date extraction depends on how dates are expressed in the input text.
- The timeline can only position events chronologically when dates are successfully extracted.

## Future Improvements

- Evaluate a model better suited to German-language classification.
- Improve date extraction and handling of ambiguous dates.
- Add evaluation metrics using a labeled dataset.
- Extend the timeline with event filtering and grouping.
- Expand tracing to include additional pipeline stages.

## Disclaimer

This project is intended for educational and portfolio purposes only. Its predictions should not be used as the sole basis for real-world investigative, legal, or operational decisions.

## Author

Created as an NLP and model-observability portfolio project.
