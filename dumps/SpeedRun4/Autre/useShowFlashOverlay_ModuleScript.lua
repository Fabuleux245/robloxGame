-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:54
-- Luau version 6, Types version 3
-- Time taken: 0.001907 seconds

local AppStorageService_upvr = game:GetService("AppStorageService")
local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local function var4_upvr() -- Line 19
	--[[ Upvalues[2]:
		[1]: AppStorageService_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	pcall(function() -- Line 20
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		AppStorageService_upvr:SetItem(Constants_upvr.LastFlashOccurrenceTsLocalStorageKey, tostring(DateTime.now().UnixTimestampMillis))
		AppStorageService_upvr:Flush()
	end)
end
local useSelector_upvr = require(Parent.Parent.RoactUtils).Hooks.RoactRodux.useSelector
return function(arg1) -- Line 29
	--[[ Upvalues[4]:
		[1]: AppStorageService_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: var4_upvr (readonly)
	]]
	if arg1 then
	else
	end
	if not useSelector_upvr(function(arg1_2) -- Line 32
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].IsOverlayFlashActive
	end) then
		return false, var4_upvr
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 40
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		return AppStorageService_upvr:GetItem(Constants_upvr.LastFlashOccurrenceTsLocalStorageKey)
	end)
	if not pcall_result1 then
		return false, var4_upvr
	end
	local tonumber_result1 = tonumber(pcall_result2)
	if tonumber_result1 == nil then
		return false, var4_upvr
	end
	if tonumber_result1 == nil then
	else
	end
	assert(true, "lastFlashOccurrenceTs cannot be nil")
	if DateTime.now().UnixTimestampMillis - tonumber_result1 < 500 then
		return false, var4_upvr
	end
	return true, var4_upvr
end