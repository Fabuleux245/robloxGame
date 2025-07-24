-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:19
-- Luau version 6, Types version 3
-- Time taken: 0.000623 seconds

local Parent = script.Parent
local forEach_upvr = require(Parent.forEach)
local append_upvr = require(Parent.append)
return function(arg1) -- Line 11, Named "flat"
	--[[ Upvalues[2]:
		[1]: forEach_upvr (readonly)
		[2]: append_upvr (readonly)
	]]
	local module_upvr = {}
	forEach_upvr(arg1, function(arg1_2) -- Line 13
		--[[ Upvalues[2]:
			[1]: append_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		append_upvr(module_upvr, arg1_2)
	end)
	return module_upvr
end