local param= require("comm.param")
local args = ngx.req.get_uri_args()

local values = {}
for k,v in pairs(args) do
    table.insert(values, v)
end

if not param.is_number(unpack(values)) then
    ngx.exit(ngx.HTTP_BAD_REQUEST)
    return
end
