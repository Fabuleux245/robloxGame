-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:42
-- Luau version 6, Types version 3
-- Time taken: 0.002799 seconds

local AppStorageService_upvr = game:GetService("AppStorageService")
local Players_upvr = game:GetService("Players")
local HttpService_upvr = game:GetService("HttpService")
local function _() -- Line 5, Named "getCurrentUser"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	if Players_upvr.LocalPlayer and 0 < Players_upvr.LocalPlayer.UserId then
		return tostring(Players_upvr.LocalPlayer.UserId)
	end
	return '0'
end
local function _(arg1) -- Line 14, Named "getUserKey"
	return "u_"..tostring(arg1 or '0')
end
local function getValuesForAllUsers_upvr(arg1) -- Line 18, Named "getValuesForAllUsers"
	--[[ Upvalues[2]:
		[1]: AppStorageService_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local any_GetItem_result1_upvr = AppStorageService_upvr:GetItem(arg1)
	local pcall_result1, pcall_result2 = pcall(function() -- Line 20
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_GetItem_result1_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(any_GetItem_result1_upvr)
	end)
	if pcall_result1 and type(pcall_result2) == "table" then
		return pcall_result2
	end
	return {
		default = any_GetItem_result1_upvr;
	}
end
local function _(arg1, arg2) -- Line 32, Named "setValuesForAllUsers"
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: AppStorageService_upvr (readonly)
	]]
	AppStorageService_upvr:SetItem(arg1, HttpService_upvr:JSONEncode(arg2))
end
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 40
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	if not arg1 then
		if Players_upvr.LocalPlayer and 0 < Players_upvr.LocalPlayer.UserId then
		else
		end
	end
	local module = {
		userId = tostring('0');
	}
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.GetItem(arg1, arg2) -- Line 52
	--[[ Upvalues[1]:
		[1]: getValuesForAllUsers_upvr (readonly)
	]]
	local getValuesForAllUsers_result1_2 = getValuesForAllUsers_upvr(arg2)
	local var12 = getValuesForAllUsers_result1_2["u_"..tostring(arg1.userId or '0')]
	if var12 == nil then
		var12 = getValuesForAllUsers_result1_2.default
	end
	return var12
end
function module_2_upvr.SetItem(arg1, arg2, arg3) -- Line 62
	--[[ Upvalues[3]:
		[1]: getValuesForAllUsers_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: AppStorageService_upvr (readonly)
	]]
	local getValuesForAllUsers_result1 = getValuesForAllUsers_upvr(arg2)
	getValuesForAllUsers_result1["u_"..tostring(arg1.userId or '0')] = arg3
	AppStorageService_upvr:SetItem(arg2, HttpService_upvr:JSONEncode(getValuesForAllUsers_result1))
end
function module_2_upvr.Flush(arg1) -- Line 69
	--[[ Upvalues[1]:
		[1]: AppStorageService_upvr (readonly)
	]]
	AppStorageService_upvr:Flush()
end
module_2_upvr.getItem = module_2_upvr.GetItem
module_2_upvr.setItem = module_2_upvr.SetItem
module_2_upvr.flush = module_2_upvr.Flush
return module_2_upvr