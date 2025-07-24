-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:37
-- Luau version 6, Types version 3
-- Time taken: 0.002403 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local Signal_upvr = require(script:FindFirstAncestor("RealtimeDelivery").Parent.AppCommonLib).Signal
function module_upvr.observeEvent(arg1, arg2, arg3) -- Line 14
	--[[ Upvalues[1]:
		[1]: Signal_upvr (readonly)
	]]
	local var3
	if type(arg2) ~= "string" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "Expected namespace to be a string")
	if type(arg3) ~= "function" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "Expected callback to be a function")
	var3 = arg1.namespaceTable
	local var4 = var3[arg2]
	if var4 == nil then
		var3 = Signal_upvr.new()
		var4 = var3
		var3 = arg1.namespaceTable
		var3[arg2] = var4
	end
	var3 = var4:connect(arg3)
	return var3
end
local HttpService_upvr = game:GetService("HttpService")
function module_upvr.new(arg1) -- Line 27
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local module_upvr_2 = {
		namespaceTable = {};
	}
	setmetatable(module_upvr_2, module_upvr)
	module_upvr_2.connections = {arg1.RobloxEventReceived:Connect(function(arg1_2) -- Line 34
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (readonly)
			[2]: HttpService_upvr (copied, readonly)
		]]
		local var15 = module_upvr_2.namespaceTable[arg1_2.namespace]
		if var15 == nil then
		else
			if arg1_2.detail then
				local var16
				if arg1_2.detail ~= "" then
					local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 43
						--[[ Upvalues[2]:
							[1]: HttpService_upvr (copied, readonly)
							[2]: arg1_2 (readonly)
						]]
						return HttpService_upvr:JSONDecode(arg1_2.detail)
					end)
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var16 = pcall_result2_2
						return var16
					end
					if not pcall_result1_3 or not INLINED_2() then
						var16 = arg1_2.detail
					end
					-- KONSTANTWARNING: GOTO [32] #24
				end
			end
			var15:fire({}, arg1_2.detailType)
		end
	end), arg1.RobloxConnectionChanged:Connect(function(arg1_3, arg2, arg3, arg4) -- Line 60
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (readonly)
			[2]: HttpService_upvr (copied, readonly)
		]]
		local var21 = module_upvr_2.namespaceTable[arg1_3]
		if var21 == nil then
		else
			local var22
			if arg4 then
				local pcall_result1, pcall_result2_3 = pcall(function() -- Line 69
					--[[ Upvalues[2]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: arg4 (readonly)
					]]
					return HttpService_upvr:JSONDecode(arg4)
				end)
				if pcall_result1 then
					var22 = pcall_result2_3
				else
					var22 = {}
				end
			end
			var21:fire(arg2, arg3, var22)
		end
	end)}
	return module_upvr_2
end
return module_upvr