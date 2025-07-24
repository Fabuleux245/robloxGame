-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:33
-- Luau version 6, Types version 3
-- Time taken: 0.000419 seconds

local SearchTypes_upvr = require(script:FindFirstAncestor("DiscoveryUtils").Parent.RobloxAppEnums).SearchTypes
return function(arg1) -- Line 4, Named "isSearchTypeInOmniSearch"
	--[[ Upvalues[1]:
		[1]: SearchTypes_upvr (readonly)
	]]
	if arg1 == SearchTypes_upvr.Games or arg1 == SearchTypes_upvr.Players or arg1 == SearchTypes_upvr.Auto or arg1 == SearchTypes_upvr.TopResults then
		return true
	end
	return false
end