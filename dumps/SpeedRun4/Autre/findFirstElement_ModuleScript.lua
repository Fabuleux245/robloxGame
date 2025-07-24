-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:00
-- Luau version 6, Types version 3
-- Time taken: 0.000643 seconds

local findFirstInstance_upvr = require(script.Parent.findFirstInstance)
local Element_upvr = require(script:FindFirstAncestor("Packages").Dev.Rhodium).Element
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[2]:
		[1]: findFirstInstance_upvr (readonly)
		[2]: Element_upvr (readonly)
	]]
	local var2_result1 = findFirstInstance_upvr(arg1, arg2)
	if var2_result1 then
		return Element_upvr.new("game."..var2_result1:GetFullName())
	end
	return nil
end