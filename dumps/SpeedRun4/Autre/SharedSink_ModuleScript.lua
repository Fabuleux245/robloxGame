-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:43
-- Luau version 6, Types version 3
-- Time taken: 0.000570 seconds

local module_3_upvr = {}
module_3_upvr.__index = module_3_upvr
function module_3_upvr.new(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local module_2 = {}
	module_2.log = arg1
	module_2.lastContext = nil
	setmetatable(module_2, module_3_upvr)
	return module_2
end
function module_3_upvr.newSink(arg1, arg2) -- Line 23
	local module = {}
	module.maxLevel = arg2
	function module.log(arg1_2, arg2_2, arg3) -- Line 26
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg3 ~= arg1.lastContext then
			arg1.lastContext = arg3
			arg1.log(arg1_2, arg2_2, arg3)
		end
	end
	return module
end
return module_3_upvr