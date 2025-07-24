-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:20
-- Luau version 6, Types version 3
-- Time taken: 0.001772 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local ContactList = RobloxGui_upvr.Modules.ContactList
local useAnalytics_upvr = require(ContactList.Analytics.useAnalytics)
local React_upvr = require(CorePackages.Packages.React)
local SoundManager_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local Sounds_upvr = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local var10_upvw
local FaceAnimatorService_upvr = game:GetService("FaceAnimatorService")
local EventNamesEnum_upvr = require(ContactList.Analytics.EventNamesEnum)
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
local dependencyArray_upvr = require(ContactList.dependencies).Hooks.dependencyArray
return function(arg1, arg2, arg3, arg4, arg5) -- Line 24
	--[[ Upvalues[11]:
		[1]: useAnalytics_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: SoundManager_upvr (readonly)
		[4]: Sounds_upvr (readonly)
		[5]: SoundGroups_upvr (readonly)
		[6]: var10_upvw (read and write)
		[7]: RobloxGui_upvr (readonly)
		[8]: FaceAnimatorService_upvr (readonly)
		[9]: EventNamesEnum_upvr (readonly)
		[10]: RobloxReplicatedStorage_upvr (readonly)
		[11]: dependencyArray_upvr (readonly)
	]]
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	return React_upvr.useCallback(function() -- Line 33
		--[[ Upvalues[14]:
			[1]: SoundManager_upvr (copied, readonly)
			[2]: Sounds_upvr (copied, readonly)
			[3]: SoundGroups_upvr (copied, readonly)
			[4]: var10_upvw (copied, read and write)
			[5]: RobloxGui_upvr (copied, readonly)
			[6]: FaceAnimatorService_upvr (copied, readonly)
			[7]: useAnalytics_upvr_result1_upvr (readonly)
			[8]: EventNamesEnum_upvr (copied, readonly)
			[9]: arg2 (readonly)
			[10]: arg5 (readonly)
			[11]: RobloxReplicatedStorage_upvr (copied, readonly)
			[12]: arg1 (readonly)
			[13]: arg3 (readonly)
			[14]: arg4 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		SoundManager_upvr:PlaySound(Sounds_upvr.Select.Name, {
			Volume = 0.5;
		}, SoundGroups_upvr.Iris)
		local var18_upvr
		if var18_upvr == nil then
			var18_upvr = require(RobloxGui_upvr.Modules.VoiceChat.VoiceChatServiceManager).default
			var10_upvw = var18_upvr
		end
		if var10_upvw.localMuted ~= nil then
			var18_upvr = var10_upvw.localMuted
		else
			var18_upvr = true
		end
		if FaceAnimatorService_upvr:IsStarted() then
		else
		end
		useAnalytics_upvr_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookCallFriendClicked, {
			eventTimestampMs = os.time() * 1000;
			friendUserId = tonumber(arg2);
			searchQueryString = arg5.searchQueryString;
			itemListIndex = arg5.itemListIndex;
			isSuggestedUser = arg5.isSuggestedUser;
			page = tostring(arg5.page);
		})
		local var21_upvr = false
		coroutine.wrap(function() -- Line 52
			--[[ Upvalues[6]:
				[1]: RobloxReplicatedStorage_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: arg3 (copied, readonly)
				[5]: var18_upvr (readonly)
				[6]: var21_upvr (readonly)
			]]
			RobloxReplicatedStorage_upvr:WaitForChild("ContactListInvokeIrisInvite", math.huge):FireServer(arg1, tonumber(arg2), arg3, var18_upvr, var21_upvr)
		end)()
		arg4()
	end, dependencyArray_upvr(arg1, arg2, arg3, arg4, arg5))
end