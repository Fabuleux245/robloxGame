-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:21
-- Luau version 6, Types version 3
-- Time taken: 0.000704 seconds

local Parent = script.Parent.Parent
local AppStorageService_upvr = game:GetService("AppStorageService")
local Constants_upvr = require(Parent.Constants)
local getUserIdsFromString_upvr = require(Parent.Utils.getUserIdsFromString)
local getLocalUserId_upvr = require(Parent.Utils.getLocalUserId)
local Players_upvr = game:GetService("Players")
return function() -- Line 10
	--[[ Upvalues[5]:
		[1]: AppStorageService_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: getUserIdsFromString_upvr (readonly)
		[4]: getLocalUserId_upvr (readonly)
		[5]: Players_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 11
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		return AppStorageService_upvr:GetItem(Constants_upvr.DeleteWarningModalOptOutStorageKey)
	end)
	if pcall_result1 and pcall_result2 ~= "" and getUserIdsFromString_upvr(pcall_result2)[getLocalUserId_upvr(Players_upvr) or ""] then
		return true
	end
	return false
end