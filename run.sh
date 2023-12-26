#!/bin/bash
trap "exit" INT TERM ERR
trap "kill 0" EXIT
export OMP_NUM_THREADS=1

# for character
prompt="a DSLR photo of a corgi wearing a beret and holding a baguette, standing up on two hind legs"
# 1. NeRF stage
python launch.py --config ./configs/csd-if.yaml --train --gpu 0 \
system.prompt_processor.prompt="$prompt" system.background.random_aug=true system.background.random_aug_prob=0.5 use_timestamp=False

# 2. DMTet stage
prompt_path="${prompt// /_}"
python launch.py --config ./configs/csd-sd-refine.yaml --train --gpu 0 \
system.prompt_processor.prompt="$prompt" system.background.random_aug=true system.background.random_aug_prob=0.5 use_timestamp=False system.geometry_convert_from="outputs/csd-if/$prompt_path/ckpts/last.ckpt"