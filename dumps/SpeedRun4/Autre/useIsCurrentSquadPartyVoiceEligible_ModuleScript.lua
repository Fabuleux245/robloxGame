-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:12
-- Luau version 6, Types version 3
-- Time taken: 0.000854 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local React_upvr = require(SquadsCore.Parent.React)
local SquadExternalContractContext_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadExternalContractContext)
local useCurrentSquadParentChannelId_upvr = require(SquadsCore.Hooks.useCurrentSquadParentChannelId)
function useIsCurrentSquadPartyVoiceEligible() -- Line 13
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: SquadExternalContractContext_upvr (readonly)
		[3]: useCurrentSquadParentChannelId_upvr (readonly)
	]]
	return React_upvr.useContext(SquadExternalContractContext_upvr).useParentChannelIsPartyVoiceEligible(useCurrentSquadParentChannelId_upvr() or "")
end
if not require(SquadsCore.Flags.GetFFlagEnablePartyVoiceOnlyForUnfilteredThreads)() then
	return function() -- Line 22
		return true
	end
end
return useIsCurrentSquadPartyVoiceEligible