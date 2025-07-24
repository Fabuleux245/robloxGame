-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:56
-- Luau version 6, Types version 3
-- Time taken: 0.008956 seconds

local ClientChatModules = game:GetService("Chat"):WaitForChild("ClientChatModules")
local module_upvr = require(ClientChatModules:WaitForChild("ChatSettings"))
local var3_upvw
pcall(function() -- Line 13
	--[[ Upvalues[1]:
		[1]: var3_upvw (read and write)
	]]
	var3_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
if var3_upvw == nil then
	var3_upvw = {}
end
if not var3_upvw.FormatMessageToSend or not var3_upvw.LocalizeFormattedMessage then
	local function FormatMessageToSend(arg1, arg2, arg3) -- Line 16
		return arg3
	end
	var3_upvw.FormatMessageToSend = FormatMessageToSend
end
FormatMessageToSend = module_upvr.ErrorMessageTextColor
local var5 = FormatMessageToSend
if not var5 then
	var5 = Color3.fromRGB(245, 50, 50)
end
local tbl_upvr = {
	ChatColor = var5;
}
local module_upvr_2 = require(ClientChatModules:WaitForChild("ChatConstants"))
return function(arg1) -- Line 22, Named "Run"
	--[[ Upvalues[4]:
		[1]: var3_upvw (read and write)
		[2]: module_upvr_2 (readonly)
		[3]: tbl_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	local Players = game:GetService("Players")
	local any_AddChannel_result1_upvr = arg1:AddChannel("Team")
	any_AddChannel_result1_upvr.WelcomeMessage = var3_upvw:FormatMessageToSend("GameChat_TeamChat_WelcomeMessage", "This is a private channel between you and your team members.")
	any_AddChannel_result1_upvr.Joinable = false
	any_AddChannel_result1_upvr.Leavable = false
	any_AddChannel_result1_upvr.AutoJoin = false
	any_AddChannel_result1_upvr.Private = true
	any_AddChannel_result1_upvr:RegisterProcessCommandsFunction("replication_function", function(arg1_2, arg2, arg3) -- Line 33, Named "TeamChatReplicationFunction"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_GetSpeaker_result1_8 = arg1:GetSpeaker(arg1_2)
		local any_GetChannel_result1_3 = arg1:GetChannel(arg3)
		if any_GetSpeaker_result1_8 and any_GetChannel_result1_3 then
			local any_GetPlayer_result1_6 = any_GetSpeaker_result1_8:GetPlayer()
			if any_GetPlayer_result1_6 then
				for _, v in pairs(any_GetChannel_result1_3:GetSpeakerList()) do
					local any_GetSpeaker_result1 = arg1:GetSpeaker(v)
					if any_GetSpeaker_result1 then
						local any_GetPlayer_result1_8 = any_GetSpeaker_result1:GetPlayer()
						if any_GetPlayer_result1_8 and any_GetPlayer_result1_6.Team == any_GetPlayer_result1_8.Team then
							any_GetSpeaker_result1:SendMessage(arg2, arg3, arg1_2, {
								NameColor = any_GetPlayer_result1_6.TeamColor.Color;
								ChatColor = any_GetPlayer_result1_6.TeamColor.Color;
								ChannelColor = any_GetPlayer_result1_6.TeamColor.Color;
							})
						end
					end
				end
			end
		end
		return true
	end, module_upvr_2.LowPriority)
	local function DoTeamCommand_upvr(arg1_3, arg2, arg3) -- Line 70, Named "DoTeamCommand"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var3_upvw (copied, read and write)
			[3]: tbl_upvr (copied, readonly)
		]]
		if arg2 == nil then
			local const_string = ""
		end
		local any_GetSpeaker_result1_6 = arg1:GetSpeaker(arg1_3)
		if any_GetSpeaker_result1_6 then
			local any_GetPlayer_result1_5 = any_GetSpeaker_result1_6:GetPlayer()
			if any_GetPlayer_result1_5 then
				if any_GetPlayer_result1_5.Team == nil then
					any_GetSpeaker_result1_6:SendSystemMessage(var3_upvw:FormatMessageToSend("GameChat_TeamChat_CannotTeamChatIfNotInTeam", "You cannot team chat if you are not on a team!"), arg3, tbl_upvr)
					return
				end
				local any_GetChannel_result1_4 = arg1:GetChannel("Team")
				if any_GetChannel_result1_4 then
					if not any_GetSpeaker_result1_6:IsInChannel(any_GetChannel_result1_4.Name) then
						any_GetSpeaker_result1_6:JoinChannel(any_GetChannel_result1_4.Name)
					end
					if const_string and 0 < string.len(const_string) then
						any_GetSpeaker_result1_6:SayMessage(const_string, any_GetChannel_result1_4.Name)
					end
					any_GetSpeaker_result1_6:SetMainChannel(any_GetChannel_result1_4.Name)
				end
			end
		end
	end
	arg1:RegisterProcessCommandsFunction("team_commands", function(arg1_4, arg2, arg3) -- Line 99, Named "TeamCommandsFunction"
		--[[ Upvalues[1]:
			[1]: DoTeamCommand_upvr (readonly)
		]]
		local var40
		if arg2 == nil then
			error("Message is nil")
		end
		if arg3 == "Team" then
			return false
		end
		if string.sub(arg2, 1, 6):lower() == "/team " or arg2:lower() == "/team" then
			DoTeamCommand_upvr(arg1_4, string.sub(arg2, 7), arg3)
			var40 = true
			return var40
		end
		if string.sub(arg2, 1, 3):lower() == "/t " or arg2:lower() == "/t" then
			DoTeamCommand_upvr(arg1_4, string.sub(arg2, 4), arg3)
			var40 = true
			return var40
		end
		if string.sub(arg2, 1, 2):lower() == "% " or arg2:lower() == '%' then
			DoTeamCommand_upvr(arg1_4, string.sub(arg2, 3), arg3)
			var40 = true
		end
		return var40
	end, module_upvr_2.StandardPriority)
	local function GetDefaultChannelNameColor_upvr() -- Line 126, Named "GetDefaultChannelNameColor"
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		if module_upvr.DefaultChannelNameColor then
			return module_upvr.DefaultChannelNameColor
		end
		return Color3.fromRGB(35, 76, 142)
	end
	local function PutSpeakerInCorrectTeamChatState_upvr(arg1_5, arg2) -- Line 133, Named "PutSpeakerInCorrectTeamChatState"
		--[[ Upvalues[2]:
			[1]: any_AddChannel_result1_upvr (readonly)
			[2]: GetDefaultChannelNameColor_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 5. Error Block 12 start (CF ANALYSIS FAILED)
		arg1_5:UpdateChannelNameColor(any_AddChannel_result1_upvr.Name, GetDefaultChannelNameColor_upvr())
		-- KONSTANTERROR: [7] 5. Error Block 12 end (CF ANALYSIS FAILED)
	end
	arg1.SpeakerAdded:connect(function(arg1_6) -- Line 149
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: PutSpeakerInCorrectTeamChatState_upvr (readonly)
		]]
		local any_GetSpeaker_result1_5 = arg1:GetSpeaker(arg1_6)
		if any_GetSpeaker_result1_5 then
			local any_GetPlayer_result1 = any_GetSpeaker_result1_5:GetPlayer()
			if any_GetPlayer_result1 then
				PutSpeakerInCorrectTeamChatState_upvr(any_GetSpeaker_result1_5, any_GetPlayer_result1)
			end
		end
	end)
	local tbl_2_upvr = {}
	Players.PlayerAdded:connect(function(arg1_7) -- Line 160
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: PutSpeakerInCorrectTeamChatState_upvr (readonly)
			[3]: any_AddChannel_result1_upvr (readonly)
			[4]: var3_upvw (copied, read and write)
			[5]: tbl_2_upvr (readonly)
		]]
		tbl_2_upvr[arg1_7] = arg1_7.Changed:connect(function(arg1_8) -- Line 161
			--[[ Upvalues[5]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_7 (readonly)
				[3]: PutSpeakerInCorrectTeamChatState_upvr (copied, readonly)
				[4]: any_AddChannel_result1_upvr (copied, readonly)
				[5]: var3_upvw (copied, read and write)
			]]
			local any_GetSpeaker_result1_3 = arg1:GetSpeaker(arg1_7.Name)
			if any_GetSpeaker_result1_3 then
				if arg1_8 == "Neutral" then
					PutSpeakerInCorrectTeamChatState_upvr(any_GetSpeaker_result1_3, arg1_7)
					return
				end
				if arg1_8 == "Team" then
					PutSpeakerInCorrectTeamChatState_upvr(any_GetSpeaker_result1_3, arg1_7)
					if any_GetSpeaker_result1_3:IsInChannel(any_AddChannel_result1_upvr.Name) then
						any_GetSpeaker_result1_3:SendSystemMessage(var3_upvw:FormatMessageToSend("GameChat_TeamChat_NowInTeam", string.format("You are now on the '%s' team.", arg1_7.Team.Name), "RBX_NAME", arg1_7.Team.Name), any_AddChannel_result1_upvr.Name)
					end
				end
			end
		end)
	end)
	Players.PlayerRemoving:connect(function(arg1_9) -- Line 182
		--[[ Upvalues[1]:
			[1]: tbl_2_upvr (readonly)
		]]
		local var52 = tbl_2_upvr[arg1_9]
		if var52 then
			var52:Disconnect()
		end
		tbl_2_upvr[arg1_9] = nil
	end)
end