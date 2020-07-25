echo "TAG (example: gimp:latest)"
read tag
sudo docker build -t $tag .
echo "Build finished"
