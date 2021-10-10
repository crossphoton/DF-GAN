.PHONY: all get-metadata get-encoders get-datasets train-cub train-coco
all:
	echo There is no default functionality.

setup: get-metadata get-encoders get-datasets

get-metadata: scripts/get-metadata.sh
	cd scripts && bash get-metadata.sh

get-metadata: scripts/get-datasets.sh
	cd scripts && bash get-datasets.sh

get-encoders: scripts/get-encoders.sh
	cd scripts && bash get-encoders.sh

cub: data/birds
	cd scripts && bash cub.sh

coco: data/coco
	cd scripts && bash coco.sh
