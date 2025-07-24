-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:19
-- Luau version 6, Types version 3
-- Time taken: 0.000618 seconds

local dependencies = require(script:FindFirstAncestor("Squads").dependencies)
local React_upvr = dependencies.React
local SquadExternalContractContext_upvr = dependencies.SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
return function(arg1) -- Line 13
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: SquadExternalContractContext_upvr (readonly)
	]]
	if React_upvr.useContext(SquadExternalContractContext_upvr).useParentChannelHasSquadAccess(arg1.parentChannelId) then
		return arg1.children
	end
	return nil
end