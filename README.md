

##测试

操作系统: Ubuntu 14.04

##安装

    $ wget -c https://openresty.org/download/ngx_openresty-1.9.3.2.tar.gz
    $ tar xfvz ngx_openresty-1.9.3.2.tar.gz
    $ ./configure
    $ make
    $ sudo make install

##运行

    $ cd /tmp/work
    $ git clone 
    $ cd /tmp
    $ mv   work
    $ /usr/local/openresty/nginx/sbin/nginx -p /tmp/work/ -c /tmp/work/conf/nginx.conf
    $ curl http://127.0.0.1:8080/
    <p>hello, world</p>
    $ curl 'http://127.0.0.1:8080/api/subtraction?a=2&b=3'
    -1

    如果修改配置文件,

    1. 测试配置有效性

    $ /usr/local/openresty/nginx/sbin/nginx -p /tmp/work/ -c /tmp/work/conf/nginx.conf -t

        nginx: [alert] lua_code_cache is off; this will hurt performance in /tmp/work/conf/nginx.conf:15
        nginx: the configuration file /tmp/work/conf/nginx.conf syntax is ok
        nginx: configuration file /tmp/work/conf/nginx.conf test is successful

    2. 重载配置

    $ /usr/local/openresty/nginx/sbin/nginx -p /tmp/work/ -c /tmp/work/conf/nginx.conf -s reload

##参考

http://openresty.org/
http://wiki.jikexueyuan.com/project/nginx-lua/
