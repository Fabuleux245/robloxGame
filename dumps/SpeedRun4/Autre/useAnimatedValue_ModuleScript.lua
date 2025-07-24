-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:58
-- Luau version 6, Types version 3
-- Time taken: 0.004961 seconds

local Parent_3 = script.Parent
local Parent = Parent_3.Parent
local Parent_2 = Parent.Parent
local function _(arg1, arg2) -- Line 54, Named "validateNumber"
	if type(arg1) == "number" then
		return arg1
	end
	return arg2 or 0
end
local React_upvr = require(Parent_2.React)
local ReactOtter_upvr = require(Parent_2.ReactOtter)
local var6_upvr = require(Parent_3.TimingConfigs).presets[require(Parent.Enums.TransitionPreset).Default]
return function(arg1) -- Line 63, Named "useAnimatedValue"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ReactOtter_upvr (readonly)
		[3]: var6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local var10 = arg1
	local var11
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 20. Error Block 3 start (CF ANALYSIS FAILED)
	local Transparency_2 = arg1.Transparency
	-- KONSTANTERROR: [26] 20. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [78] 56. Error Block 124 start (CF ANALYSIS FAILED)
	var11 = 0
	var10.b = var11
	local Transparency = arg1.Transparency
	if type(Transparency) == "number" then
		var11 = Transparency
	else
		var11 = 0
	end
	var10.Transparency = var11
	var11 = React_upvr.useCallback(function(...) -- Line 66
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current ~= nil then
			if type(any_useRef_result1_upvr.current) == "function" then
				any_useRef_result1_upvr.current(...)
				return
			end
			if any_useRef_result1_upvr.current._isMockFunction then
				any_useRef_result1_upvr.current(...)
			end
		end
	end, {any_useRef_result1_upvr})
	local Transparency_2_result1, var12_result2_upvr = Transparency_2(var10, var11)
	var11 = Transparency_2_result1:map(function(arg1_2) -- Line 85
		return {
			Color3 = Color3.new(arg1_2.r, arg1_2.g, arg1_2.b);
			Transparency = arg1_2.Transparency;
		}
	end)
	do
		return var11, function(arg1_3, arg2) -- Line 92
			--[[ Upvalues[4]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: var6_upvr (copied, readonly)
				[3]: var12_result2_upvr (readonly)
				[4]: ReactOtter_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 49 start (CF ANALYSIS FAILED)
			local var19
			if typeof(arg1_3) ~= "table" or not arg1_3.Color3 or arg1_3.Transparency == nil then
				var19 = "Expected target to be a table with Color3 and Transparency fields"
				warn(var19)
				return
			end
			local var20 = any_useRef_result1_upvr
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var19 = arg2.onComplete
				return var19
			end
			if not arg2 or not INLINED() then
				var19 = nil
			end
			var20.current = var19
			if arg2 then
				local tbl = {}
				var19 = arg2.duration
				if not var19 then
					var19 = var6_upvr.duration
				end
				tbl.duration = var19
				tbl.easingStyle = arg2.easingStyle
			else
			end
			if type(arg1_3.Color3.R) == "number" then
				-- KONSTANTWARNING: GOTO [62] #45
			end
			-- KONSTANTERROR: [0] 1. Error Block 49 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [61] 44. Error Block 53 start (CF ANALYSIS FAILED)
			;({}).r = ReactOtter_upvr.ease(0, nil)
			if type(arg1_3.Color3.G) == "number" then
				-- KONSTANTWARNING: GOTO [83] #60
			end
			-- KONSTANTERROR: [61] 44. Error Block 53 end (CF ANALYSIS FAILED)
		end
	end
	-- KONSTANTERROR: [78] 56. Error Block 124 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [107] 79. Error Block 21 start (CF ANALYSIS FAILED)
	var12_result2_upvr = arg1
	-- KONSTANTERROR: [107] 79. Error Block 21 end (CF ANALYSIS FAILED)
end