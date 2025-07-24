-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:59
-- Luau version 6, Types version 3
-- Time taken: 0.004568 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local function new() -- Line 34
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.any_blank_count = 0
	setmetatable_result1.any_blank_ms = 0
	setmetatable_result1.any_blank_speed_sum = 0
	setmetatable_result1.mostly_blank_count = 0
	setmetatable_result1.mostly_blank_ms = 0
	setmetatable_result1.pixels_blank = 0
	setmetatable_result1.pixels_sampled = 0
	setmetatable_result1.pixels_scrolled = 0
	setmetatable_result1.total_time_spent = 0
	setmetatable_result1.sample_count = 0
	return setmetatable_result1
end
tbl_upvr.new = new
local tbl_upvw = {}
local var6_upvw = 10
local var7_upvw
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 98
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: var7_upvw (read and write)
	]]
	local setmetatable_result1_2 = setmetatable({}, module_upvr)
	setmetatable_result1_2._anyBlankStartTime = nil
	setmetatable_result1_2._enabled = false
	setmetatable_result1_2._info = tbl_upvr.new()
	setmetatable_result1_2._mostlyBlankStartTime = nil
	setmetatable_result1_2._samplesStartTime = nil
	setmetatable_result1_2._getFrameMetrics = arg1
	local var10 = var7_upvw
	if var10 then
		if math.random() >= var7_upvw then
			var10 = false
		else
			var10 = true
		end
		setmetatable_result1_2._enabled = var10
	else
		if math.random() >= 0 then
			var10 = false
		else
			var10 = true
		end
		setmetatable_result1_2._enabled = var10
	end
	setmetatable_result1_2:_resetData()
	return setmetatable_result1_2
end
local console_upvr = LuauPolyfill.console
function module_upvr.addListener(arg1) -- Line 115
	--[[ Upvalues[4]:
		[1]: var7_upvw (read and write)
		[2]: console_upvr (readonly)
		[3]: tbl_upvw (read and write)
		[4]: Array_upvr (readonly)
	]]
	if var7_upvw == nil then
		console_upvr.warn("Call `FillRateHelper.setSampleRate` before `addListener`.")
	end
	table.insert(tbl_upvw, arg1)
	return {
		remove = function() -- Line 121, Named "remove"
			--[[ Upvalues[3]:
				[1]: tbl_upvw (copied, read and write)
				[2]: Array_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			tbl_upvw = Array_upvr.filter(tbl_upvw, function(arg1_2) -- Line 122
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				local var14
				if arg1 == arg1_2 then
					var14 = false
				else
					var14 = true
				end
				return var14
			end)
		end;
	}
end
function module_upvr.setSampleRate(arg1) -- Line 129
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	var7_upvw = arg1
end
function module_upvr.setMinSampleCount(arg1) -- Line 133
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	var6_upvw = arg1
end
function module_upvr.activate(arg1) -- Line 137
	if arg1._enabled and arg1._samplesStartTime == nil then
		arg1._samplesStartTime = os.clock()
	end
end
local Object_upvr = LuauPolyfill.Object
function module_upvr.deactivateAndFlush(arg1) -- Line 146
	--[[ Upvalues[4]:
		[1]: var6_upvw (read and write)
		[2]: Object_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: tbl_upvw (read and write)
	]]
	if not arg1._enabled then
	else
		local _samplesStartTime = arg1._samplesStartTime
		if _samplesStartTime == nil then return end
		if arg1._info.sample_count < var6_upvw then
			arg1:_resetData()
			return
		end
		local any_assign_result1_upvr = Object_upvr.assign({}, arg1._info, {
			total_time_spent = os.clock() - _samplesStartTime;
		})
		Array_upvr.forEach(tbl_upvw, function(arg1_3) -- Line 179
			--[[ Upvalues[1]:
				[1]: any_assign_result1_upvr (readonly)
			]]
			return arg1_3(any_assign_result1_upvr)
		end)
		arg1:_resetData()
	end
end
function module_upvr.computeBlankness(arg1, arg2, arg3, arg4) -- Line 185
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
	local var20
	if not arg1._enabled or arg2.getItemCount(arg2.data) == 0 or arg1._samplesStartTime == nil then
		return 0
	end
	local _info_2 = arg1._info
	_info_2.sample_count += 1
	local _info_3 = arg1._info
	_info_3.pixels_sampled += math.round(arg4.visibleLength)
	local _info_4 = arg1._info
	var20 = arg4.dOffset or 0
	_info_4.pixels_scrolled += math.round(math.abs(var20))
	local var25 = os.clock() * 1000
	if arg1._anyBlankStartTime ~= nil then
		local _info_5 = arg1._info
		var20 = var25 - arg1._anyBlankStartTime
		_info_5.any_blank_ms += var20
	end
	arg1._anyBlankStartTime = nil
	if arg1._mostlyBlankStartTime ~= nil then
		local _info = arg1._info
		var20 = var25 - arg1._mostlyBlankStartTime
		_info.mostly_blank_ms += var20
	end
	arg1._mostlyBlankStartTime = nil
	local first = arg3.first
	var20 = arg1._getFrameMetrics(first)
	while first <= arg3.last and not (not var20 or var20.inLayout) do
		var20 = arg1._getFrameMetrics(first)
	end
	if var20 and 1 < first + 1 then
	end
	-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [164] 109. Error Block 42 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [164] 109. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [156] 104. Error Block 20 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [170.1773326]
	-- KONSTANTERROR: [156] 104. Error Block 20 end (CF ANALYSIS FAILED)
end
function module_upvr.enabled(arg1) -- Line 271
	return arg1._enabled
end
function module_upvr._resetData(arg1) -- Line 275
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	arg1._anyBlankStartTime = nil
	arg1._info = tbl_upvr.new()
	arg1._mostlyBlankStartTime = nil
	arg1._samplesStartTime = nil
end
return module_upvr