cd ..
source env/bin/activate

mkdir -p data
cd data

# birds

cd birds
wget "https://data.deepai.org/CUB200(2011).zip" -O temp.zip
unzip temp.zip > /dev/null
rm temp.zip
rm segmentations.tgz
tar -xvzf CUB_200_2011.tgz > /dev/null
rm CUB_200_2011.tgz


read -p "Get coco too? [y/n]" -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo ""
    exit 0
fi


# coco

cd ../coco
rm -rf train2017 val2017 test2017 unlabeled2017

wget http://images.cocodataset.org/zips/train2014.zip

unzip train2014.zip > /dev/null
rm train2014.zip

wget http://images.cocodataset.org/zips/val2014.zip

unzip val2014.zip > /dev/null
rm val2014.zip
