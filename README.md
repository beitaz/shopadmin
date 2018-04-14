# README

```shell
$ rails new shopadmin -BTCO
$ cd shopadmin && echo "gem 'mongoid', '~> 6.1.0'" >> Gemfile
$ bundle install
$ rails g devise:install
$ rails g mongoid:install
$ rails g mongoid:devise
$ mkdir db
$ sudo mongod --dbpath $(pwd)/db # 在 dbpath 指定位置启动 mongodb
> ...
> waiting for connections on port 27017
```