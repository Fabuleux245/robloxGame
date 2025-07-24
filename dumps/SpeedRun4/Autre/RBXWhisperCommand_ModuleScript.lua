-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:08
-- Luau version 6, Types version 3
-- Time taken: 0.006254 seconds

local ExpChatShared = script:FindFirstAncestor("ExpChatShared")
local Commands = script:FindFirstAncestor("Commands")
local module = {
	name = script.Name;
	alias = {"/whisper", "/w"};
}
local getNameFromWhisper_upvr = require(Commands.Whisper.getNameFromWhisper)
local Dictionary_upvr = require(ExpChatShared.Parent.llama).Dictionary
local getAutocompletePlayersFromString_upvr = require(Commands.getAutocompletePlayersFromString)
local any_new_result1_upvr = require(ExpChatShared.Logger):new("ExpChat/Command/Whisper")
local TextChatService_upvr = game:GetService("TextChatService")
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
local getFFlagExpChatWhisperModeRaceFix_upvr = require(ExpChatShared.Flags.getFFlagExpChatWhisperModeRaceFix)
local ChatInputBarActivatedWhisperMode_upvr = require(ExpChatShared.Actions.ChatInputBarActivatedWhisperMode)
function module.clientRun(arg1, arg2, arg3) -- Line 23
	--[[ Upvalues[8]:
		[1]: getNameFromWhisper_upvr (readonly)
		[2]: Dictionary_upvr (readonly)
		[3]: getAutocompletePlayersFromString_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
		[5]: TextChatService_upvr (readonly)
		[6]: RobloxReplicatedStorage_upvr (readonly)
		[7]: getFFlagExpChatWhisperModeRaceFix_upvr (readonly)
		[8]: ChatInputBarActivatedWhisperMode_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 58 start (CF ANALYSIS FAILED)
	local getNameFromWhisper_upvr_result1 = getNameFromWhisper_upvr(arg3, arg1:getState().AutoCastCommands[script.Name])
	if getNameFromWhisper_upvr_result1 then
		local Players = arg1:getState().Players
		local var7_result1 = getAutocompletePlayersFromString_upvr(Dictionary_upvr.join(Players, {
			byUserId = Dictionary_upvr.removeKey(Players.byUserId, tostring(arg2));
		}), getNameFromWhisper_upvr_result1)
		if #var7_result1 == 0 then
			any_new_result1_upvr:debug("Autocomplete: No matches!")
			local var17 = Players.byUserId[tostring(arg2)]
			if var17 and (getNameFromWhisper_upvr_result1 == var17.displayName or getNameFromWhisper_upvr_result1 == '@'..var17.username) then
				return {
					key = "GameChat_PrivateMessaging_CannotWhisperToSelf";
					args = nil;
					metadata = "Roblox.Whisper.Error.CannotWhisperToSelf";
				}
			end
			return {
				key = "CoreScripts.TextChat.Mute.Error.TargetDoesNotExist";
				args = {
					RBX_NAME = getNameFromWhisper_upvr_result1 or "";
				};
				metadata = "Roblox.Whisper.Error.TargetDoesNotExist";
			}
		end
		if #var7_result1 == 1 then
			local _1 = var7_result1[1]
			local tonumber_result1 = tonumber(_1.userId)
			local var23
			if tonumber_result1 then
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var23 = arg2
					return var23
				end
				if arg2 >= tonumber_result1 or not INLINED() then
					var23 = tonumber_result1
				end
				if tonumber_result1 >= arg2 or not arg2 then
				end
				local formatted = string.format("RBXWhisper:%d_%d", var23, tonumber_result1)
				if not TextChatService_upvr:FindFirstChild(formatted, true) then
					var23 = RobloxReplicatedStorage_upvr:FindFirstChild("ExperienceChat")
					if var23 then
						local WhisperChat = var23:FindFirstChild("WhisperChat")
						if WhisperChat and WhisperChat:IsA("RemoteFunction") then
							if not WhisperChat:InvokeServer(_1.userId) then
								any_new_result1_upvr:error("Could not create whisper channel for some reason.")
								do
									return {
										key = "CoreScripts.TextChat.Whisper.Error.CannotChat";
										args = nil;
										metadata = "Roblox.Whisper.Error.Unknown";
									}
								end
								-- KONSTANTWARNING: GOTO [194] #147
							end
						else
							any_new_result1_upvr:error("Could not create whisper channel because WhisperChat RemoteFunction is missing.")
							return {
								key = "";
								metadata = "Roblox.Whisper.Error.Unknown";
							}
						end
					else
						any_new_result1_upvr:error("Could not create whisper channel because RobloxReplicatedStorage.ExperienceChat is missing.")
						return {
							key = "";
							metadata = "Roblox.Whisper.Error.Unknown";
						}
					end
				end
				var23 = getFFlagExpChatWhisperModeRaceFix_upvr()
				if var23 then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var23 = arg1:dispatch
					var23(ChatInputBarActivatedWhisperMode_upvr(nil, WhisperChat:InvokeServer(_1.userId)))
				else
					var23 = arg1:dispatch
					var23(ChatInputBarActivatedWhisperMode_upvr(formatted, nil))
				end
				var23 = {}
				var23.key = "CoreScripts.TextChat.Notification.WhisperChat.Created"
				var23.args = {
					RBX_NAME = getNameFromWhisper_upvr_result1;
				}
				var23.metadata = "Roblox.Whisper.Info.Success"
				do
					return var23
				end
				-- KONSTANTWARNING: GOTO [239] #183
			end
		else
			any_new_result1_upvr:debug("Autocomplete: Too many matches!")
			return {
				key = "CoreScripts.TextChat.Whisper.Error.CannotChat";
				metadata = "Roblox.Whisper.Error.TooManyMatches";
			}
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 58 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [239] 183. Error Block 35 start (CF ANALYSIS FAILED)
	do
		return {
			key = "";
			metadata = "Roblox.Whisper.Error.Unknown";
		}
	end
	-- KONSTANTERROR: [239] 183. Error Block 35 end (CF ANALYSIS FAILED)
end
return module