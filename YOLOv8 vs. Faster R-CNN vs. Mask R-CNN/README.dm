# YOLOv8 vs. Faster R-CNN vs. Mask R-CNN

Comparison of one-stage and two-stage object detectors on the same image, for detection and instance segmentation.

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/YOUR_USER/YOUR_REPO/blob/main/yolo_vs_rcnn_comparison.ipynb)

## What it does


The notebook runs all four COCO-pretrained models on one image with a shared confidence threshold, then reports latency, FPS, detections and parameter count. Timing uses warm-up runs and GPU synchronisation.

## Results

Run the notebook to generate the figures and `assets/benchmark_results.csv`, then paste your numbers here:

## Model Performance Comparison

## Model Performance Comparison

| Model | Task | Lat. | Std. | FPS | Det. | Params |
|---|---|---:|---:|---:|---:|---:|
| YOLOv8n | Det. | 162.8 | 7.0 | 6.1 | 4 | 3.2 |
| Faster R-CNN | Det. | 8279.5 | 601.1 | 0.1 | 5 | 41.8 |
| YOLOv8n-seg | Seg. | 311.9 | 53.4 | 3.2 | 4 | 3.4 |
| Mask R-CNN | Seg. | 8855.8 | 499.2 | 0.1 | 5 | 44.4 | C

![Detection comparison](assets/detection_comparison.png)
![Segmentation comparison](assets/segmentation_comparison.png)
![Benchmark](https://github.com/khaledn66/ML-Projects/blob/main/YOLOv8%20vs.%20Faster%20R-CNN%20vs.%20Mask%20R-CNN/assets/benchmark.png)

## Run it

Open the notebook in Colab with the badge above, or locally:

```bash
pip install -r requirements.txt
jupyter notebook yolo_vs_rcnn_comparison.ipynb
```

Set `IMAGE_PATH` in the configuration cell to use your own image.

## Limitations

- One image only. Results do not generalise.
- Detection count is not accuracy. The notebook has no ground-truth labels, so it reports no mAP.
- Only the smallest YOLOv8 variant is tested.

## Next steps

- mAP@0.5:0.95 on a COCO val2017 subset
- Benchmark over an image folder
- Fine-tune both families on a custom industrial dataset
- ONNX/TensorRT export of YOLO

## Repository layout

```
yolo_vs_rcnn_comparison.ipynb
requirements.txt
assets/            figures and benchmark CSV (created by the notebook)
```
