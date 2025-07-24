-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:54
-- Luau version 6, Types version 3
-- Time taken: 0.001728 seconds

local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local FFlagRemoveHardCodedFriendLimitPrompt_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Flags.FFlagRemoveHardCodedFriendLimitPrompt)
local var4
while not var4 do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	var4 = Players.LocalPlayer
end
local module = {}
module.__index = module
local var6_upvr = string.gsub(string.gsub(game:GetService("ContentProvider").BaseUrl:lower(), "http:", "https:"), "www", "friends").."v1/users/{userId}/friends/count"
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local HttpService_upvr = game:GetService("HttpService")
function module.GetFriendCountAsync(arg1, arg2) -- Line 25
	--[[ Upvalues[4]:
		[1]: FFlagRemoveHardCodedFriendLimitPrompt_upvr (readonly)
		[2]: var6_upvr (readonly)
		[3]: HttpRbxApiService_upvr (readonly)
		[4]: HttpService_upvr (readonly)
	]]
	assert(not FFlagRemoveHardCodedFriendLimitPrompt_upvr, "Should not call GetFriendCountAsync when FFlagRemoveHardCodedFriendLimitPrompt is enabled")
	local pcall_result1, pcall_result2 = pcall(function() -- Line 29
		--[[ Upvalues[3]:
			[1]: var6_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: HttpRbxApiService_upvr (copied, readonly)
		]]
		return HttpRbxApiService_upvr:GetAsyncFullUrl(string.gsub(var6_upvr, "{userId}", tostring(arg2)))
	end)
	local var12
	if not pcall_result1 then
		print(var6_upvr, "failed because", pcall_result2)
		return nil
	end
	local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(pcall_result2)
	if any_JSONDecode_result1.count then
		var12 = any_JSONDecode_result1.count
	end
	return var12
end
function module.MaxFriendCount(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: FFlagRemoveHardCodedFriendLimitPrompt_upvr (readonly)
	]]
	assert(not FFlagRemoveHardCodedFriendLimitPrompt_upvr, "Should not call MaxFriendCount when FFlagRemoveHardCodedFriendLimitPrompt is enabled")
	return 200
end
local BindableEvent_upvr_2 = Instance.new("BindableEvent")
local BindableEvent_upvr = Instance.new("BindableEvent")
var4.FriendStatusChanged:connect(function(arg1, arg2) -- Line 55
	--[[ Upvalues[2]:
		[1]: BindableEvent_upvr_2 (readonly)
		[2]: BindableEvent_upvr (readonly)
	]]
	if arg2 == Enum.FriendStatus.Friend then
		BindableEvent_upvr_2:Fire(arg1)
	elseif arg2 == Enum.FriendStatus.NotFriend then
		BindableEvent_upvr:Fire(arg1)
	end
end)
StarterGui:RegisterGetCore("PlayerFriendedEvent", function() -- Line 63
	--[[ Upvalues[1]:
		[1]: BindableEvent_upvr_2 (readonly)
	]]
	return BindableEvent_upvr_2
end)
StarterGui:RegisterGetCore("PlayerUnfriendedEvent", function() -- Line 64
	--[[ Upvalues[1]:
		[1]: BindableEvent_upvr (readonly)
	]]
	return BindableEvent_upvr
end)
return module