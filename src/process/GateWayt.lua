---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by test.
--- DateTime: 2021/4/8 上午10:39
---

local assert = assert
--限流
local limit_req = require "resty.limit.req"
local utils = require "utils"

local _M = require("limiters.limiter"):new()

function _M:process_config()
    -- 速率
    self.bucket_rate = assert(self.conf["bucket_rate"], "Please set bucket_rate in bucket section!")
    -- 桶
    self.bucket_burst = assert(self.conf["bucket_burst"], "Please set bucket_burst in bucket section!")
    -- 桶针对 uri 还是客户端ip地址
    --self.bucket_target = assert(self.conf["bucket_target"], "Please set bucket_target in bucket section!")
    --self.bucket_target = string.lower(self.bucket_target)
    --print(self.bucket_target)
    --if (self.bucket_target ~= "ip" and self.bucket_target ~= "uri") then
    --    error("bucket_target error must be \"ip\" or \"uri\"")
    --end
    --
    --if (utils.is_null(self.conf["bucket_dict_name"])) then
    --    self.bucket_dict_name = "limit_srvs"
    --end
    --
    --self.bucket_rate = tonumber(self.bucket_rate)
    --if self.bucket_rate == nil then
    --    utils.log("bucket_rate must a number!", ngx.ERR)
    --    error("bucket_rate must a number!")
    --end
    --
    --self.bucket_burst = tonumber(self.bucket_burst)
    --if self.bucket_burst == nil then
    --    utils.log("bucket_burst must a number!", ngx.ERR)
    --    error("bucket_burst must a number!")
    --end

end


process_config();