-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:52
-- Luau version 6, Types version 3
-- Time taken: 0.000738 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadExternalContractContext)
local FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr = require(Parent.SharedFlags).FFlagPartyDevAPIToRespectThirdPartySettingsEnabled
local SquadRccEventManager_upvr = require(SquadsCore.ServiceManager.SquadRccEventManager)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
return function(arg1) -- Line 19
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: SquadExternalContractContext_upvr (readonly)
		[3]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (readonly)
		[4]: SquadRccEventManager_upvr (readonly)
		[5]: dependencyArray_upvr (readonly)
	]]
	local var9_upvr = SquadExternalContractContext_upvr
	if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
		var9_upvr = React_upvr.useContext(var9_upvr).useIsChatEnabled()
	else
		var9_upvr = true
	end
	React_upvr.useEffect(function() -- Line 25
		--[[ Upvalues[3]:
			[1]: SquadRccEventManager_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var9_upvr (readonly)
		]]
		SquadRccEventManager_upvr:fireSquadChangeEvent(arg1.currentSquadId, var9_upvr)
	end, dependencyArray_upvr(arg1.currentSquadId, var9_upvr))
	return nil
end