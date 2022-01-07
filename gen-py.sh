#!/bin/bash

mkdir -p ./badbot_protos_pysrc
python3 -m grpc_tools.protoc -I=badbot-protos --python_out=./badbot_protos_pysrc ./badbot-protos/consts.proto
python3 -m grpc_tools.protoc -I=badbot-protos --python_out=./badbot_protos_pysrc ./badbot-protos/cmd_operational_mode.proto
python3 -m grpc_tools.protoc -I=badbot-protos --python_out=./badbot_protos_pysrc ./badbot-protos/botstatus.proto
python3 -m grpc_tools.protoc -I=badbot-protos --python_out=./badbot_protos_pysrc ./badbot-protos/cmdtoggle.proto
python3 -m grpc_tools.protoc -I=badbot-protos --python_out=./badbot_protos_pysrc ./badbot-protos/cmdvel.proto
python3 -m grpc_tools.protoc -I=badbot-protos --python_out=./badbot_protos_pysrc ./badbot-protos/videoframe.proto
python3 -m grpc_tools.protoc -I=badbot-protos --python_out=./badbot_protos_pysrc ./badbot-protos/lidarscan.proto
python3 -m grpc_tools.protoc -I=badbot-protos --python_out=./badbot_protos_pysrc ./badbot-protos/imudata.proto
python3 -m grpc_tools.protoc -I=badbot-protos --python_out=./badbot_protos_pysrc ./badbot-protos/gpsdata.proto
python3 -m grpc_tools.protoc -I=badbot-protos --python_out=./badbot_protos_pysrc ./badbot-protos/obj_det_coords.proto
python3 -m grpc_tools.protoc -I=badbot-protos --python_out=./badbot_protos_pysrc ./badbot-protos/telemetry.proto
python3 -m grpc_tools.protoc -I=badbot-protos --python_out=./badbot_protos_pysrc ./badbot-protos/message.proto

#python3 -m grpc_tools.protoc -Ibadbot-protos --python_out=badbot_protos_pysrc --grpc_python_out=badbot_protos_pysrc badbot-protos/services.proto

pushd badbot_protos_pysrc
sed -i -E 's/^import.*_pb2/from . \0/' *_pb2*.py
popd