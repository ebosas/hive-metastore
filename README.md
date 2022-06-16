# Hive Metastore

## Deploy

```
kubectl create configmap metastore-cfg --dry-run=client --from-file=conf/metastore-site.xml --from-file=conf/core-site.xml -o yaml | kubectl apply -n intelligentedge -f -
```
```
kubectl apply -f mariadb.yaml -n intelligentedge
kubectl apply -f metastore.yaml -n intelligentedge
```

## Update catalogs

Add the following to the catalogs configmap

```
  hive.properties: |
    connector.name=hive-hadoop2
    hive.metastore.uri=thrift://hive-metastore.intelligentedge.svc.cluster.local:9083
    hive.allow-drop-table=true
```
