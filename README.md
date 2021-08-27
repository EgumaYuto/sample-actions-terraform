# sample-actions-terraform
以下のスクリプトを実行すると簡単な構築が可能です。
``` 
$ cd path/to/sample-actions-terraform/infra
$ ./tf.sh init _terraform_config/backend && ./tf.sh apply _terraform_config/backend
$ ./tf.sh init pattern1 && ./tf.sh apply pattern1
$ ./tf.sh init pattern2 && ./tf.sh apply pattern2
```