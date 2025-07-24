-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:19
-- Luau version 6, Types version 3
-- Time taken: 0.000834 seconds

local module = {}
local devAssert_upvr = require(script.Parent.Parent.jsutils.devAssert).devAssert
function module.formatError(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: devAssert_upvr (readonly)
	]]
	devAssert_upvr(arg1, "Received nil error.")
	local var5
	if arg1.message and 0 < string.len(arg1.message) then
		var5 = arg1.message
	else
		var5 = "An unknown error occurred."
	end
	local locations = arg1.locations
	local path = arg1.path
	local extensions = arg1.extensions
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl.extensions = extensions
		tbl.path = path
		tbl.locations = locations
		tbl.message = var5
		local tbl = {}
		return tbl
	end
	if not extensions or not INLINED() then
	end
	return {
		message = var5;
		locations = locations;
		path = path;
	}
end
return module