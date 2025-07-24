-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:57
-- Luau version 6, Types version 3
-- Time taken: 0.001268 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local default_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local function _(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: default_upvr (readonly)
	]]
	local UserId = arg1.UserId
	if default_upvr:getRecentUsersInteractionData()[tostring(UserId)] == nil then
		UserId = false
	else
		UserId = true
	end
	return UserId
end
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local TnSIXPWrapper_upvr = require(AbuseReportMenu.IXP.TnSIXPWrapper)
function handlePreselectedPlayer(arg1, arg2, arg3, arg4) -- Line 15
	--[[ Upvalues[3]:
		[1]: default_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: TnSIXPWrapper_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 15 start (CF ANALYSIS FAILED)
	if default_upvr:getRecentUsersInteractionData()[tostring(arg1.UserId)] == nil then
	else
	end
	if true then
		arg3({
			type = Constants_upvr.PlayerMenuActions.UpdateMethodOfAbuse;
			methodOfAbuse = Constants_upvr.AbuseMethods.VoiceChat;
		})
		arg4({
			type = Constants_upvr.AnalyticsActions.SetTypeOfAbuseSelection;
			selection = Constants_upvr.AbuseMethods.VoiceChat;
		})
	else
		-- KONSTANTERROR: [52] 37. Error Block 12 start (CF ANALYSIS FAILED)
		if TnSIXPWrapper_upvr.getReportAnythingAvatarEnabled() then
			arg3({
				type = Constants_upvr.PlayerMenuActions.UpdateMethodOfAbuse;
				methodOfAbuse = Constants_upvr.AbuseMethods.TextChat;
			})
			arg4({
				type = Constants_upvr.AnalyticsActions.SetTypeOfAbuseSelection;
				selection = Constants_upvr.AbuseMethods.TextChat;
			})
		end
		-- KONSTANTERROR: [52] 37. Error Block 12 end (CF ANALYSIS FAILED)
	end
	local tbl = {
		type = Constants_upvr.PlayerMenuActions.SetPreselectedPlayer;
	}
	tbl.player = arg1
	arg3(tbl)
	-- KONSTANTERROR: [1] 2. Error Block 15 end (CF ANALYSIS FAILED)
end
return handlePreselectedPlayer