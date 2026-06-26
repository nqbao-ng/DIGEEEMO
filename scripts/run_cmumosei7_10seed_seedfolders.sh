#!/usr/bin/env bash
set -euo pipefail

python run.py \
  --dataset CMUMOSEIDataset7 \
  --gpu 0 \
  --lr 0.00001 \
  --l2 0.0001 \
  --batch_size 16 \
  --epochs 100 \
  --hidden_dim 512 \
  --modals tva \
  --win 17 17 \
  --heter_n_layers 4 4 4 \
  --dropout_1 0.1 \
  --dropout_2 0.2 \
  --loss_type distil \
  --gammas 1.0 1.0 1.0 \
  --num_heads 8 \
  --temp 1.0 \
  --fusion_method gated \
  --seeds 260 9161 1833 3216 3620 6083 4642 2931 5973 2136 \
  --results_root results
