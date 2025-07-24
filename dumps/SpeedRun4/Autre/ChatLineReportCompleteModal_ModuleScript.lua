-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:16
-- Luau version 6, Types version 3
-- Time taken: 0.006965 seconds

local ChatLineReporting = script:FindFirstAncestor("ChatLineReporting")
local Parent = ChatLineReporting.Parent
local ExpChatShared_upvr = require(Parent.ExpChatShared)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local getPlayer_upvr = require(ChatLineReporting.Common.getPlayer)
local getDisplayNameFromUserId_upvr = require(ChatLineReporting.Common.getDisplayNameFromUserId)
local ButtonType_upvr = require(Parent.UIBlox).App.Button.Enum.ButtonType
local React_upvr = require(Parent.React)
local ReportCompleteDialog_upvr = require(Parent.GenericAbuseReporting).Components.ReportCompleteDialog
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local mutePlayer_upvr = require(ChatLineReporting.Common.mutePlayer)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ChatLineReportMuteSendSystemMessage", false)
local Constants_upvr = require(ChatLineReporting.Common.Constants)
local sendSystemMessage_upvr = require(ChatLineReporting.Common.sendSystemMessage)
return function(arg1) -- Line 41, Named "ChatLineReportCompleteModal"
	--[[ Upvalues[12]:
		[1]: ExpChatShared_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: getPlayer_upvr (readonly)
		[4]: getDisplayNameFromUserId_upvr (readonly)
		[5]: ButtonType_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: ReportCompleteDialog_upvr (readonly)
		[8]: LocalPlayer_upvr (readonly)
		[9]: mutePlayer_upvr (readonly)
		[10]: game_DefineFastFlag_result1_upvr (readonly)
		[11]: Constants_upvr (readonly)
		[12]: sendSystemMessage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local context_2 = ExpChatShared_upvr.context
	local var32_upvw
	local var33
	if context_2.store then
		var32_upvw = getPlayer_upvr(context_2.store:getState().Players.byUserId, arg1.selectedMessage.userId)
		if var32_upvw == nil then
			var32_upvw = {
				displayName = getDisplayNameFromUserId_upvr(arg1.selectedMessage.userId);
				userId = arg1.selectedMessage.userId;
				username = "";
			}
		end
	end
	local tbl_4 = {}
	local tbl_11 = {"Feature.ReportAbuse.Action.TextMute"}
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var33 = var32_upvw.displayName
		return var33
	end
	if not var32_upvw or not INLINED_3() then
		var33 = ""
	end
	tbl_11.name = var33
	tbl_4.completeMute = tbl_11
	local tbl_6 = {"Feature.ReportAbuse.Message.UserTextMutedSystem"}
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var33 = var32_upvw.displayName
		return var33
	end
	if not var32_upvw or not INLINED_4() then
		var33 = ""
	end
	tbl_6.name = var33
	tbl_4.systemMuteMessage = tbl_6
	local var4_result1_upvr = useLocalization_upvr(tbl_4)
	local tbl_10 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl_8 = {}
	local function onActivated() -- Line 68
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.onDismiss(nil, "")
	end
	tbl_8.onActivated = onActivated
	tbl_8.text = useLocalization_upvr(arg1.localizationKeys).completeClose
	tbl_10.props = tbl_8
	var33 = {}
	local tbl_7 = {
		forceFillDirection = Enum.FillDirection.Vertical;
	}
	if LocalPlayer_upvr then
		local tbl_3 = {{
			buttonType = ButtonType_upvr.Secondary;
			props = {
				onActivated = function() -- Line 83, Named "onActivated"
					--[[ Upvalues[8]:
						[1]: mutePlayer_upvr (copied, readonly)
						[2]: var32_upvw (read and write)
						[3]: LocalPlayer_upvr (copied, readonly)
						[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
						[5]: Constants_upvr (copied, readonly)
						[6]: sendSystemMessage_upvr (copied, readonly)
						[7]: var4_result1_upvr (readonly)
						[8]: arg1 (readonly)
					]]
					local var11_result1 = mutePlayer_upvr(var32_upvw, LocalPlayer_upvr)
					if game_DefineFastFlag_result1_upvr and var11_result1 and var11_result1.key == Constants_upvr.SuccessfulMuteKey then
						sendSystemMessage_upvr(var4_result1_upvr.systemMuteMessage)
					end
					arg1.onDismiss(var11_result1)
				end;
				text = var4_result1_upvr.completeMute;
			};
		}, tbl_10}
	else
		({})[1] = tbl_10
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_7.buttons = {}
	var33.buttonStackInfo = tbl_7
	var33.localizationKeys = arg1.localizationKeys
	function var33.onDismiss() -- Line 102
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.onDismiss(nil, "")
	end
	return React_upvr.createElement(ReportCompleteDialog_upvr, var33)
end