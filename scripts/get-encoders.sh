cd ..
source env/bin/activate

rm -rf DAMSMencoders/*

cd DAMSMencoders/
mkdir -p bird
mkdir -p coco

gdown -O bird/temp.zip --id 1GNUKjVeyWYBJ8hEU-yrfYQpDOkxEyP3V
gdown -O coco/temp.zip --id 1zIrXCE9F6yfbEJIbNP5-YrEe2pZcPSGJ

unzip bird/temp.zip -d bird
mv bird/bird bird/inception
unzip coco/temp.zip -d coco
mv coco/bird coco/inception

rm bird/temp.zip coco/temp.zip
