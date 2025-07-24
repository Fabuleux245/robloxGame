-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:04
-- Luau version 6, Types version 3
-- Time taken: 0.000898 seconds

local module_upvr = {}
function module_upvr.new(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {}
	module.maxLevel = arg1
	setmetatable(module, module_upvr)
	return module
end
local Logger_upvr = require(script.Parent.Parent.Parent.Logger)
function module_upvr.log(arg1, arg2, arg3) -- Line 14
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	if arg3.level == Logger_upvr.Levels.Error then
		error(arg2, 5)
	else
		if arg3.level == Logger_upvr.Levels.Warning then
			warn(arg2)
			return
		end
		print(arg2)
	end
end
return module_upvr