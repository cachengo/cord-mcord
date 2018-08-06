export IMAGE_TAG=$(cat VERSION)

docker manifest create --amend cachengo/mcord-synchronizer:$IMAGE_TAG cachengo/mcord-synchronizer-x86_64:$IMAGE_TAG cachengo/mcord-synchronizer-aarch64:$IMAGE_TAG
docker manifest push cachengo/mcord-synchronizer:$IMAGE_TAG
