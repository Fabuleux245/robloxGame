-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:21
-- Luau version 6, Types version 3
-- Time taken: 0.001831 seconds

local Parent = script.Parent.Parent
local xtypeof_upvr = require(Parent.Utility.xtypeof)
local logError_upvr = require(Parent.Logging.logError)
local function setProperty_unsafe_upvr(arg1, arg2, arg3) -- Line 23, Named "setProperty_unsafe"
	arg1[arg2] = arg3
end
local function testPropertyAssignable_upvr(arg1, arg2) -- Line 27, Named "testPropertyAssignable"
	arg1[arg2] = arg1[arg2]
end
local function setProperty_upvr(arg1, arg2, arg3) -- Line 31, Named "setProperty"
	--[[ Upvalues[3]:
		[1]: setProperty_unsafe_upvr (readonly)
		[2]: testPropertyAssignable_upvr (readonly)
		[3]: logError_upvr (readonly)
	]]
	if not pcall(setProperty_unsafe_upvr, arg1, arg2, arg3) then
		if not pcall(testPropertyAssignable_upvr, arg1, arg2) then
			if arg1 == nil then
				logError_upvr("setPropertyNilRef", nil, arg2, tostring(arg3))
			else
				logError_upvr("cannotAssignProperty", nil, arg1.ClassName, arg2)
			end
		end
		logError_upvr("invalidPropertyType", nil, arg1.ClassName, arg2, typeof(arg1[arg2]), typeof(arg3))
	end
end
local Observer_upvr = require(Parent.State.Observer)
local function bindProperty_upvr(arg1, arg2, arg3, arg4) -- Line 51, Named "bindProperty"
	--[[ Upvalues[3]:
		[1]: xtypeof_upvr (readonly)
		[2]: setProperty_upvr (readonly)
		[3]: Observer_upvr (readonly)
	]]
	if xtypeof_upvr(arg3) == "State" then
		local var5_upvw = false
		setProperty_upvr(arg1, arg2, arg3:get(false))
		table.insert(arg4, Observer_upvr(arg3):onChange(function() -- Line 55, Named "updateLater"
			--[[ Upvalues[5]:
				[1]: var5_upvw (read and write)
				[2]: setProperty_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
				[5]: arg3 (readonly)
			]]
			if not var5_upvw then
				var5_upvw = true
				task.defer(function() -- Line 58
					--[[ Upvalues[5]:
						[1]: var5_upvw (copied, read and write)
						[2]: setProperty_upvr (copied, readonly)
						[3]: arg1 (copied, readonly)
						[4]: arg2 (copied, readonly)
						[5]: arg3 (copied, readonly)
					]]
					var5_upvw = false
					setProperty_upvr(arg1, arg2, arg3:get(false))
				end)
			end
		end))
	else
		setProperty_upvr(arg1, arg2, arg3)
	end
end
local cleanup_upvr = require(Parent.Utility.cleanup)
return function(arg1, arg2) -- Line 73, Named "applyInstanceProps"
	--[[ Upvalues[4]:
		[1]: xtypeof_upvr (readonly)
		[2]: bindProperty_upvr (readonly)
		[3]: logError_upvr (readonly)
		[4]: cleanup_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local tbl = {
		self = {};
		descendants = {};
		ancestor = {};
		observer = {};
	}
	local pairs_result1, pairs_result2, pairs_result3 = pairs(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [60] 46. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [60] 46. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 15. Error Block 40 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [60.9]
	if nil == "string" then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [60.7]
		if nil ~= "Parent" then
			-- KONSTANTWARNING: GOTO [60] #46
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil == "SpecialKey" then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [60.11]
			if nil == nil then
			else
			end
		else
		end
	end
	-- KONSTANTERROR: [24] 15. Error Block 40 end (CF ANALYSIS FAILED)
end