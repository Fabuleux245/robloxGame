-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:02
-- Luau version 6, Types version 3
-- Time taken: 0.007530 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Map_upvr = LuauPolyfill.Map
local module_upvr = {}
module_upvr.__index = module_upvr
local Set_upvr = LuauPolyfill.Set
function module_upvr.new(arg1) -- Line 146
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Set_upvr (readonly)
		[3]: Map_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	local var8
	if var8 == nil then
		var8 = {
			viewAreaCoveragePercentThreshold = 0;
		}
	end
	setmetatable_result1._hasInteracted = false
	setmetatable_result1._timers = Set_upvr.new()
	setmetatable_result1._viewableIndices = {}
	setmetatable_result1._viewableItems = Map_upvr.new()
	setmetatable_result1._config = var8
	return setmetatable_result1
end
local clearTimeout_upvr = LuauPolyfill.clearTimeout
function module_upvr.dispose(arg1) -- Line 159
	--[[ Upvalues[1]:
		[1]: clearTimeout_upvr (readonly)
	]]
	arg1._timers:forEach(function(arg1_2) -- Line 163
		--[[ Upvalues[1]:
			[1]: clearTimeout_upvr (copied, readonly)
		]]
		clearTimeout_upvr(arg1_2)
	end)
end
local invariant_upvr = require(Parent.jsUtils.invariant)
local console_upvr = LuauPolyfill.console
local _isViewable_upvw
function module_upvr.computeViewableItems(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 168
	--[[ Upvalues[3]:
		[1]: invariant_upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: _isViewable_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 61 start (CF ANALYSIS FAILED)
	local itemVisiblePercentThreshold = arg1._config.itemVisiblePercentThreshold
	local _config = arg1._config
	local viewAreaCoveragePercentThreshold = _config.viewAreaCoveragePercentThreshold
	local var18
	if viewAreaCoveragePercentThreshold == nil then
		_config = false
	else
		_config = true
	end
	if _config then
		var18 = viewAreaCoveragePercentThreshold
	else
		var18 = itemVisiblePercentThreshold
	end
	if var18 ~= nil then
		if itemVisiblePercentThreshold == nil then
		else
		end
		if viewAreaCoveragePercentThreshold == nil then
		else
		end
		if true == true then
		else
		end
	end
	invariant_upvr(true, "Must set exactly one of itemVisiblePercentThreshold or viewAreaCoveragePercentThreshold")
	if arg2 == 0 then
		return {}
	end
	if arg6 then
		local _ = arg6
	else
		local tbl_3 = {
			first = 1;
		}
		tbl_3.last = arg2
	end
	if arg2 < tbl_3.last then
		console_upvr.warn("Invalid render range computing viewability { renderRange = "..tostring(arg6)..", itemCount = "..tostring(arg2).." }")
		return {}
	end
	-- KONSTANTERROR: [0] 1. Error Block 61 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [124] 96. Error Block 39 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [124] 96. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [81] 62. Error Block 28 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [124.133762]
	-- KONSTANTERROR: [81] 62. Error Block 28 end (CF ANALYSIS FAILED)
end
local setTimeout_upvr = LuauPolyfill.setTimeout
function module_upvr.onUpdate(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 245
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: setTimeout_upvr (readonly)
	]]
	local var28_upvw
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var28_upvw = arg1._hasInteracted
		return var28_upvw
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var28_upvw = arg5(1)
		return var28_upvw
	end
	if var28_upvw and not INLINED_3() or arg2 == 0 or not INLINED_4() then
	else
		var28_upvw = {}
		if arg2 then
			var28_upvw = arg1:computeViewableItems(arg2, arg3, arg4, arg5, arg8)
		end
		if #arg1._viewableIndices == #var28_upvw then
			if Array_upvr.every(arg1._viewableIndices, function(arg1_4, arg2_3) -- Line 278
				--[[ Upvalues[1]:
					[1]: var28_upvw (read and write)
				]]
				local var30
				if arg1_4 ~= var28_upvw[arg2_3] then
					var30 = false
				else
					var30 = true
				end
				return var30
			end) then return end
		end
		arg1._viewableIndices = var28_upvw
		if arg1._config.minimumViewTime then
			local var32_upvw
			var32_upvw = setTimeout_upvr(function() -- Line 289
				--[[ Upvalues[5]:
					[1]: arg1 (readonly)
					[2]: var32_upvw (read and write)
					[3]: var28_upvw (read and write)
					[4]: arg7 (readonly)
					[5]: arg6 (readonly)
				]]
				arg1._timers:delete(var32_upvw)
				arg1:_onUpdateSync(var28_upvw, arg7, arg6)
			end, arg1._config.minimumViewTime)
			arg1._timers:add(var32_upvw)
		else
			arg1:_onUpdateSync(var28_upvw, arg7, arg6)
		end
	end
end
function module_upvr.resetViewableIndices(arg1) -- Line 305
	arg1._viewableIndices = {}
end
function module_upvr.recordInteraction(arg1) -- Line 309
	arg1._hasInteracted = true
end
local Object_upvr = LuauPolyfill.Object
function module_upvr._onUpdateSync(arg1, arg2, arg3, arg4) -- Line 313
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: Map_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	local _viewableItems = arg1._viewableItems
	local any_new_result1 = Map_upvr.new(Array_upvr.map(Array_upvr.filter(arg2, function(arg1_5) -- Line 315
		--[[ Upvalues[2]:
			[1]: Array_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Array_upvr.includes(arg1._viewableIndices, arg1_5)
	end), function(arg1_6) -- Line 319
		--[[ Upvalues[1]:
			[1]: arg4 (readonly)
		]]
		local arg4_result1 = arg4(arg1_6, true)
		return {arg4_result1.key, arg4_result1}
	end))
	local tbl = {}
	for _, v in ipairs(any_new_result1:keys()) do
		if not _viewableItems:has(v) then
			table.insert(tbl, any_new_result1:get(v))
		end
	end
	for i_2, v_2 in ipairs(_viewableItems:keys()) do
		if not any_new_result1:has(v_2) then
			table.insert(tbl, Object_upvr.assign({}, _viewableItems:get(v_2), {
				isViewable = false;
			}))
		end
	end
	if 0 < #tbl then
		arg1._viewableItems = any_new_result1
		local tbl_2 = {}
		i_2 = Array_upvr
		i_2 = any_new_result1:values()
		tbl_2.viewableItems = i_2.from(i_2)
		tbl_2.changed = tbl
		tbl_2.viewabilityConfig = arg1._config
		arg3(tbl_2)
	end
end
local _isEntirelyVisible_upvw
local _getPixelsVisible_upvw
function _isViewable_upvw(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 345, Named "_isViewable"
	--[[ Upvalues[2]:
		[1]: _isEntirelyVisible_upvw (read and write)
		[2]: _getPixelsVisible_upvw (read and write)
	]]
	local var55
	if _isEntirelyVisible_upvw(arg3, arg4, arg5) then
		return true
	end
	var55 = arg4
	local var56 = arg5
	var55 = 100
	if arg1 then
		var56 = _getPixelsVisible_upvw(arg3, var55, var56) / arg5
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var56 = _getPixelsVisible_upvw(arg3, var55, var56) / arg6
	end
	if arg2 > var55 * var56 then
		var55 = false
	else
		var55 = true
	end
	return var55
end
function _getPixelsVisible_upvw(arg1, arg2, arg3) -- Line 362, Named "_getPixelsVisible"
	return math.max(0, math.min(arg2, arg3) - math.max(arg1, 0))
end
function _isEntirelyVisible_upvw(arg1, arg2, arg3) -- Line 367, Named "_isEntirelyVisible"
	local var58 = false
	if 0 <= arg1 then
		var58 = false
		if arg2 <= arg3 then
			if arg1 >= arg2 then
				var58 = false
			else
				var58 = true
			end
		end
	end
	return var58
end
return module_upvr