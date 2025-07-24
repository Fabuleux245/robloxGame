-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:06
-- Luau version 6, Types version 3
-- Time taken: 0.000387 seconds

local isWirable_upvr = require(script:FindFirstAncestor("SceneUnderstanding").wiring.isWirable)
return function(arg1) -- Line 8, Named "toWirableInstance"
	--[[ Upvalues[1]:
		[1]: isWirable_upvr (readonly)
	]]
	if arg1 and isWirable_upvr(arg1) then
		return arg1
	end
	return nil
end