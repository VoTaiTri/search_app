Elastic Search
==============

###Author: tribeo
***

##**1. Install**

####install **JDK**
```
sudo apt-get update
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get install oracle-java[7/8/9]-installer
java -version
```
####Install **EL**
- **Dowload** [hehe](https://www.elastic.co/downloads/elasticsearch) (.zip version)

- **Command**
```
unzip elasticsearch-[version].zip
cd elasticsearch-[version]
```
- **Configuration** : add to `/config/elasticsearch.yml`
```
network.host: 0.0.0.0
script.inline: on
script.indexed: on
```

- Start **EL**
```
./bin/elasticsearch
```

- Check **EL** in port `9200`
```
curl -X GET 'http://localhost:9200'
```
Or open browser in [localhost:9200](http://localhost:9200/)
Some thing like below :
```
{
  "name" : "tribeotk17",
  "cluster_name" : "my-application",
  "version" : {
    "number" : "2.1.0",
    "build_hash" : "72cd1f1a3eee09505e036106146dc1949dc5dc87",
    "build_timestamp" : "2015-11-18T22:40:03Z",
    "build_snapshot" : false,
    "lucene_version" : "5.3.1"
  },
  "tagline" : "You Know, for Search"
}
```