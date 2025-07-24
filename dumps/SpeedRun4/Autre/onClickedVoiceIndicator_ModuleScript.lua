-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:54
-- Luau version 6, Types version 3
-- Time taken: 0.001188 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Players_upvr = game:GetService("Players")
local Constants_upvr = require(game:GetService("CorePackages").Workspace.Packages.VoiceChat).Constants
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local any_new_result1_upvr = require(RobloxGui.Modules.SelfView.Analytics).new()
return function(arg1, arg2, arg3) -- Line 11
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: default_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
	]]
	local LocalPlayer = Players_upvr.LocalPlayer
	if LocalPlayer then
		if arg1 == tostring(LocalPlayer.UserId) then
			if arg2 == Constants_upvr.VOICE_STATE.ERROR then
				default_upvr:RejoinPreviousChannel()
			else
				if arg2 == Constants_upvr.VOICE_STATE.CONNECTING then
					default_upvr:ShowVoiceChatLoadingMessage()
					return
				end
				any_new_result1_upvr:setLastCtx("bubbleChatToggle")
				default_upvr:ToggleMic(arg3)
			end
		end
		default_upvr:ToggleMutePlayer(tonumber(arg1), arg3)
	end
end