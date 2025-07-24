-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:02
-- Luau version 6, Types version 3
-- Time taken: 0.005244 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local Impressions = require(Parent.Impressions)
local React_upvr = require(Parent.React)
local Signal_upvr = require(Parent.AppCommonLib).Signal
local ImpressionsVisualizer_upvr = Impressions.ImpressionsVisualizer
local useRouteName_upvr = require(Parent.Navigation).useRouteName
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local Cryo_upvr = require(Parent.Cryo)
local ScreenSizeImpressionsDetector_upvr = Impressions.ScreenSizeImpressionsDetector
return function(arg1) -- Line 23
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: Signal_upvr (readonly)
		[3]: ImpressionsVisualizer_upvr (readonly)
		[4]: useRouteName_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: Cryo_upvr (readonly)
		[7]: ScreenSizeImpressionsDetector_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef({})
	local any_useRef_result1_upvr_2 = React_upvr.useRef(Signal_upvr.new())
	local any_useRef_result1_upvw = React_upvr.useRef(nil)
	if any_useRef_result1_upvw.current == nil then
		any_useRef_result1_upvw.current = ImpressionsVisualizer_upvr.new(arg1.impressionsTag)
	end
	assert(any_useRef_result1_upvw.current, "impressionsVisualizer should always be truthy; check needed for lint")
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState({})
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(arg1.dataUpdatedTimestamp)
	local var7_result1_upvr = useRouteName_upvr()
	local any_useRef_result1_upvr_3 = React_upvr.useRef(arg1.impressionsTag)
	React_upvr.useEffect(function() -- Line 42
		--[[ Upvalues[5]:
			[1]: any_useRef_result1_upvr_3 (readonly)
			[2]: arg1 (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: any_useRef_result1_upvr (readonly)
			[5]: any_useRef_result1_upvw (read and write)
		]]
		if any_useRef_result1_upvr_3.current ~= arg1.impressionsTag then
			any_useRef_result1_upvr_3.current = arg1.impressionsTag
			any_useState_result2_upvr(arg1.dataUpdatedTimestamp)
			any_useRef_result1_upvr.current = {}
			any_useRef_result1_upvw.current:onClearAllImpressions()
			any_useRef_result1_upvw.current:setImpressionsTag(arg1.impressionsTag)
		end
	end, {arg1.impressionsTag})
	React_upvr.useEffect(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: arg1 (readonly)
		]]
		any_useRef_result1_upvr_2.current:fire()
		local var24_upvw
		if arg1.scrollViewPositionChangedSignal then
			var24_upvw = arg1.scrollViewPositionChangedSignal:connect(function() -- Line 59
				--[[ Upvalues[1]:
					[1]: any_useRef_result1_upvr_2 (copied, readonly)
				]]
				any_useRef_result1_upvr_2.current:fire()
			end)
		end
		return function() -- Line 64
			--[[ Upvalues[1]:
				[1]: var24_upvw (read and write)
			]]
			if var24_upvw ~= nil then
				var24_upvw:disconnect()
			end
		end
	end, {arg1.scrollViewPositionChangedSignal})
	React_upvr.useEffect(function() -- Line 71
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: var7_result1_upvr (readonly)
			[4]: any_useRef_result1_upvr_2 (readonly)
			[5]: any_useState_result1_upvr (readonly)
			[6]: any_useState_result2_upvr (readonly)
			[7]: any_useRef_result1_upvr (readonly)
			[8]: any_useRef_result1_upvw (read and write)
		]]
		local var30 = false
		if type(arg1.pageContext) == "table" then
			if Cryo_upvr.List.find(arg1.pageContext, var7_result1_upvr) == nil then
				var30 = false
			else
				var30 = true
			end
		elseif var7_result1_upvr ~= arg1.pageContext then
			var30 = false
		else
			var30 = true
		end
		if var30 then
			any_useRef_result1_upvr_2.current:fire()
			if arg1.dataUpdatedTimestamp ~= any_useState_result1_upvr then
				any_useState_result2_upvr(arg1.dataUpdatedTimestamp)
				any_useRef_result1_upvr.current = {}
				any_useRef_result1_upvw.current:onClearAllImpressions()
			end
		end
	end, {var7_result1_upvr, arg1.pageContext, arg1.dataUpdatedTimestamp, any_useState_result1_upvr, useSelector_upvr(function(arg1_2) -- Line 36
		return arg1_2.ScreenSize
	end)})
	React_upvr.useEffect(function() -- Line 90
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr_2 (readonly)
			[2]: arg1 (readonly)
			[3]: any_useRef_result1_upvw (read and write)
			[4]: any_useState_result2_upvr_2 (readonly)
		]]
		if any_useState_result1_upvr_2 ~= nil and 0 < #any_useState_result1_upvr_2 then
			arg1.sendGameImpressions(any_useState_result1_upvr_2)
			any_useRef_result1_upvw.current:onSendImpressions(any_useState_result1_upvr_2)
			any_useState_result2_upvr_2({})
		end
	end, {any_useState_result1_upvr_2})
	React_upvr.useEffect(function() -- Line 98
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvw (read and write)
		]]
		return function() -- Line 99
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvw (copied, read and write)
			]]
			any_useRef_result1_upvw.current:destroy()
		end
	end, {})
	return React_upvr.createElement(ScreenSizeImpressionsDetector_upvr, {
		onRequestImpressionsSignal = any_useRef_result1_upvr_2.current;
		parentRef = arg1.parentRef;
		filterImpressionFunc = React_upvr.useCallback(function(arg1_3) -- Line 104
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr (readonly)
			]]
			if any_useRef_result1_upvr.current[arg1_3] ~= nil then
				return false
			end
			any_useRef_result1_upvr.current[arg1_3] = true
			return true
		end, {});
		onImpressionsDetected = React_upvr.useCallback(function(arg1_4) -- Line 113
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			if not arg1_4 or #arg1_4 == 0 then
			else
				any_useState_result2_upvr_2(arg1_4)
			end
		end, {});
		impressionsTag = arg1.impressionsTag;
	})
end