docker run --rm -it \
    --gpus 1,2,3,4,5,6,7,8 \
    -v /ssd/:/ssd \
    -v ${PWD}:/workspace \
    -v /ssd/wphu/chatglm/THUDM:/THUDM \
    -v /ssd/wphu/chatglm/sat_models:/root/.sat_models \
    -p 8080:8080 \
    registry.aibee.cn/aibee/visualglm:visualglm.v1.0 \
    bash 
