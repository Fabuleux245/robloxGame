-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:29
-- Luau version 6, Types version 3
-- Time taken: 0.001341 seconds

local Parent = script.Parent.Parent
local AppStorageService_upvr = game:GetService("AppStorageService")
local Constants_upvr = require(Parent.Constants)
local getUserIdsFromString_upvr = require(Parent.Utils.getUserIdsFromString)
local getLocalUserId_upvr = require(Parent.Utils.getLocalUserId)
local Players_upvr = game:GetService("Players")
local Dash_upvr = require(Parent.Parent.Dash)
local EventNames_upvr = require(Parent.Analytics.EventNames)
return function(arg1) -- Line 14
	--[[ Upvalues[7]:
		[1]: AppStorageService_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: getUserIdsFromString_upvr (readonly)
		[4]: getLocalUserId_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: Dash_upvr (readonly)
		[7]: EventNames_upvr (readonly)
	]]
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 15
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		return AppStorageService_upvr:GetItem(Constants_upvr.DeleteWarningModalOptOutStorageKey)
	end)
	if not pcall_result1_2 then
	else
		local var5_result1 = getUserIdsFromString_upvr(pcall_result2)
		var5_result1[getLocalUserId_upvr(Players_upvr) or ""] = true
		local concatenated_upvr = table.concat(Dash_upvr.keys(var5_result1), ',')
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 28
			--[[ Upvalues[3]:
				[1]: AppStorageService_upvr (copied, readonly)
				[2]: Constants_upvr (copied, readonly)
				[3]: concatenated_upvr (readonly)
			]]
			AppStorageService_upvr:SetItem(Constants_upvr.DeleteWarningModalOptOutStorageKey, concatenated_upvr)
			AppStorageService_upvr:Flush()
		end)
		if not pcall_result1 then return end
		arg1.fireEvent(EventNames_upvr.CapturesDeleteWarningModalOptedOut)
	end
end