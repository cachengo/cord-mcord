export IMAGE_TAG=$(cat VERSION)
export AARCH=`uname -m`

docker build -f Dockerfile.synchronizer -t cachengo/mcord-synchronizer-$AARCH:$IMAGE_TAG .
docker push cachengo/mcord-synchronizer-$AARCH:$IMAGE_TAG
