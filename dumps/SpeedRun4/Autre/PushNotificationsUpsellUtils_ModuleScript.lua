-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:30
-- Luau version 6, Types version 3
-- Time taken: 0.002048 seconds

local NotificationsUpsellConstants_upvr = require(script.Parent.Parent.NotificationsUpsellConstants)
return {
	getPushUpsellPromptedCount = function(arg1, arg2) -- Line 5, Named "getPushUpsellPromptedCount"
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 6
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			return arg1:GetItem(arg2)
		end)
		if pcall_result1 then
			local tonumber_result1_2 = tonumber(pcall_result2_2)
			if tonumber_result1_2 ~= nil then
				return tonumber_result1_2
			end
			return 0
		end
		return -1
	end;
	getPushSysUpsellPromptTimestamp = function(arg1) -- Line 23, Named "getPushSysUpsellPromptTimestamp"
		--[[ Upvalues[1]:
			[1]: NotificationsUpsellConstants_upvr (readonly)
		]]
		local pcall_result1_3, pcall_result2_3 = pcall(function() -- Line 24
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: NotificationsUpsellConstants_upvr (copied, readonly)
			]]
			return arg1:GetItem(NotificationsUpsellConstants_upvr.LocalStorageKeys.SysPromptShownTimestamp)
		end)
		if pcall_result1_3 then
			local tonumber_result1 = tonumber(pcall_result2_3)
			if tonumber_result1 ~= nil then
				return tonumber_result1
			end
			return 0
		end
		return -1
	end;
	getPushEduUpsellResponseTimestamp = function(arg1) -- Line 41, Named "getPushEduUpsellResponseTimestamp"
		--[[ Upvalues[1]:
			[1]: NotificationsUpsellConstants_upvr (readonly)
		]]
		local pcall_result1_4, pcall_result2 = pcall(function() -- Line 42
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: NotificationsUpsellConstants_upvr (copied, readonly)
			]]
			return arg1:GetItem(NotificationsUpsellConstants_upvr.LocalStorageKeys.EduPromptResponseTimestamp)
		end)
		if pcall_result1_4 then
			local tonumber_result1_3 = tonumber(pcall_result2)
			if tonumber_result1_3 ~= nil then
				return tonumber_result1_3
			end
			return 0
		end
		return -1
	end;
	incrementPushUpsellPromptedCount = function(arg1, arg2) -- Line 59, Named "incrementPushUpsellPromptedCount"
		local pcall_result1_2, pcall_result2_4 = pcall(function() -- Line 60
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			return arg1:GetItem(arg2)
		end)
		if pcall_result1_2 then
			local var19_upvr = tonumber(pcall_result2_4) or 0
			pcall(function() -- Line 66
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: arg2 (readonly)
					[3]: var19_upvr (readonly)
				]]
				arg1:SetItem(arg2, tostring(var19_upvr + 1))
				arg1:Flush()
			end)
		end
	end;
	setPushSysUpsellPromptTimestamp = function(arg1, arg2) -- Line 73, Named "setPushSysUpsellPromptTimestamp"
		--[[ Upvalues[1]:
			[1]: NotificationsUpsellConstants_upvr (readonly)
		]]
		pcall(function() -- Line 74
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: NotificationsUpsellConstants_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			arg1:SetItem(NotificationsUpsellConstants_upvr.LocalStorageKeys.SysPromptShownTimestamp, tostring(arg2))
			arg1:Flush()
		end)
	end;
	setPushEduUpsellResponseTimestamp = function(arg1, arg2) -- Line 83, Named "setPushEduUpsellResponseTimestamp"
		--[[ Upvalues[1]:
			[1]: NotificationsUpsellConstants_upvr (readonly)
		]]
		pcall(function() -- Line 84
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: NotificationsUpsellConstants_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			arg1:SetItem(NotificationsUpsellConstants_upvr.LocalStorageKeys.EduPromptResponseTimestamp, tostring(arg2))
			arg1:Flush()
		end)
	end;
	setPushEduUpsellResponse = function(arg1, arg2) -- Line 93, Named "setPushEduUpsellResponse"
		--[[ Upvalues[1]:
			[1]: NotificationsUpsellConstants_upvr (readonly)
		]]
		pcall(function() -- Line 94
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: NotificationsUpsellConstants_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			arg1:SetItem(NotificationsUpsellConstants_upvr.LocalStorageKeys.EduPromptResponse, arg2)
			arg1:Flush()
		end)
	end;
}