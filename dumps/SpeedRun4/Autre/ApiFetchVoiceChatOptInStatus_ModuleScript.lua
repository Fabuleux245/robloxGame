-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:30
-- Luau version 6, Types version 3
-- Time taken: 0.001707 seconds

local VoiceChat = script:FindFirstAncestor("VoiceChat")
local Parent = VoiceChat.Parent
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local module = {
	KeyMapper = "luaapp.voicechatoptinstatus";
}
local GetVoiceChatOptInStatus_upvr = require(VoiceChat.OptInStatus.GetVoiceChatOptInStatus)
local SetVoiceChatOptInStatus_upvr = require(VoiceChat.OptInStatus.SetVoiceChatOptInStatus)
local Promise_upvr = require(Parent.Promise)
local Logging_upvr = require(Parent.AppCommonLib).Logging
function module.Fetch(arg1) -- Line 16
	--[[ Upvalues[5]:
		[1]: PerformFetch_upvr (readonly)
		[2]: GetVoiceChatOptInStatus_upvr (readonly)
		[3]: SetVoiceChatOptInStatus_upvr (readonly)
		[4]: Promise_upvr (readonly)
		[5]: Logging_upvr (readonly)
	]]
	return PerformFetch_upvr.Single("luaapp.voicechatoptinstatus", function(arg1_2) -- Line 17
		--[[ Upvalues[5]:
			[1]: GetVoiceChatOptInStatus_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: SetVoiceChatOptInStatus_upvr (copied, readonly)
			[4]: Promise_upvr (copied, readonly)
			[5]: Logging_upvr (copied, readonly)
		]]
		return GetVoiceChatOptInStatus_upvr(arg1):andThen(function(arg1_3) -- Line 18
			--[[ Upvalues[4]:
				[1]: arg1_2 (readonly)
				[2]: SetVoiceChatOptInStatus_upvr (copied, readonly)
				[3]: Promise_upvr (copied, readonly)
				[4]: Logging_upvr (copied, readonly)
			]]
			local responseBody = arg1_3.responseBody
			if responseBody ~= nil and responseBody.isUserOptIn ~= nil then
				arg1_2:dispatch(SetVoiceChatOptInStatus_upvr(responseBody.isUserOptIn))
				return Promise_upvr.resolve(arg1_3)
			end
			Logging_upvr.warn("Response from GetVoiceChatOptInStatus is malformed!")
			return Promise_upvr.reject({
				HttpError = Enum.HttpError.OK;
			})
		end)
	end)
end
function module.GetFetchingStatus(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.voicechatoptinstatus")
end
return module