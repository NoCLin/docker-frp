 # frp docker 镜像


## 如何使用


以 `frps` 举例 `frpc` 同理

`cd frps`

按 [官方文档](https://github.com/fatedier/frp) 配置 `./frps.ini`

默认挂载了 `logs` 目录，可设置 `log_file = ./logs/frps.log` 将日志文件映射出来

使用 `docker-compose up` 启动

> 注意: `frps` 需要修改 `docker-compose.yml` 做端口映射，与注意frps宿主机网络防火墙
>
> `frpc宿主机内网资源` -> `frpc(docker)` -> `frps(docker)` -> `frps宿主机` -> `外网`
>
> frpc 默认设置网络类型为 `host`，可以访问宿主机网段网络资源
