-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:23
-- Luau version 6, Types version 3
-- Time taken: 0.009253 seconds

local ExpChatShared = script:FindFirstAncestor("ExpChatShared")
local Parent = ExpChatShared.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local None_upvr = require(Parent.llama).None
local any_new_result1_upvr = require(ExpChatShared.Logger):new("ExpChat/Reducers/"..script.Name)
local Actions = ExpChatShared.Actions
local getFFlagExpChatEnableChannelTabsUIFix_upvr = require(ExpChatShared.Flags.getFFlagExpChatEnableChannelTabsUIFix)
local getFFlagExpChatTargetTextChannelNeverNone_upvr = require(ExpChatShared.Flags.getFFlagExpChatTargetTextChannelNeverNone)
local function _(arg1, arg2) -- Line 38, Named "getTeamTextChannelFromTeam"
	for i, v in pairs(arg1) do
		if i == "RBXTeam"..arg2.TeamColor.Name then
			return v
		end
	end
	return nil
end
local function _(arg1, arg2) -- Line 49, Named "getTextChannelFromName"
	for i_2, v_2 in pairs(arg1) do
		if i_2 == arg2 then
			return v_2
		end
	end
	return nil
end
local module_4 = {
	[require(Actions.ClientAppLoaded).name] = function(arg1, arg2) -- Line 60
		--[[ Upvalues[2]:
			[1]: Dictionary_upvr (readonly)
			[2]: None_upvr (readonly)
		]]
		local module = {}
		local var23
		if arg2.team == nil then
			var23 = None_upvr
		else
			var23 = arg2.team
		end
		module.currentTeam = var23
		return Dictionary_upvr.join(arg1, module)
	end;
	[require(Actions.TextChannelCreated).name] = function(arg1, arg2) -- Line 66
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr (readonly)
			[2]: Dictionary_upvr (readonly)
		]]
		any_new_result1_upvr:trace("TextChannelCreated: {}", arg2.textChannel.Name)
		return Dictionary_upvr.join(arg1, {
			allTextChannels = Dictionary_upvr.join(arg1.allTextChannels, {
				[arg2.textChannel.Name] = arg2.textChannel;
			});
		})
	end;
	[require(Actions.TextChannelRemoved).name] = function(arg1, arg2) -- Line 75
		--[[ Upvalues[3]:
			[1]: getFFlagExpChatEnableChannelTabsUIFix_upvr (readonly)
			[2]: Dictionary_upvr (readonly)
			[3]: None_upvr (readonly)
		]]
		if getFFlagExpChatEnableChannelTabsUIFix_upvr() then
			local allTextChannels = arg1.allTextChannels
			if arg2.textChannel == arg1.targetTextChannel then
				allTextChannels = Dictionary_upvr.removeKey(allTextChannels, arg2.textChannel.Name).RBXGeneral
				if not allTextChannels then
					allTextChannels = None_upvr
					-- KONSTANTWARNING: GOTO [26] #18
				end
			else
				allTextChannels = arg1.targetTextChannel
			end
			local module_7 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_7.allTextChannels = Dictionary_upvr.removeKey(allTextChannels, arg2.textChannel.Name)
			module_7.targetTextChannel = allTextChannels
			return Dictionary_upvr.join(arg1, module_7)
		end
		return Dictionary_upvr.join(arg1, {
			allTextChannels = Dictionary_upvr.removeKey(arg1.allTextChannels, arg2.textChannel.Name);
		})
	end;
	[require(Actions.LocalTextChannelParticipantRemoved).name] = function(arg1, arg2) -- Line 93
		--[[ Upvalues[3]:
			[1]: getFFlagExpChatEnableChannelTabsUIFix_upvr (readonly)
			[2]: Dictionary_upvr (readonly)
			[3]: None_upvr (readonly)
		]]
		local var32
		if getFFlagExpChatEnableChannelTabsUIFix_upvr() then
			local module_3 = {}
			if arg2.textChannel == arg1.targetTextChannel then
				if arg2.textChannel == arg1.allTextChannels.RBXGeneral then
					var32 = None_upvr
				else
					var32 = arg1.allTextChannels.RBXGeneral
					if not var32 then
						var32 = None_upvr
						-- KONSTANTWARNING: GOTO [33] #23
					end
				end
			else
				var32 = arg1.targetTextChannel
			end
			module_3.targetTextChannel = var32
			return Dictionary_upvr.join(arg1, module_3)
		end
		return arg1
	end;
	[require(Actions.TargetTextChannelPropertyChanged).name] = function(arg1, arg2) -- Line 110
		--[[ Upvalues[4]:
			[1]: any_new_result1_upvr (readonly)
			[2]: getFFlagExpChatTargetTextChannelNeverNone_upvr (readonly)
			[3]: Dictionary_upvr (readonly)
			[4]: None_upvr (readonly)
		]]
		any_new_result1_upvr:trace("TargetTextChannelPropertyChanged dispatched")
		local var35
		if getFFlagExpChatTargetTextChannelNeverNone_upvr() and arg2.textChannel == nil then
			return arg1
		end
		local module_5 = {}
		if arg2.textChannel == nil then
			var35 = None_upvr
		else
			var35 = arg2.textChannel
		end
		module_5.targetTextChannel = var35
		return Dictionary_upvr.join(arg1, module_5)
	end;
	[require(Actions.LocalTeamChanged).name] = function(arg1, arg2) -- Line 122
		--[[ Upvalues[4]:
			[1]: any_new_result1_upvr (readonly)
			[2]: Dictionary_upvr (readonly)
			[3]: None_upvr (readonly)
			[4]: getFFlagExpChatTargetTextChannelNeverNone_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [67] 46. Error Block 14 start (CF ANALYSIS FAILED)
		do
			return Dictionary_upvr.join(arg1, {
				currentTeam = arg2.team;
			})
		end
		-- KONSTANTERROR: [67] 46. Error Block 14 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [78] 54. Error Block 29 start (CF ANALYSIS FAILED)
		any_new_result1_upvr:trace("LocalTeamChanged dispatched with no team")
		local module_6 = {
			currentTeam = None_upvr;
		}
		local RBXGeneral = arg1.allTextChannels.RBXGeneral
		if not RBXGeneral then
			if getFFlagExpChatTargetTextChannelNeverNone_upvr() then
				RBXGeneral = arg1.targetTextChannel
			else
				RBXGeneral = None_upvr
			end
		end
		module_6.targetTextChannel = RBXGeneral
		do
			return Dictionary_upvr.join(arg1, module_6)
		end
		-- KONSTANTERROR: [78] 54. Error Block 29 end (CF ANALYSIS FAILED)
	end;
	[require(Actions.ChatInputBarActivatedTeamMode).name] = function(arg1, arg2) -- Line 149
		--[[ Upvalues[4]:
			[1]: any_new_result1_upvr (readonly)
			[2]: getFFlagExpChatTargetTextChannelNeverNone_upvr (readonly)
			[3]: Dictionary_upvr (readonly)
			[4]: None_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
		if arg1.currentTeam == nil then
			any_new_result1_upvr:trace("ChatInputBarActivatedTeamMode but not on a team")
			return arg1
		end
		assert(arg1.currentTeam, "This should be unreachable")
		local pairs_result1, pairs_result2, pairs_result3_2 = pairs(arg1.allTextChannels)
		-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 26. Error Block 6 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 26. Error Block 6 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [33] 23. Error Block 27 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [37.9]
		if nil == "RBXTeam"..arg1.currentTeam.TeamColor.Name then
			-- KONSTANTWARNING: GOTO [40] #28
		end
		-- KONSTANTERROR: [33] 23. Error Block 27 end (CF ANALYSIS FAILED)
	end;
	[require(Actions.ChatInputBarResetTargetChannel).name] = function(arg1, arg2) -- Line 172
		--[[ Upvalues[3]:
			[1]: Dictionary_upvr (readonly)
			[2]: getFFlagExpChatTargetTextChannelNeverNone_upvr (readonly)
			[3]: None_upvr (readonly)
		]]
		local module_2 = {}
		local RBXGeneral_2 = arg1.allTextChannels.RBXGeneral
		if not RBXGeneral_2 then
			if getFFlagExpChatTargetTextChannelNeverNone_upvr() then
				RBXGeneral_2 = arg1.targetTextChannel
			else
				RBXGeneral_2 = None_upvr
			end
		end
		module_2.targetTextChannel = RBXGeneral_2
		return Dictionary_upvr.join(arg1, module_2)
	end;
}
local getFFlagExpChatWhisperModeRaceFix_upvr = require(ExpChatShared.Flags.getFFlagExpChatWhisperModeRaceFix)
module_4[require(Actions.ChatInputBarActivatedWhisperMode).name] = function(arg1, arg2) -- Line 179
	--[[ Upvalues[5]:
		[1]: getFFlagExpChatWhisperModeRaceFix_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: Dictionary_upvr (readonly)
		[4]: getFFlagExpChatTargetTextChannelNeverNone_upvr (readonly)
		[5]: None_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
	local var50
	if getFFlagExpChatWhisperModeRaceFix_upvr() then
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var50 = arg2.textChannel.Name
			return var50
		end
		if not arg2.textChannel or not INLINED() then
			var50 = "nil"
		end
		any_new_result1_upvr:trace("ChatInputBarActivatedTeamMode - set targetTextChannel to {}", var50)
		if arg2.textChannel == nil then
			return arg1
		end
		local tbl = {}
		var50 = Dictionary_upvr.join
		local tbl_2 = {}
		local Name = arg2.textChannel.Name
		tbl_2[Name] = arg2.textChannel
		var50 = var50(arg1.allTextChannels, tbl_2)
		tbl.allTextChannels = var50
		var50 = arg2.textChannel
		tbl.targetTextChannel = var50
		return Dictionary_upvr.join(arg1, tbl)
	end
	local pairs_result1_3, pairs_result2_2, pairs_result3_4 = pairs(arg1.allTextChannels)
	-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 44. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 44. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [59] 41. Error Block 37 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if Name == arg2.channelName then
		-- KONSTANTWARNING: GOTO [66] #46
	end
	-- KONSTANTERROR: [59] 41. Error Block 37 end (CF ANALYSIS FAILED)
end
module_4[require(Actions.PlayerRemoved).name] = function(arg1, arg2) -- Line 212
	--[[ Upvalues[1]:
		[1]: Dictionary_upvr (readonly)
	]]
	local function _(arg1_2) -- Line 213, Named "isRemovedPlayerInWhisperChannel"
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local string_find_result1_2 = string.find(arg1_2, "RBXWhisper:")
		if string_find_result1_2 then
			string_find_result1_2 = string.find(arg1_2, arg2.userId)
		end
		return string_find_result1_2
	end
	local targetTextChannel = arg1.targetTextChannel
	if targetTextChannel then
		local Name_2 = targetTextChannel.Name
		local string_find_result1 = string.find(Name_2, "RBXWhisper:")
		if string_find_result1 then
			string_find_result1 = string.find(Name_2, arg2.userId)
		end
		if string_find_result1 then
			targetTextChannel = arg1.allTextChannels.RBXGeneral
		end
	end
	return Dictionary_upvr.join(arg1, {
		targetTextChannel = targetTextChannel;
		allTextChannels = Dictionary_upvr.filter(arg1.allTextChannels, function(arg1_3, arg2_2) -- Line 222
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local string_find_result1_3 = string.find(arg2_2, "RBXWhisper:")
			if string_find_result1_3 then
				string_find_result1_3 = string.find(arg2_2, arg2.userId)
			end
			return not string_find_result1_3
		end);
	})
end
return require(Parent.Rodux).createReducer({
	allTextChannels = {};
	targetTextChannel = nil;
	currentTeam = nil;
}, module_4)