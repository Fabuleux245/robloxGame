-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:44
-- Luau version 6, Types version 3
-- Time taken: 0.004086 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local PlayerPermissionsModule_upvr = require(RobloxGui.Modules.PlayerPermissionsModule)
local FFlagInExperienceUserProfileSettingsEnabled_upvr = require(RobloxGui.Modules.Common.Flags.FFlagInExperienceUserProfileSettingsEnabled)
local Images = require(CorePackages.Packages.UIBlox).App.ImageSet.Images
local Parent = script.Parent.Parent
local tbl_upvr = {
	Admin = Images["icons/status/player/admin"];
	Intern = Images["icons/status/player/intern"];
	Star = Images["icons/status/player/videostar"];
}
local function dispatchIfPlayerExists_upvr(arg1, arg2, arg3) -- Line 36, Named "dispatchIfPlayerExists"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg1:getState().players)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [15.2147483650]
	-- KONSTANTERROR: [11] 9. Error Block 2 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 50, Named "isInExperienceNameEnabled"
	--[[ Upvalues[2]:
		[1]: FFlagInExperienceUserProfileSettingsEnabled_upvr (readonly)
		[2]: PlayerPermissionsModule_upvr (readonly)
	]]
	if FFlagInExperienceUserProfileSettingsEnabled_upvr and PlayerPermissionsModule_upvr.IsPlayerInExperienceNameEnabledAsync(arg1) then
		return true
	end
	return false
end
local SetPlayerSpecialGroupIcon_upvr = require(Parent.Actions.SetPlayerSpecialGroupIcon)
local function getGroupsPermissionsInfo_upvr(arg1, arg2) -- Line 59, Named "getGroupsPermissionsInfo"
	--[[ Upvalues[5]:
		[1]: PlayerPermissionsModule_upvr (readonly)
		[2]: FFlagInExperienceUserProfileSettingsEnabled_upvr (readonly)
		[3]: dispatchIfPlayerExists_upvr (readonly)
		[4]: SetPlayerSpecialGroupIcon_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 27 start (CF ANALYSIS FAILED)
	local var12
	if FFlagInExperienceUserProfileSettingsEnabled_upvr and PlayerPermissionsModule_upvr.IsPlayerInExperienceNameEnabledAsync(arg2) then
		var12 = true
	else
		var12 = false
	end
	-- KONSTANTERROR: [6] 6. Error Block 27 end (CF ANALYSIS FAILED)
end
local SetPlayerIsCreator_upvr = require(Parent.Actions.SetPlayerIsCreator)
local function getGameCreator_upvr(arg1, arg2) -- Line 75, Named "getGameCreator"
	--[[ Upvalues[4]:
		[1]: PlayerPermissionsModule_upvr (readonly)
		[2]: FFlagInExperienceUserProfileSettingsEnabled_upvr (readonly)
		[3]: dispatchIfPlayerExists_upvr (readonly)
		[4]: SetPlayerIsCreator_upvr (readonly)
	]]
	if game.CreatorType ~= Enum.CreatorType.Group then
	else
		local any_CanPlayerManagePlaceAsync_result1 = PlayerPermissionsModule_upvr.CanPlayerManagePlaceAsync(arg2)
		if any_CanPlayerManagePlaceAsync_result1 then
			if FFlagInExperienceUserProfileSettingsEnabled_upvr and PlayerPermissionsModule_upvr.IsPlayerInExperienceNameEnabledAsync(arg2) then
				any_CanPlayerManagePlaceAsync_result1 = true
			else
				any_CanPlayerManagePlaceAsync_result1 = false
			end
			if not any_CanPlayerManagePlaceAsync_result1 then
				any_CanPlayerManagePlaceAsync_result1 = dispatchIfPlayerExists_upvr
				any_CanPlayerManagePlaceAsync_result1(arg1, arg2, SetPlayerIsCreator_upvr(arg2, true))
			end
		end
	end
end
local TenFootInterface_upvr = require(RobloxGui.Modules.TenFootInterface)
local SetPlayerAvatarIcon_upvr = require(Parent.Actions.SetPlayerAvatarIcon)
local function getPlayerAvatarIcon_upvr(arg1, arg2) -- Line 87, Named "getPlayerAvatarIcon"
	--[[ Upvalues[3]:
		[1]: TenFootInterface_upvr (readonly)
		[2]: dispatchIfPlayerExists_upvr (readonly)
		[3]: SetPlayerAvatarIcon_upvr (readonly)
	]]
	if not TenFootInterface_upvr:IsEnabled() then
	else
		dispatchIfPlayerExists_upvr(arg1, arg2, SetPlayerAvatarIcon_upvr(arg2, "rbxthumb://type=Avatar&id="..arg2.UserId.."&w=100&h=100"))
	end
end
local BlockingUtility_upvr = require(CorePackages.Workspace.Packages.BlockingUtility)
local SetPlayerIsBlocked_upvr = require(Parent.Actions.SetPlayerIsBlocked)
local function getPlayerIsBlocked_upvr(arg1, arg2) -- Line 96, Named "getPlayerIsBlocked"
	--[[ Upvalues[3]:
		[1]: BlockingUtility_upvr (readonly)
		[2]: dispatchIfPlayerExists_upvr (readonly)
		[3]: SetPlayerIsBlocked_upvr (readonly)
	]]
	if BlockingUtility_upvr:IsPlayerBlockedByUserId(arg2.UserId) then
		dispatchIfPlayerExists_upvr(arg1, arg2, SetPlayerIsBlocked_upvr(arg2, true))
	end
end
local Players_upvr = game:GetService("Players")
local SetPlayerFriendStatus_upvr = require(Parent.Actions.SetPlayerFriendStatus)
local function getPlayerFriendStatus_upvr(arg1, arg2) -- Line 102, Named "getPlayerFriendStatus"
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: dispatchIfPlayerExists_upvr (readonly)
		[3]: SetPlayerFriendStatus_upvr (readonly)
	]]
	if arg2 ~= Players_upvr.LocalPlayer and arg2.Parent == Players_upvr and Players_upvr.LocalPlayer.Parent == Players_upvr then
		dispatchIfPlayerExists_upvr(arg1, arg2, SetPlayerFriendStatus_upvr(arg2, Players_upvr.LocalPlayer:GetFriendStatus(arg2)))
	end
end
return function(arg1) -- Line 112, Named "MakePlayerInfoRequests"
	--[[ Upvalues[5]:
		[1]: getGroupsPermissionsInfo_upvr (readonly)
		[2]: getGameCreator_upvr (readonly)
		[3]: getPlayerAvatarIcon_upvr (readonly)
		[4]: getPlayerIsBlocked_upvr (readonly)
		[5]: getPlayerFriendStatus_upvr (readonly)
	]]
	return function(arg1_2) -- Line 113
		--[[ Upvalues[6]:
			[1]: getGroupsPermissionsInfo_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: getGameCreator_upvr (copied, readonly)
			[4]: getPlayerAvatarIcon_upvr (copied, readonly)
			[5]: getPlayerIsBlocked_upvr (copied, readonly)
			[6]: getPlayerFriendStatus_upvr (copied, readonly)
		]]
		coroutine.wrap(getGroupsPermissionsInfo_upvr)(arg1_2, arg1)
		coroutine.wrap(getGameCreator_upvr)(arg1_2, arg1)
		coroutine.wrap(getPlayerAvatarIcon_upvr)(arg1_2, arg1)
		coroutine.wrap(getPlayerIsBlocked_upvr)(arg1_2, arg1)
		coroutine.wrap(getPlayerFriendStatus_upvr)(arg1_2, arg1)
	end
end