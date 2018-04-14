# README

```shell
$ rails new shopadmin -BTCO
$ cd shopadmin && echo "gem 'mongoid', '~> 6.1.0'" >> Gemfile
$ bundle install
$ rails g devise:install
$ rails g mongoid:install
$ rails g mongoid:devise
$ sudo mongod  # 启动 mongodb
> ...
> waiting for connections on port 27017
```