local access = require "kong.plugins.middleman.access"
local kong_meta = require "kong.meta"

local MiddlemanHandler = {
  VERSION = kong_meta.version,
  PRIORITY = 1100,
}

function MiddlemanHandler:access(conf)
  access.execute(conf)
end

return MiddlemanHandler
