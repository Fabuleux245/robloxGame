-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:02
-- Luau version 6, Types version 3
-- Time taken: 0.001198 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local useSelector_upvr = require(Parent_2.dependencies).useSelector
local getContactImporterParams_upvr = require(script.Parent.getContactImporterParams)
local OffPlatformFriendRequestsIXP_upvr = require(Parent_2.Flags.OffPlatformFriendRequestsIXP)
local useUiModeInfo_upvr = require(Parent.RobloxAppHooks).useUiModeInfo
local UiMode_upvr = require(Parent.RobloxAppEnums).UiMode
return function(arg1) -- Line 11
	--[[ Upvalues[5]:
		[1]: useSelector_upvr (readonly)
		[2]: getContactImporterParams_upvr (readonly)
		[3]: OffPlatformFriendRequestsIXP_upvr (readonly)
		[4]: useUiModeInfo_upvr (readonly)
		[5]: UiMode_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useSelector_upvr_result1 = useSelector_upvr(getContactImporterParams_upvr)
	local var11
	if useUiModeInfo_upvr().uiMode ~= UiMode_upvr.TenFoot then
		var11 = false
	else
		var11 = true
	end
	local var12
	if not var11 and useSelector_upvr(function(arg1_2) -- Line 12
		return arg1_2.IsLocalUserSoothsayer
	end) then
		local _ = true
	else
		var12 = OffPlatformFriendRequestsIXP_upvr.useOffPlatformFriendRequestsEnabled()
		if var12 then
			var12 = arg1.policyIsEnabled
		end
	end
	local var14 = var12 and useSelector_upvr_result1.shouldShowContactImporterFeature
	local var15 = var14
	if var15 then
		var15 = useSelector_upvr_result1.shouldShowContactImporterUpsellModal
	end
	local module = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.shouldFetchContactImporterData = var12 or false
	module.shouldShowContactImporter = var14 or false
	module.shouldShowContactImporterModal = var15 or false
	return module
end