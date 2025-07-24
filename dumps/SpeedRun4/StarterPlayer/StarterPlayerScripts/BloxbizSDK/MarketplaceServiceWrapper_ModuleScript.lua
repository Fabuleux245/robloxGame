-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:45
-- Luau version 6, Types version 3
-- Time taken: 0.006918 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService_upvr = game:GetService("RunService")
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local var4_upvw
local Utils_upvr = require(script.Parent.Utils)
local marketplaceServiceWrapper_upvr = ReplicatedStorage:WaitForChild("BloxbizRemotes"):WaitForChild("marketplaceServiceWrapper")
local module_2_upvr = {
	_variablePricingData = {};
	_experimentData = {};
}
if script.Parent.Parent ~= ReplicatedStorage then
	error("[Super Biz] Module should only be required through ReplicatedStorage")
end
function module_2_upvr.createWrapper(arg1) -- Line 35
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: MarketplaceService_upvr (readonly)
	]]
	return setmetatable(arg1, {
		__index = function(arg1_2, arg2) -- Line 37, Named "__index"
			--[[ Upvalues[2]:
				[1]: module_2_upvr (copied, readonly)
				[2]: MarketplaceService_upvr (copied, readonly)
			]]
			local pcall_result1_2, pcall_result2_3_upvr = pcall(function() -- Line 38
				--[[ Upvalues[3]:
					[1]: module_2_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: MarketplaceService_upvr (copied, readonly)
				]]
				local rawget_result1 = rawget(module_2_upvr, arg2)
				if not rawget_result1 then
					rawget_result1 = MarketplaceService_upvr[arg2]
				end
				return rawget_result1
			end)
			if not pcall_result1_2 then
				error("[Super Biz] "..tostring(arg2).." is not a valid member of MarketplaceService or cannot be read")
			end
			if type(pcall_result2_3_upvr) == "function" then
				return function(arg1_3, ...) -- Line 49
					--[[ Upvalues[2]:
						[1]: pcall_result2_3_upvr (readonly)
						[2]: MarketplaceService_upvr (copied, readonly)
					]]
					return pcall_result2_3_upvr(MarketplaceService_upvr, ...)
				end
			end
			return pcall_result2_3_upvr
		end;
		__newindex = function(arg1_4, arg2, arg3) -- Line 56, Named "__newindex"
			--[[ Upvalues[2]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: module_2_upvr (copied, readonly)
			]]
			if arg2 == "ProcessReceipt" then
				if type(arg3) ~= "function" then
					error("[Super Biz] Attempt to set ProcessReceipt with a non-function value")
				end
				function MarketplaceService_upvr.ProcessReceipt(arg1_5) -- Line 62
					--[[ Upvalues[2]:
						[1]: module_2_upvr (copied, readonly)
						[2]: arg3 (readonly)
					]]
					arg1_5.ProductId = module_2_upvr:getBaseIdFromGenericId(arg1_5.ProductId)
					return arg3(arg1_5)
				end
			else
				local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 70
					--[[ Upvalues[3]:
						[1]: MarketplaceService_upvr (copied, readonly)
						[2]: arg2 (readonly)
						[3]: arg3 (readonly)
					]]
					MarketplaceService_upvr[arg2] = arg3
				end)
				if not pcall_result1_3 then
					error("[Super Biz] "..pcall_result2_2)
				end
			end
		end;
		__metatable = function() -- Line 78, Named "__metatable"
			error("[Super Biz] Attempt to access metatable for MarketplaceService wrapper")
		end;
	})
end
function module_2_upvr.PromptProductPurchase(arg1, arg2, arg3, ...) -- Line 84
	--[[ Upvalues[1]:
		[1]: MarketplaceService_upvr (readonly)
	]]
	if not arg2 or not arg3 then
		error("[SuperBiz] Attempt to call PromptProductPurchase with missing argument")
	end
	return MarketplaceService_upvr:PromptProductPurchase(arg2, arg1:_getVariantIdForPlayer(arg2.UserId, arg3), ...)
end
function module_2_upvr.PromptGamePassPurchase(arg1, arg2, arg3) -- Line 94
	--[[ Upvalues[1]:
		[1]: MarketplaceService_upvr (readonly)
	]]
	if not arg2 or not arg3 then
		error("[SuperBiz] Attempt to call PromptGamePassPurchase with missing argument")
	end
	return MarketplaceService_upvr:PromptGamePassPurchase(arg2, arg1:_getVariantIdForPlayer(arg2.UserId, arg3))
end
function module_2_upvr.UserOwnsGamePassAsync(arg1, arg2, arg3) -- Line 104
	--[[ Upvalues[1]:
		[1]: MarketplaceService_upvr (readonly)
	]]
	if not arg2 or not arg3 then
		error("[Super Biz] Attempt to call UserOwnsGamePassAsync with missing argument")
	end
	return MarketplaceService_upvr:UserOwnsGamePassAsync(arg2, arg1:_getVariantIdForPlayer(arg2, arg3))
end
local Players_upvr = game:GetService("Players")
function module_2_upvr.GetProductInfo(arg1, arg2, arg3) -- Line 114
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: MarketplaceService_upvr (readonly)
	]]
	if not arg2 or not arg3 then
		error("[Super Biz] Attempt to call GetProductInfo with missing argument")
	end
	local var19
	if RunService_upvr:IsClient() then
		var19 = Players_upvr.LocalPlayer.UserId
	end
	return MarketplaceService_upvr:GetProductInfo(arg1:_getVariantIdForPlayer(var19, arg2), arg3)
end
local function _(arg1) -- Line 129, Named "countDictionary"
	local var24 = 0
	for _, _ in arg1 do
		var24 += 1
	end
	return var24
end
local HashLib_upvr = require(script.Parent.HashLib)
function module_2_upvr.getPlayerExperimentGroup(arg1, arg2, arg3) -- Line 137
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: HashLib_upvr (readonly)
	]]
	var4_upvw = require(script.Parent.AdFilter.InferredPlayerData)
	local var30 = arg1._experimentData[tostring(arg1:getBaseIdFromVariantId(arg3))..var4_upvw:Get(arg2).tier]
	local var31
	if not var30 then
		return nil
	end
	var31 = tostring(arg2)
	var31 = 0
	var31 = HashLib_upvr
	var31 = var31..tostring(var31)
	var31 = 1
	var31 = string.sub(var31.sha256(var31), var31, 8)
	var31 = 0
	for _, _ in var30 do
		var31 += 1
	end
	return math.floor((var31) * (tonumber(var31, 16) / 4294967295))
end
function module_2_upvr._getVariantIdForPlayer(arg1, arg2, arg3) -- Line 158
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: marketplaceServiceWrapper_upvr (readonly)
		[3]: var4_upvw (read and write)
	]]
	if not arg2 then
		return arg3
	end
	if RunService_upvr:IsClient() then
		return marketplaceServiceWrapper_upvr:InvokeServer("getVariantIdForPlayer", arg2, arg3)
	end
	if not arg1._variablePricingData[arg3] then
		return arg3
	end
	var4_upvw = require(script.Parent.AdFilter.InferredPlayerData)
	local tier = var4_upvw:Get(arg2).tier
	local var33 = arg1._variablePricingData[arg3][tier]
	if not var33 then
		return arg3
	end
	local var34 = tostring(arg3)..tier
	if arg1._experimentData[var34] then
		return arg1._experimentData[var34][arg1:getPlayerExperimentGroup(arg2, var33)]
	end
	return var33
end
function module_2_upvr._formatPriceExperiments(arg1, arg2) -- Line 192
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for _, v_3 in arg2.price_experiments do
		if v_3.enabled ~= false then
			local var51 = tostring(arg2.product_id)..v_3.tier
			arg1._experimentData[var51] = {}
			for _, v_4 in v_3.price_options do
				arg1._experimentData[var51][v_4.group] = v_4.product_variant_id
				local _
			end
		end
	end
end
function module_2_upvr._formatPricingDataFetch(arg1, arg2) -- Line 211
	local module = {}
	for _, v_5 in ipairs(arg2) do
		local product_id = v_5.product_id
		module[product_id] = {}
		for _, v_6 in ipairs(v_5.price_tiers) do
			module[product_id][v_6.tier] = v_6.product_variant_id
		end
		arg1:_formatPriceExperiments(v_5)
	end
	return module
end
local AdRequestStats_upvr = require(script.Parent.AdRequestStats)
local var70_upvw
local HttpService_upvr = game:GetService("HttpService")
function module_2_upvr._refreshVariablePricingData(arg1) -- Line 230
	--[[ Upvalues[4]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: var70_upvw (read and write)
		[4]: HttpService_upvr (readonly)
	]]
	var70_upvw = require(script.Parent.BatchHTTP)
	local pcall_result1, pcall_result2 = pcall(HttpService_upvr.PostAsync, HttpService_upvr, var70_upvw.getNewUrl("product-price"), HttpService_upvr:JSONEncode(Utils_upvr.merge({}, AdRequestStats_upvr:getGameStats())))
	if pcall_result1 then
		pcall_result2 = HttpService_upvr:JSONDecode(pcall_result2).data
		pcall_result2 = arg1:_formatPricingDataFetch(pcall_result2)
		arg1._variablePricingData = pcall_result2
		return true
	end
	return pcall_result2
end
function module_2_upvr._refreshVariablePricingOnInterval(arg1) -- Line 254
	--[[ Upvalues[2]:
		[1]: Utils_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	while true do
		Utils_upvr.callWithRetry(function() -- Line 256
			--[[ Upvalues[1]:
				[1]: module_2_upvr (copied, readonly)
			]]
			module_2_upvr:_refreshVariablePricingData()
		end, 5)
		task.wait(300)
	end
end
function module_2_upvr.getVariantIdFromExperimentVariantId(arg1, arg2) -- Line 264
	for i_7, v_7 in arg1._experimentData do
		for _, v_8 in v_7 do
			if v_8 == arg2 then
				return arg1._variablePricingData[tonumber(string.match(i_7, "%d+"))][string.match(i_7, "%d+(.+)")]
			end
		end
	end
end
function module_2_upvr.getBaseIdFromVariantId(arg1, arg2) -- Line 277
	for i_9, v_9 in arg1._variablePricingData do
		for _, v_10 in v_9 do
			if arg2 == v_10 then
				return i_9
			end
		end
	end
end
function module_2_upvr.getBaseIdFromGenericId(arg1, arg2) -- Line 289
	local any_getVariantIdFromExperimentVariantId_result1 = arg1:getVariantIdFromExperimentVariantId(arg2)
	local var84
	if any_getVariantIdFromExperimentVariantId_result1 then
		var84 = any_getVariantIdFromExperimentVariantId_result1
	end
	local any_getBaseIdFromVariantId_result1 = arg1:getBaseIdFromVariantId(var84)
	if any_getBaseIdFromVariantId_result1 then
		var84 = any_getBaseIdFromVariantId_result1
	end
	return var84
end
function module_2_upvr._connectToEventsServer(arg1) -- Line 303
	--[[ Upvalues[1]:
		[1]: marketplaceServiceWrapper_upvr (readonly)
	]]
	function marketplaceServiceWrapper_upvr.OnServerInvoke(arg1_6, arg2, ...) -- Line 304
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == "getVariantIdForPlayer" then
			return arg1:_getVariantIdForPlayer(...)
		end
	end
end
function module_2_upvr.initServer(arg1) -- Line 311
	arg1:_connectToEventsServer()
	task.spawn(function() -- Line 314
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:_refreshVariablePricingOnInterval()
	end)
end
return module_2_upvr:createWrapper()