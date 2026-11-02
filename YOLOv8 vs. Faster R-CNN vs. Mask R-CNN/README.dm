# YOLOv8 vs. Faster R-CNN vs. Mask R-CNN

Comparison of one-stage and two-stage object detectors on the same image, for detection and instance segmentation.

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/YOUR_USER/YOUR_REPO/blob/main/yolo_vs_rcnn_comparison.ipynb)

## What it does

| Task | One-stage | Two-stage |
|---|---|---|
| Detection | YOLOv8n | Faster R-CNN (ResNet-50 FPN) |
| Instance segmentation | YOLOv8n-seg | Mask R-CNN (ResNet-50 FPN) |

The notebook runs all four COCO-pretrained models on one image with a shared confidence threshold, then reports latency, FPS, detections and parameter count. Timing uses warm-up runs and GPU synchronisation.

## Results

Run the notebook to generate the figures and `assets/benchmark_results.csv`, then paste your numbers here:

| Model | Latency (ms) | FPS | Detections | Params (M) | Hardware |
|---|---|---|---|---|---|
| YOLOv8n | | | | | |
| Faster R-CNN | | | | | |
| YOLOv8n-seg | | | | | |
| Mask R-CNN | | | | | |

![Detection comparison](assets/detection_comparison.png)
![Segmentation comparison](assets/segmentation_comparison.png)
![Benchmark](assets/benchmark.png)

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
