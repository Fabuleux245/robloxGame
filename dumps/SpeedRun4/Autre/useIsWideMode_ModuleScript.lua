-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:12
-- Luau version 6, Types version 3
-- Time taken: 0.000785 seconds

local Parent = script:FindFirstAncestor("SocialCommon").Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local FormFactor_upvr = require(Parent.FormFactor)
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: useSelector_upvr (readonly)
		[2]: FormFactor_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1) -- Line 8
		--[[ Upvalues[1]:
			[1]: FormFactor_upvr (copied, readonly)
		]]
		local var6
		if arg1.FormFactor ~= FormFactor_upvr.Enums.FormFactor.WIDE then
			var6 = false
		else
			var6 = true
		end
		return var6
	end)
end