-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:51
-- Luau version 6, Types version 3
-- Time taken: 0.001240 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local AppStorageService_upvr = game:GetService("AppStorageService")
local HttpService_upvr = game:GetService("HttpService")
function module_2_upvr.new(arg1) -- Line 20
	--[[ Upvalues[3]:
		[1]: AppStorageService_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	local module = {}
	local var5 = arg1
	if not var5 then
		var5 = AppStorageService_upvr
	end
	module._appStorageService = var5
	module._httpService = HttpService_upvr
	module._jsonDecodeCache = {}
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.getCachedJsonForKey(arg1, arg2, arg3) -- Line 30
	local var6
	if arg1._jsonDecodeCache[arg2] == nil or arg3 then
		var6 = arg1:decodeInternal(arg2)
		arg1._jsonDecodeCache[arg2] = var6
	else
		var6 = arg1._jsonDecodeCache[arg2]
	end
	return var6.result
end
function module_2_upvr.decodeInternal(arg1, arg2) -- Line 41
	local pcall_result1, pcall_result2_2_upvr = pcall(function() -- Line 42
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		return arg1._appStorageService:GetItem(arg2)
	end)
	if not pcall_result1 then
		return {
			result = nil;
		}
	end
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 50
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: pcall_result2_2_upvr (readonly)
		]]
		return arg1._httpService:JSONDecode(pcall_result2_2_upvr)
	end)
	if not pcall_result1_2 then
		return {
			result = nil;
		}
	end
	return {
		result = pcall_result2;
	}
end
module_2_upvr.default = module_2_upvr.new(nil)
return module_2_upvr