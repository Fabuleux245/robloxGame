-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:05
-- Luau version 6, Types version 3
-- Time taken: 0.005734 seconds

local CorePackages = game:GetService("CorePackages")
local ContactList = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local RoduxCall_upvr = dependencies.RoduxCall
local LocalPlayer = game:GetService("Players").LocalPlayer
local var7_upvr
local function INLINED() -- Internal function, doesn't exist in bytecode
	var7_upvr = LocalPlayer.UserId
	return var7_upvr
end
if not LocalPlayer or not INLINED() then
	var7_upvr = 0
end
local tbl_upvr = {
	callProtocol = require(CorePackages.Workspace.Packages.CallProtocol).CallProtocol.default;
}
local function formatDuration_upvr(arg1) -- Line 56, Named "formatDuration"
	local floored = math.floor(arg1 / 3600)
	local formatted_2 = string.format("%02d", math.floor(arg1 % 3600 / 60))
	local formatted = string.format("%02d", arg1 % 60)
	if 0 < floored then
		return string.format("%02d", floored)..':'..formatted_2..':'..formatted
	end
	return formatted_2..':'..formatted
end
local function _(arg1, arg2) -- Line 75, Named "getTextFromCallStatus"
	--[[ Upvalues[1]:
		[1]: RoduxCall_upvr (readonly)
	]]
	if arg1 == RoduxCall_upvr.Enums.Status.Connecting then
		return "Feature.Call.Label.Calling"
	end
	if arg1 == RoduxCall_upvr.Enums.Status.Teleporting then
		return "Feature.Call.Label.Teleporting"
	end
	if arg1 == RoduxCall_upvr.Enums.Status.Active then
		return "Feature.Call.Label.RobloxCall"
	end
	if arg1 == RoduxCall_upvr.Enums.Status.Idle then
		return "Feature.Call.Label.CallEnded"
	end
	error("Invalid status for call bar: "..arg1..'.')
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useAnalytics_upvr = require(ContactList.Analytics.useAnalytics)
local React_upvr = require(CorePackages.Packages.React)
local useSelector_upvr = dependencies.Hooks.useSelector
local getStandardSizeAvatarHeadShotRbxthumb_upvr = dependencies.getStandardSizeAvatarHeadShotRbxthumb
local useLocalization_upvr = dependencies.Hooks.useLocalization
local teleportToRootPlace_upvr = dependencies.teleportToRootPlace
local SoundManager_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local Sounds_upvr = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local EventNamesEnum_upvr = require(ContactList.Analytics.EventNamesEnum)
local Colors_upvr = UIBlox.App.Style.Colors
local RunService_upvr = game:GetService("RunService")
local UserProfiles_upvr = require(CorePackages.Workspace.Packages.UserProfiles)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
return function(arg1) -- Line 89, Named "CallBar"
	--[[ Upvalues[20]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useAnalytics_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: useSelector_upvr (readonly)
		[7]: var7_upvr (readonly)
		[8]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[9]: useLocalization_upvr (readonly)
		[10]: RoduxCall_upvr (readonly)
		[11]: teleportToRootPlace_upvr (readonly)
		[12]: SoundManager_upvr (readonly)
		[13]: Sounds_upvr (readonly)
		[14]: SoundGroups_upvr (readonly)
		[15]: EventNamesEnum_upvr (readonly)
		[16]: Colors_upvr (readonly)
		[17]: RunService_upvr (readonly)
		[18]: formatDuration_upvr (readonly)
		[19]: UserProfiles_upvr (readonly)
		[20]: ImageSetLabel_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 78 start (CF ANALYSIS FAILED)
	local _ = useStyle_upvr()
	local _, _ = React_upvr.useState("00:00")
	local function _(arg1_2) -- Line 98
		if arg1_2.Call.currentCall then
			return arg1_2.Call.currentCall.callId
		end
		return ""
	end
	local function _(arg1_3) -- Line 103
		if arg1_3.Call.currentCall then
			return arg1_3.Call.currentCall.callerId
		end
		return ""
	end
	local function _(arg1_4) -- Line 108
		if arg1_4.Call.currentCall then
			return arg1_4.Call.currentCall.calleeId
		end
		return ""
	end
	local var16_result1 = useSelector_upvr(React_upvr.useCallback(function(arg1_5) -- Line 113
		if arg1_5.Call.currentCall then
			return arg1_5.Call.currentCall.status
		end
		return ""
	end))
	local function _(arg1_6) -- Line 118
		if arg1_6.Call.currentCall ~= nil then
			return arg1_6.Call.currentCall.instanceId
		end
		return ""
	end
	if useSelector_upvr(React_upvr.useCallback(function(arg1_7) -- Line 123
		--[[ Upvalues[1]:
			[1]: var7_upvr (copied, readonly)
		]]
		local currentCall = arg1_7.Call.currentCall
		if currentCall then
			if var7_upvr == currentCall.callerId then
				return currentCall.calleeId
			end
			return currentCall.callerId
		end
		return nil
	end)) then
	end
	if var16_result1 == RoduxCall_upvr.Enums.Status.Connecting then
		-- KONSTANTWARNING: GOTO [130] #103
	end
	-- KONSTANTERROR: [0] 1. Error Block 78 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [89] 75. Error Block 75 start (CF ANALYSIS FAILED)
	if var16_result1 == RoduxCall_upvr.Enums.Status.Teleporting then
		-- KONSTANTWARNING: GOTO [130] #103
	end
	-- KONSTANTERROR: [89] 75. Error Block 75 end (CF ANALYSIS FAILED)
end