-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:20
-- Luau version 6, Types version 3
-- Time taken: 0.001256 seconds

local VoiceChat = script:FindFirstAncestor("VoiceChat")
local Parent = VoiceChat.Parent
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local module = {
	KeyMapper = "luaapp.recorduserseenmodalupsell";
}
local PostRecordUserSeenModal_upvr = require(VoiceChat.AgeVerificationOverlay.PostRecordUserSeenModal)
local Promise_upvr = require(Parent.Promise)
function module.Fetch(arg1) -- Line 13
	--[[ Upvalues[3]:
		[1]: PerformFetch_upvr (readonly)
		[2]: PostRecordUserSeenModal_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	return PerformFetch_upvr.Single("luaapp.recorduserseenmodalupsell", function(arg1_2) -- Line 14
		--[[ Upvalues[3]:
			[1]: PostRecordUserSeenModal_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Promise_upvr (copied, readonly)
		]]
		return PostRecordUserSeenModal_upvr(arg1):andThen(function(arg1_3) -- Line 15
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			if arg1_3.responseBody ~= nil and arg1_3.responseCode == 200 then
				return Promise_upvr.resolve()
			end
			return Promise_upvr.reject()
		end)
	end)
end
function module.GetFetchingStatus(arg1) -- Line 22
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.recorduserseenmodalupsell")
end
return module