#!/bin/bash
#!/usr/bin/env bash


export src_dir='/home/vage/PycharmProjects/data/abc/testing_patches'
export dst_dir='/home/vage/PycharmProjects/data/abc_everything/testing_patches/train'

make_patches(){
	src="$1"
	filename="$(basename "$src")"
	echo "Processing $filename"
	python /home/vage/PycharmProjects/Deep-Vectorization-of-Technical-Drawings/dataset/dataset_utils/abc/make_patches.py "$src" "$dst_dir"
}
export -f make_patches

find $src_dir -type f -name '*.svg'|parallel make_patches
