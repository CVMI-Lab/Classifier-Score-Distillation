#!/bin/bash
trap "exit" INT TERM ERR
trap "kill 0" EXIT
export OMP_NUM_THREADS=1


# for object
prompt="a DSLR photo of edible typewriter made out of vegetables"
# 1. NeRF stage
python launch.py --config ./configs/csd-if-object.yaml --train --gpu 1 \
system.prompt_processor.prompt="$prompt" system.background.random_aug=true system.background.random_aug_prob=0.5 use_timestamp=False

# 2. DMTet stage
prompt_path="${prompt// /_}"
python launch.py --config ./configs/csd-sd-refine-object.yaml --train --gpu 1 \
system.prompt_processor.prompt="$prompt" system.background.random_aug=true system.background.random_aug_prob=0.5 use_timestamp=False system.geometry_convert_from="outputs/csd-if-object/$prompt_path/ckpts/last.ckpt"