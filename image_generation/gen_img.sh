#!/usr/bin/env bash
cd ../
export BLENDER_PATH="$PWD/blender-2.78b-linux-glibc219-x86_64"
cd image_generation
export PATH=$BLENDER_PATH:$PATH
echo $BLENDER_PATH
start_idx=3100
blender --background --python increment_render_images.py -- --num_images 10000 --min_objects 4 --max_objects 4 --output_image_dir ../inc_output/images/ --output_scene_dir ../inc_output/scenes/ --output_scene_file ../inc_output/CLEVR_scenes${start_idx}.json --use_gpu 1 --start_idx ${start_idx}
