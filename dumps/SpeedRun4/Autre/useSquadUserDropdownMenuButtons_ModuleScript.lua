-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:43
-- Luau version 6, Types version 3
-- Time taken: 0.007593 seconds

local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local dependencies = require(Squads.dependencies)
local SquadsCore = dependencies.SquadsCore
local SharedFlags = dependencies.SharedFlags
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local GetFFlagEnableCrossExpVoice_upvr = SharedFlags.GetFFlagEnableCrossExpVoice
local useBackgroundExperience_upvr = require(Parent.CrossExperienceVoice).Hooks.useBackgroundExperience
local React_upvr = dependencies.React
local useIsLocalPlayerPartyVoiceEligible_upvr = SquadsCore.Hooks.useIsLocalPlayerPartyVoiceEligible
local useIsUserPartyVoiceEligible_upvr = SquadsCore.Hooks.useIsUserPartyVoiceEligible
local useIsCurrentSquadPartyVoiceEligible_upvr = SquadsCore.Hooks.useIsCurrentSquadPartyVoiceEligible
local FFlagPartyVoiceMuteOthers_upvr = SharedFlags.FFlagPartyVoiceMuteOthers
local SquadExternalContractContext_upvr = SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local useCurrentSquadParentChannelId_upvr = SquadsCore.Hooks.useCurrentSquadParentChannelId
local useSelector_upvr = dependencies.Hooks.useSelector
local PresenceType_upvr = dependencies.RoduxPresence.Enums.PresenceType
local Constants_upvr = SquadsCore.Common.Constants
local getFFlagEnableCrossExpVoiceAbuseReport_upvr = SharedFlags.getFFlagEnableCrossExpVoiceAbuseReport
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
return function(arg1, arg2) -- Line 26, Named "useSquadUserDropdownMenuButtons"
	--[[ Upvalues[15]:
		[1]: useLocalUserId_upvr (readonly)
		[2]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[3]: useBackgroundExperience_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useIsLocalPlayerPartyVoiceEligible_upvr (readonly)
		[6]: useIsUserPartyVoiceEligible_upvr (readonly)
		[7]: useIsCurrentSquadPartyVoiceEligible_upvr (readonly)
		[8]: FFlagPartyVoiceMuteOthers_upvr (readonly)
		[9]: SquadExternalContractContext_upvr (readonly)
		[10]: useCurrentSquadParentChannelId_upvr (readonly)
		[11]: useSelector_upvr (readonly)
		[12]: PresenceType_upvr (readonly)
		[13]: Constants_upvr (readonly)
		[14]: getFFlagEnableCrossExpVoiceAbuseReport_upvr (readonly)
		[15]: dependencyArray_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6_result1_upvr = useLocalUserId_upvr()
	local var64
	if tostring(var6_result1_upvr) ~= tostring(arg1) then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	local _
	if GetFFlagEnableCrossExpVoice_upvr() then
		if arg1 then
			local _ = tonumber(arg1)
		else
		end
		local var8_result1_upvw = useBackgroundExperience_upvr()
		local tbl_7 = {var8_result1_upvw}
		local any_useMemo_result1_upvw_2 = React_upvr.useMemo(function() -- Line 39
			--[[ Upvalues[1]:
				[1]: var8_result1_upvw (read and write)
			]]
			if var8_result1_upvw then
				return var8_result1_upvw.voiceChannelId
			end
			return nil
		end, tbl_7)
		if nil then
			local useIsLocalPlayerPartyVoiceEligible_upvr_result1 = useIsLocalPlayerPartyVoiceEligible_upvr()
			tbl_7 = nil
			local var73 = tbl_7
			if useIsCurrentSquadPartyVoiceEligible_upvr() ~= true then
				var73 = false
			else
				var73 = true
			end
			if var73 then
				if useIsLocalPlayerPartyVoiceEligible_upvr_result1 then
				end
			end
			local var74_upvw = not useIsUserPartyVoiceEligible_upvr(var73)
			local var75 = FFlagPartyVoiceMuteOthers_upvr
			if var75 then
				var75 = useIsLocalPlayerPartyVoiceEligible_upvr_result1
				if var75 then
					var75 = var73
					if var75 then
						var75 = useIsUserPartyVoiceEligible_upvr(var73)
						if var75 then
							var75 = not true
						end
					end
				end
			end
			local var76_upvw = var75
		end
	end
	local any_useGetConversationFromId_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr).useGetConversationFromId(useCurrentSquadParentChannelId_upvr() or "")
	local tbl_3 = {}
	tbl_3[1] = arg1
	local useSelector_upvr_result1_upvr = useSelector_upvr(React_upvr.useCallback(function(arg1_3) -- Line 63
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_3.Squad.Presence.byUserId[tostring(arg1)]
	end, tbl_3))
	local var82_upvr = true
	return React_upvr.useMemo(function() -- Line 70
		--[[ Upvalues[11]:
			[1]: var74_upvw (read and write)
			[2]: useSelector_upvr_result1_upvr (readonly)
			[3]: PresenceType_upvr (copied, readonly)
			[4]: any_useGetConversationFromId_result1_upvr (readonly)
			[5]: Constants_upvr (copied, readonly)
			[6]: var6_result1_upvr (readonly)
			[7]: arg2 (readonly)
			[8]: getFFlagEnableCrossExpVoiceAbuseReport_upvr (copied, readonly)
			[9]: any_useMemo_result1_upvw_2 (read and write)
			[10]: var82_upvr (readonly)
			[11]: var76_upvw (read and write)
		]]
		local tbl_6 = {
			VoiceIneligibleButton = var74_upvw;
		}
		local var88 = useSelector_upvr_result1_upvr
		if var88 then
			var88 = false
			if useSelector_upvr_result1_upvr.userPresenceType == PresenceType_upvr.InGame then
				var88 = useSelector_upvr_result1_upvr.placeId
			end
		end
		tbl_6.JoinButton = var88
		var88 = any_useGetConversationFromId_result1_upvr
		local var89 = var88
		if var89 then
			var89 = false
			if any_useGetConversationFromId_result1_upvr.type == Constants_upvr.CONVERSATION_CHANNEL_GROUP_TYPE then
				if any_useGetConversationFromId_result1_upvr.initiator ~= var6_result1_upvr then
					var89 = false
				else
					var89 = true
				end
			end
		end
		tbl_6.RemoveUserButton = var89
		tbl_6.ViewProfileButton = not arg2
		local getFFlagEnableCrossExpVoiceAbuseReport_upvr_result1 = getFFlagEnableCrossExpVoiceAbuseReport_upvr()
		if getFFlagEnableCrossExpVoiceAbuseReport_upvr_result1 then
			getFFlagEnableCrossExpVoiceAbuseReport_upvr_result1 = any_useMemo_result1_upvw_2
			if getFFlagEnableCrossExpVoiceAbuseReport_upvr_result1 then
				getFFlagEnableCrossExpVoiceAbuseReport_upvr_result1 = not var82_upvr
			end
		end
		tbl_6.ReportButton = getFFlagEnableCrossExpVoiceAbuseReport_upvr_result1
		tbl_6.MuteVoiceButton = var76_upvw
		for i, v in tbl_6 do
			if v then
				table.insert({}, i)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end, dependencyArray_upvr(var74_upvw, arg2, any_useMemo_result1_upvw_2, var82_upvr, useSelector_upvr_result1_upvr, any_useGetConversationFromId_result1_upvr, var6_result1_upvr, var76_upvw))
end