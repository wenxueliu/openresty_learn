
local black_ips = {["127.0.0.1"]=true}
local ip = ngx.var.remote_addr
local port= ngx.var.remote_port
ngx.say("your address ", ip, ":", port)
