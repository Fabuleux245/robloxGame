-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:52
-- Luau version 6, Types version 3
-- Time taken: 0.001988 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local FFlagSquadThirdPartySettingsChangesEnabled_upvr = require(Parent.SharedFlags).FFlagSquadThirdPartySettingsChangesEnabled
local RoactRodux_upvr = require(Parent.RoactUtils).Hooks.RoactRodux
if FFlagSquadThirdPartySettingsChangesEnabled_upvr then
	RoactRodux_upvr = require(Parent.React).useEffect
else
	RoactRodux_upvr = require(Parent.RoactUtils).Hooks.useEffectOnce
end
local useDispatch_upvr = RoactRodux_upvr.useDispatch
local useCurrentSquadId_upvr = require(SquadsCore.Hooks.useCurrentSquadId)
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadExternalContractContext)
local AppStorageService_upvr = game:GetService("AppStorageService")
local Constants_upvr = require(SquadsCore.Common.Constants)
local validateSquadId_upvr = require(SquadsCore.Common.validateSquadId)
local fetchActiveSquad_upvr = require(SquadsCore.Thunks.fetchActiveSquad)
local RoduxSquads_upvr = require(SquadsCore.RoduxSquads)
return function() -- Line 23
	--[[ Upvalues[11]:
		[1]: useDispatch_upvr (readonly)
		[2]: useCurrentSquadId_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: FFlagSquadThirdPartySettingsChangesEnabled_upvr (readonly)
		[5]: SquadExternalContractContext_upvr (readonly)
		[6]: AppStorageService_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: RoactRodux_upvr (readonly)
		[9]: validateSquadId_upvr (readonly)
		[10]: fetchActiveSquad_upvr (readonly)
		[11]: RoduxSquads_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var15_upvr = useCurrentSquadId_upvr() or ""
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local var18
	if FFlagSquadThirdPartySettingsChangesEnabled_upvr then
		var18 = React_upvr.useContext(SquadExternalContractContext_upvr)
	else
		var18 = nil
	end
	if FFlagSquadThirdPartySettingsChangesEnabled_upvr then
		local any_useIsChatEnabled_result1 = var18.useIsChatEnabled()
	else
	end
	React_upvr.useEffect(function() -- Line 36
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: AppStorageService_upvr (copied, readonly)
			[3]: Constants_upvr (copied, readonly)
			[4]: var15_upvr (readonly)
		]]
		if any_useState_result1_upvr then
			AppStorageService_upvr:SetItem(Constants_upvr.ACTIVE_SQUAD_APP_STORAGE_KEY, var15_upvr)
			AppStorageService_upvr:Flush()
		end
	end, {var15_upvr, any_useState_result1_upvr})
	local var23_upvr
	local var6_result1_upvr = useDispatch_upvr()
	RoactRodux_upvr(function() -- Line 44
		--[[ Upvalues[10]:
			[1]: FFlagSquadThirdPartySettingsChangesEnabled_upvr (copied, readonly)
			[2]: var23_upvr (readonly)
			[3]: AppStorageService_upvr (copied, readonly)
			[4]: Constants_upvr (copied, readonly)
			[5]: validateSquadId_upvr (copied, readonly)
			[6]: var15_upvr (readonly)
			[7]: var6_result1_upvr (readonly)
			[8]: fetchActiveSquad_upvr (copied, readonly)
			[9]: RoduxSquads_upvr (copied, readonly)
			[10]: any_useState_result2_upvr (readonly)
		]]
		if FFlagSquadThirdPartySettingsChangesEnabled_upvr and not var23_upvr then
		else
			local any_GetItem_result1 = AppStorageService_upvr:GetItem(Constants_upvr.ACTIVE_SQUAD_APP_STORAGE_KEY)
			local var12_result1 = validateSquadId_upvr(any_GetItem_result1)
			if var12_result1 and var15_upvr == "" then
				var6_result1_upvr(fetchActiveSquad_upvr())
			elseif any_GetItem_result1 ~= "" and not var12_result1 or var15_upvr ~= "" and var15_upvr ~= any_GetItem_result1 then
				var6_result1_upvr(RoduxSquads_upvr.Actions.CurrentSquadUpdated(nil))
				AppStorageService_upvr:SetItem(Constants_upvr.ACTIVE_SQUAD_APP_STORAGE_KEY, "")
				AppStorageService_upvr:Flush()
			end
			any_useState_result2_upvr(true)
		end
	end, {var23_upvr})
	return nil
end