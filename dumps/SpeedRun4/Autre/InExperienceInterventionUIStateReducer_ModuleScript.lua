-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:51
-- Luau version 6, Types version 3
-- Time taken: 0.004990 seconds

local Constants_upvr = require(script:FindFirstAncestor("InExperienceIntervention").Utils.Constants)
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("RateLimitChatInterventionUI", false)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("ChatInterventionUIRateLimitWindowSec", 5)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("RateLimitTimeoutToast", false)
local game_DefineFastFlag_result1_upvr_4 = game:DefineFastFlag("RateLimitNudgeToast", false)
local game_DefineFastFlag_result1_upvr_5 = game:DefineFastFlag("RateLimitNudgeDialog", false)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("RateLimitTimeoutDialog", false)
local UIStateActions_upvr = Constants_upvr.UIStateActions
return function(arg1, arg2) -- Line 14, Named "InExperienceInterventionUIStateReducer"
	--[[ Upvalues[8]:
		[1]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[6]: game_DefineFastFlag_result1_upvr_5 (readonly)
		[7]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[8]: UIStateActions_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local clone = table.clone(arg1)
	local var11
	if game_DefineFastFlag_result1_upvr_3 then
		var11 = DateTime.now()
		var11 = arg1.dispatchTimestamp
		var11 = game_DefineFastInt_result1_upvr
		local var12
		if var11.UnixTimestamp - var11 >= var11 then
		else
		end
		if arg2.treatmentType ~= arg1.treatmentType then
			var11 = false
		else
			var11 = true
		end
		if game_DefineFastFlag_result1_upvr then
			if arg2.treatmentType ~= Constants_upvr.TreatmentType.ChatTimeoutChatAttempt or arg1.treatmentType ~= Constants_upvr.TreatmentType.ChatTimeoutGameJoin or arg2.treatmentType == Constants_upvr.TreatmentType.ChatTimeoutGameJoin then
				if arg1.treatmentType ~= Constants_upvr.TreatmentType.ChatTimeoutChatAttempt then
				else
				end
			end
			local var13 = true
			if arg2.treatmentType ~= Constants_upvr.TreatmentType.ChatTimeoutChatAttempt then
				if arg2.treatmentType ~= Constants_upvr.TreatmentType.ChatTimeoutGameJoin then
					var13 = false
				else
					var13 = true
				end
			end
			if not var11 or not var13 then
			end
		end
		local var14
		if game_DefineFastFlag_result1_upvr_4 then
			if arg2.treatmentType ~= Constants_upvr.TreatmentType.ChatNudgeToast then
			else
			end
		end
		local var15
		if game_DefineFastFlag_result1_upvr_5 then
			if arg2.treatmentType ~= Constants_upvr.TreatmentType.ChatNudgeDialog then
			else
			end
		end
		local var16
		if game_DefineFastFlag_result1_upvr_2 then
			if arg2.treatmentType ~= Constants_upvr.TreatmentType.ChatTimeoutDialog then
			else
			end
		end
		if true or true and var11 or true and var11 or true and var11 then
		end
		local var17 = true
	end
	if arg2.type == UIStateActions_upvr.ToggleNotificationDialog and not var17 then
		clone.isShown = arg2.isShown
		clone.treatmentType = arg2.treatmentType
		local detail = arg2.detail
		if not detail then
			detail = {}
		end
		clone.detail = detail
		clone.endTime = arg2.endTime or 0
		clone.dispatchTimestamp = arg2.dispatchTimestamp
		return clone
	end
	if var17 then
		var11 = arg2.treatmentType
		print("Chat intervention UI treatment rate limited: ", var11)
	end
	return arg1
end