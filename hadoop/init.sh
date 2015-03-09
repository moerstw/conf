apt-get install -y openjdk-7-jdk
apt-get install -y maven

echo '
# HADOOP VARIABLES START
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export HADOOP_HOME=/usr/hadoop
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HADOOP_HOME/sbin
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"
export HBASE_HOME=$HADOOP_HOME/hbase
export PATH=$PATH:$HBASE_HOME/bin
# HADOOP VARIABLES END
' >> ~/.bashrc
mkdir -p /usr/hadoop/hstore/hdfs/namenode
mkdir -p /usr/hadoop/hstore/hdfs/datanode
mkdir -p /usr/hadoop/hstore/hdfs/pseudonamenode
mkdir -p /usr/hadoop/hstore/hdfs/pseudodatanode

