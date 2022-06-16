# Hive Metastore

```
kubectl create configmap metastore-cfg --dry-run --from-file=conf/metastore-site.xml --from-file=conf/core-site.xml -o yaml | kubectl apply -f -n intelligentedge -

kubectl apply -f mariadb.yaml -n intelligentedge
kubectl apply -f metastore.yaml -n intelligentedge
```
