#/bin/sh

ROOT=`pwd`
PROTO=$ROOT/proto
SOURCES=$ROOT/Sources

# check if we are in the ROOT dir, else fail
if [ ! -d $PROTO -a -d $SOURCES ];
then
    echo "Not in root directory"
    exit
fi

# import proto dirs from cosmos and tendermint - any others?


# create directory structure
mkdir -p $SOURCES/CosmosProto
#mkdir -p $SOURCES/IBCProto
#mkdir -p $SOURCES/TendermintProto

# iterate over ./proto/cosmos and ./proto/ibc and run protoc

# Cosmos
cd $PROTO
for i in `find cosmos | grep .proto`; do
protoc $i --grpc-swift_opt=Client=true,Server=true,Visibility=Public,FileNaming=PathToUnderscores,ProtoPathModuleMappings="moduleMapping" --grpc-swift_out=$SOURCES/CosmosProto ;
protoc $i --swift_opt=Visibility=Public,FileNaming=PathToUnderscores,ProtoPathModuleMappings="./moduleMapping" --swift_out=$SOURCES/CosmosProto ;
done

# IBC
for i in `find ibc | grep .proto`; do
protoc $i --grpc-swift_opt=Client=true,Server=true,Visibility=Public,FileNaming=PathToUnderscores,ProtoPathModuleMappings="moduleMapping" --grpc-swift_out=$SOURCES/CosmosProto ;
protoc $i --swift_opt=Visibility=Public,FileNaming=PathToUnderscores,ProtoPathModuleMappings="./moduleMapping" --swift_out=$SOURCES/CosmosProto ;
done

# Tendermint
for i in `find tendermint | grep .proto`; do
protoc $i --grpc-swift_opt=Client=true,Server=true,Visibility=Public,FileNaming=PathToUnderscores,ProtoPathModuleMappings="moduleMapping" --grpc-swift_out=$SOURCES/CosmosProto ;
protoc $i --swift_opt=Visibility=Public,FileNaming=PathToUnderscores,ProtoPathModuleMappings="./moduleMapping" --swift_out=$SOURCES/CosmosProto ;
done

# confio
for i in `find confio | grep .proto`; do
protoc $i --grpc-swift_opt=Client=true,Server=true,Visibility=Public,FileNaming=PathToUnderscores,ProtoPathModuleMappings="moduleMapping" --grpc-swift_out=$SOURCES/CosmosProto ;
protoc $i --swift_opt=Visibility=Public,FileNaming=PathToUnderscores,ProtoPathModuleMappings="./moduleMapping" --swift_out=$SOURCES/CosmosProto ;
done

# create Package.swift

