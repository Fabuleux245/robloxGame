-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:58
-- Luau version 6, Types version 3
-- Time taken: 0.001852 seconds

local StandardPriority_upvw = require(game:GetService("Chat"):WaitForChild("ClientChatModules"):WaitForChild("ChatConstants")).StandardPriority
if StandardPriority_upvw == nil then
	StandardPriority_upvw = 10
end
local module = {}
module.__index = module
local module_2_upvr = {}
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.RebuildProcessCommandsPriorities(arg1) -- Line 25
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg1.RegisteredPriorites = {}
	local pairs_result1, pairs_result2, pairs_result3 = pairs(arg1.FunctionMap)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 11 start (CF ANALYSIS FAILED)
	if not false then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [25.4]
		table.insert(arg1.RegisteredPriorites, nil)
	end
	-- KONSTANTERROR: [16] 12. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 7. Error Block 2 end (CF ANALYSIS FAILED)
end
function tbl_upvr.HasFunction(arg1, arg2) -- Line 42
	if arg1.RegisteredFunctions[arg2] == nil then
		return false
	end
	return true
end
function tbl_upvr.RemoveFunction(arg1, arg2) -- Line 49
	arg1.RegisteredFunctions[arg2] = nil
	arg1.FunctionMap[arg1.RegisteredFunctions[arg2]][arg2] = nil
	arg1:RebuildProcessCommandsPriorities()
end
function tbl_upvr.AddFunction(arg1, arg2, arg3, arg4) -- Line 56
	--[[ Upvalues[1]:
		[1]: StandardPriority_upvw (read and write)
	]]
	if arg4 == nil then
		local var8 = StandardPriority_upvw
	end
	if arg1.RegisteredFunctions[arg2] then
		error(arg2.." is already in use!")
	end
	arg1.RegisteredFunctions[arg2] = var8
	if arg1.FunctionMap[var8] == nil then
		arg1.FunctionMap[var8] = {}
	end
	arg1.FunctionMap[var8][arg2] = arg3
	arg1:RebuildProcessCommandsPriorities()
end
function tbl_upvr.GetIterator(arg1) -- Line 75
	local var10_upvw = 1
	local var11_upvw
	local var12_upvw
	return function() -- Line 80
		--[[ Upvalues[4]:
			[1]: var10_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: var11_upvw (read and write)
			[4]: var12_upvw (read and write)
		]]
		while true do
			if #arg1.RegisteredPriorites < var10_upvw then return end
			local var13 = arg1.RegisteredPriorites[var10_upvw]
			local next_result1, next_result2 = next(arg1.FunctionMap[var13], var11_upvw)
			var11_upvw = next_result1
			var12_upvw = next_result2
			if var11_upvw == nil then
				var10_upvw += 1
			else
				return var11_upvw, var12_upvw, var13
			end
		end
	end
end
function module_2_upvr.new() -- Line 96
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.RegisteredFunctions = {}
	setmetatable_result1.RegisteredPriorites = {}
	setmetatable_result1.FunctionMap = {}
	return setmetatable_result1
end
function tbl_upvr(arg1) -- Line 107, Named "NewSortedFunctionContainer"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.new()
end
module.NewSortedFunctionContainer = tbl_upvr
return module