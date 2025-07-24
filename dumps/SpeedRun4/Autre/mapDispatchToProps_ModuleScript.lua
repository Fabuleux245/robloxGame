-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:37
-- Luau version 6, Types version 3
-- Time taken: 0.005205 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local ExpChatShared = require(Parent.ExpChatShared)
local Players_upvr = game:GetService("Players")
local autoCastCommand_upvr = ExpChatShared.Commands.autoCastCommand
local RBXWhisperCommand_upvr = ExpChatShared.Commands.Whisper.RBXWhisperCommand
local Promise_upvr = require(Parent.Promise)
local Logger_upvr = require(script.Parent.Logger)
local ChatTranslationGlobalToggled_upvr = require(ExpChat.Actions.ChatTranslationGlobalToggled)
local Analytics_upvr = ExpChatShared.Analytics
local ChatTranslationMessageToggled_upvr = require(ExpChat.Actions.ChatTranslationMessageToggled)
local ChatInputBarResetTargetChannel_upvr = ExpChatShared.Actions.ChatInputBarResetTargetChannel
local GetFFlagUnreduxChatTransparency_upvr = require(Parent.SharedFlags).GetFFlagUnreduxChatTransparency
local GetTransparencyStore_upvr = require(ExpChat.Stores.GetTransparencyStore)
local UserInteraction_upvr = require(ExpChat.Actions.UserInteraction)
local TextChatService_upvr = game:GetService("TextChatService")
local List_upvr = require(Parent.llama).List
local Config_upvr = require(ExpChat.Config)
return function(arg1) -- Line 26
	--[[ Upvalues[15]:
		[1]: Players_upvr (readonly)
		[2]: autoCastCommand_upvr (readonly)
		[3]: RBXWhisperCommand_upvr (readonly)
		[4]: Promise_upvr (readonly)
		[5]: Logger_upvr (readonly)
		[6]: ChatTranslationGlobalToggled_upvr (readonly)
		[7]: Analytics_upvr (readonly)
		[8]: ChatTranslationMessageToggled_upvr (readonly)
		[9]: ChatInputBarResetTargetChannel_upvr (readonly)
		[10]: GetFFlagUnreduxChatTransparency_upvr (readonly)
		[11]: GetTransparencyStore_upvr (readonly)
		[12]: UserInteraction_upvr (readonly)
		[13]: TextChatService_upvr (readonly)
		[14]: List_upvr (readonly)
		[15]: Config_upvr (readonly)
	]]
	return {
		activateWhisperMode = function(arg1_2) -- Line 28, Named "activateWhisperMode"
			--[[ Upvalues[5]:
				[1]: Players_upvr (copied, readonly)
				[2]: autoCastCommand_upvr (copied, readonly)
				[3]: RBXWhisperCommand_upvr (copied, readonly)
				[4]: Promise_upvr (copied, readonly)
				[5]: Logger_upvr (copied, readonly)
			]]
			local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg1_2)
			local LocalPlayer = Players_upvr.LocalPlayer
			if not any_GetPlayerByUserId_result1 then
			else
				if any_GetPlayerByUserId_result1 == LocalPlayer then return end
				assert(LocalPlayer, "Players.LocalPlayer should be non-nil")
				Promise_upvr.any({autoCastCommand_upvr(RBXWhisperCommand_upvr, LocalPlayer.UserId, "/w @"..any_GetPlayerByUserId_result1.Name)}):catch(function(arg1_3) -- Line 44
					--[[ Upvalues[1]:
						[1]: Logger_upvr (copied, readonly)
					]]
					Logger_upvr:debug("Could not send autoCastCommand. Error: {}", arg1_3)
				end)
			end
		end;
		onToggleTranslation = function(arg1_4) -- Line 49, Named "onToggleTranslation"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ChatTranslationGlobalToggled_upvr (copied, readonly)
			]]
			arg1(ChatTranslationGlobalToggled_upvr(arg1_4))
		end;
		onToggleIndividualTranslation = function(arg1_5, arg2) -- Line 53, Named "onToggleIndividualTranslation"
			--[[ Upvalues[4]:
				[1]: Players_upvr (copied, readonly)
				[2]: Analytics_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: ChatTranslationMessageToggled_upvr (copied, readonly)
			]]
			local tbl_2 = {}
			tbl_2.useTranslation = arg1_5
			local var26
			if Players_upvr.LocalPlayer then
				var26 = Players_upvr.LocalPlayer.UserId
			else
				var26 = nil
			end
			tbl_2.senderUserId = var26
			if Players_upvr.LocalPlayer then
				var26 = Players_upvr.LocalPlayer.LocaleId
			else
				var26 = nil
			end
			tbl_2.localeId = var26
			var26 = Analytics_upvr.FireClientAnalyticsWithEventName
			var26("MessageTranslationToggled", tbl_2)
			var26 = arg1
			var26(ChatTranslationMessageToggled_upvr(arg1_5, arg2))
		end;
		resetTargetChannel = function() -- Line 65, Named "resetTargetChannel"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ChatInputBarResetTargetChannel_upvr (copied, readonly)
			]]
			arg1(ChatInputBarResetTargetChannel_upvr())
		end;
		onHovered = function() -- Line 69, Named "onHovered"
			--[[ Upvalues[4]:
				[1]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
				[2]: GetTransparencyStore_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: UserInteraction_upvr (copied, readonly)
			]]
			if GetFFlagUnreduxChatTransparency_upvr() then
				GetTransparencyStore_upvr(false).resetAllTransparency()
			else
				arg1(UserInteraction_upvr("hover"))
			end
		end;
		onUnhovered = function() -- Line 77, Named "onUnhovered"
			--[[ Upvalues[4]:
				[1]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
				[2]: GetTransparencyStore_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: UserInteraction_upvr (copied, readonly)
			]]
			if GetFFlagUnreduxChatTransparency_upvr() then
				GetTransparencyStore_upvr(false).resetAllTransparency()
			else
				arg1(UserInteraction_upvr("unhover"))
			end
		end;
		onSendChat = function(arg1_6) -- Line 85, Named "onSendChat"
			--[[ Upvalues[7]:
				[1]: TextChatService_upvr (copied, readonly)
				[2]: Logger_upvr (copied, readonly)
				[3]: Promise_upvr (copied, readonly)
				[4]: List_upvr (copied, readonly)
				[5]: Players_upvr (copied, readonly)
				[6]: Config_upvr (copied, readonly)
				[7]: Analytics_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local class_ChatInputBarConfiguration = TextChatService_upvr:FindFirstChildOfClass("ChatInputBarConfiguration")
			local var28_upvw
			if class_ChatInputBarConfiguration then
				var28_upvw = class_ChatInputBarConfiguration.TargetTextChannel
			end
			if var28_upvw then
			else
			end
			Logger_upvr:debug("onSendChat: {} to {}", arg1_6, "nil")
			if var28_upvw then
				Promise_upvr.try(function() -- Line 94
					--[[ Upvalues[6]:
						[1]: var28_upvw (read and write)
						[2]: arg1_6 (readonly)
						[3]: List_upvr (copied, readonly)
						[4]: Players_upvr (copied, readonly)
						[5]: Config_upvr (copied, readonly)
						[6]: Analytics_upvr (copied, readonly)
					]]
					var28_upvw:SendAsync(arg1_6)
					local function var30(arg1_7) -- Line 97
						return arg1_7:IsA("TextSource")
					end
					local tbl = {}
					var30 = var28_upvw.Name
					local var32 = var30
					tbl.channelName = var32
					if Players_upvr.LocalPlayer then
						var32 = Players_upvr.LocalPlayer.UserId
					else
						var32 = nil
					end
					tbl.senderUserId = var32
					tbl.numParticipants = List_upvr.count(var28_upvw:GetChildren(), var30)
					if Config_upvr[var28_upvw.Name] then
						var32 = "true"
					else
						var32 = "false"
					end
					tbl.isDefaultChannel = var32
					var32 = Analytics_upvr.FireClientAnalyticsWithEventName
					var32("LuaMessageSent", tbl)
				end):catch(function(arg1_8) -- Line 109
					warn(arg1_8.error)
				end)
			else
				Logger_upvr:warning("TargetTextChannel was nil!")
			end
		end;
	}
end