FROM registry.aibee.cn/aibee/eventgpt.v1:chatglm.v1.1
# COPY . .
RUN pip install pymysql -i https://pypi.douban.com/simple
RUN pip install accelerate -i https://pypi.douban.com/simple
RUN pip install -i https://mirrors.aliyun.com/pypi/simple/ -r requirements.txt
RUN pip install -U SwissArmyTransformer -i https://mirrors.aliyun.com/pypi/simple/
ENV model_path="/model"

EXPOSE 7860

# CMD [ "python3","web_demo.py" ]
