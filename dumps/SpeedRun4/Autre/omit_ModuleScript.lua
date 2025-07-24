-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:36
-- Luau version 6, Types version 3
-- Time taken: 0.000711 seconds

local Parent = script.Parent
local collectSet_upvr = require(Parent.collectSet)
local forEach_upvr = require(Parent.forEach)
return function(arg1, arg2) -- Line 12, Named "omit"
	--[[ Upvalues[2]:
		[1]: collectSet_upvr (readonly)
		[2]: forEach_upvr (readonly)
	]]
	local module_upvr = {}
	local var2_result1_upvr = collectSet_upvr(arg2)
	forEach_upvr(arg1, function(arg1_2, arg2_2) -- Line 15
		--[[ Upvalues[3]:
			[1]: var2_result1_upvr (readonly)
			[2]: module_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		if not var2_result1_upvr[arg2_2] then
			module_upvr[arg2_2] = arg1[arg2_2]
		end
	end)
	return module_upvr
end