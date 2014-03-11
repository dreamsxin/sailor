local lp = require"src.web_utils.lp"
local lat = require"src.lib.latclient"

local M = {
	lat = lat
}

function M.translate (s)
	lat.js_url = "pub/latclient/js"
	s = lat.translate(s)
	return lp.translate(s)
end

function M.setoutfunc (f)
	lat.js_served = false
	lp.setoutfunc(f)
end

return M