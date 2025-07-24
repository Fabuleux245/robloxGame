-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:41
-- Luau version 6, Types version 3
-- Time taken: 0.001338 seconds

local MemStorageService_upvr = game:GetService("MemStorageService")
local HttpService_upvr = game:GetService("HttpService")
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	module.memStorageKey = arg1
	return setmetatable(module, module_2_upvr)
end
function module_2_upvr.getItem(arg1) -- Line 21
	--[[ Upvalues[2]:
		[1]: MemStorageService_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 22
		--[[ Upvalues[3]:
			[1]: MemStorageService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: HttpService_upvr (copied, readonly)
		]]
		local any_GetItem_result1 = MemStorageService_upvr:GetItem(arg1.memStorageKey)
		if any_GetItem_result1 and any_GetItem_result1 ~= "" then
			return HttpService_upvr:JSONDecode(any_GetItem_result1)
		end
		return nil
	end)
	if pcall_result1_2 then
		return pcall_result2
	end
	return nil
end
function module_2_upvr.setItem(arg1, arg2) -- Line 35
	--[[ Upvalues[2]:
		[1]: MemStorageService_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 36
		--[[ Upvalues[4]:
			[1]: MemStorageService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: HttpService_upvr (copied, readonly)
		]]
		local var10
		if arg2 and arg2 ~= "" then
			var10 = HttpService_upvr:JSONEncode(arg2)
		else
			var10 = ""
		end
		MemStorageService_upvr:SetItem(arg1.memStorageKey, var10)
	end)
	return pcall_result1
end
function module_2_upvr.bindAndFire(arg1, arg2) -- Line 42
	--[[ Upvalues[2]:
		[1]: MemStorageService_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	return MemStorageService_upvr:BindAndFire(arg1.memStorageKey, function(arg1_2) -- Line 43
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local var14
		if arg1_2 and arg1_2 ~= "" then
			var14 = HttpService_upvr:JSONDecode(arg1_2)
		end
		if arg2 then
			arg2(var14)
		end
	end)
end
return module_2_upvr