cd ..
source env/bin/activate

mkdir -p data
cd data

# birds

cd birds
gdown -O temp.tgz --id 1hbzc_P1FuxMkcabkgn9ZKinBwW683j45
tar -xvzf temp.tgz > /dev/null
rm temp.tgz


read -p "Get coco too? [y/n]" -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo ""
    exit 0
fi


# coco

cd ../coco

wget http://images.cocodataset.org/zips/train2017.zip
wget http://images.cocodataset.org/zips/val2017.zip
wget http://images.cocodataset.org/zips/test2017.zip
wget http://images.cocodataset.org/zips/unlabeled2017.zip

rm -rf train2017 val2017 test2017 unlabeled2017

unzip train2017.zip > /dev/null
rm train2017.zip

unzip val2017.zip > /dev/null
rm val2017.zip

unzip test2017.zip > /dev/null
rm test2017.zip

unzip unlabeled2017.zip > /dev/null
rm unlabeled2017.zip
