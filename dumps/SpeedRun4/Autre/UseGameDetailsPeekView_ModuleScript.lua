-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:37
-- Luau version 6, Types version 3
-- Time taken: 0.000408 seconds

local Players_upvr = game:GetService("Players")
local isSubjectToDesktopPolicies_upvr = require(script:FindFirstAncestor("GameDetail").Parent.SharedFlags).isSubjectToDesktopPolicies
return function() -- Line 6
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: isSubjectToDesktopPolicies_upvr (readonly)
	]]
	if not Players_upvr.LocalPlayer then
		return false
	end
	if isSubjectToDesktopPolicies_upvr() then
		return false
	end
	return true
end