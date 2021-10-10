cd ..
source env/bin/activate

mkdir -p data
cd data

# birds
gdown -O temp.zip https://drive.google.com/uc?id=1O_LtUP9sch09QH3s_EBAgLEctBQ5JBSJ
echo Unzipping
unzip temp.zip > /dev/null
rm temp.zip
rm -rf __MACOSX/
echo Done...

read -p "Get coco too? [y/n]" -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 0
fi

# coco
gdown -O temp.zip https://drive.google.com/uc?id=1rSnbIGNDGZeHlsUlLdahj0RJ9oo6lgH9
unzip temp.zip > /dev/null
rm temp.zip
rm -rf __MACOSX/
