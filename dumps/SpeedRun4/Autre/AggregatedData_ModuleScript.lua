-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:38
-- Luau version 6, Types version 3
-- Time taken: 0.001134 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 4
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_upvr)
	return module
end
local function _(arg1) -- Line 10, Named "isRbxAssetId"
	return arg1:find("rbxassetid://")
end
function module_upvr.addPlay(arg1, arg2, arg3, arg4) -- Line 14
	if not arg2:find("rbxassetid://") then
	else
		local any_sub_result1 = arg2:sub(14)
		if arg1[any_sub_result1] == nil then
			local tbl = {}
			tbl.playtime = arg3
			tbl.loopcount = arg4
			arg1[any_sub_result1] = tbl
			return
		end
		local var5 = arg1[any_sub_result1]
		var5.playtime += arg3
		local var6 = arg1[any_sub_result1]
		var6.loopcount += arg4
	end
end
return module_upvr