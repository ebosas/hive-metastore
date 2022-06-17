#!/bin/sh

export HADOOP_HOME=/opt/hadoop-3.2.0
export HADOOP_LIB=${HADOOP_HOME}/share/hadoop/tools/lib
export HADOOP_CLASSPATH=${HADOOP_LIB}/aws-java-sdk-bundle-1.11.375.jar:${HADOOP_LIB}/hadoop-aws-3.2.0.jar:${HADOOP_LIB}/hadoop-azure-3.2.0.jar:${HADOOP_LIB}/wildfly-openssl-1.0.4.Final.jar:${HADOOP_LIB}/azure-data-lake-store-sdk-2.2.9.jar:${HADOOP_LIB}/azure-storage-7.0.0.jar:${HADOOP_LIB}/hadoop-azure-datalake-3.2.0.jar
export JAVA_HOME=/usr/local/openjdk-8

/opt/apache-hive-metastore-3.0.0-bin/bin/schematool -initSchema -dbType mysql
/opt/apache-hive-metastore-3.0.0-bin/bin/start-metastore
