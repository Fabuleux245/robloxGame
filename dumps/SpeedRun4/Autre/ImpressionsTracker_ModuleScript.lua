-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:28
-- Luau version 6, Types version 3
-- Time taken: 0.003125 seconds

local Parent = script:FindFirstAncestor("Impressions").Parent
local React_upvr = require(Parent.React)
local Signal_upvr = require(Parent.AppCommonLib).Signal
local ImpressionsVisualizer_upvr = require(script.Parent.ImpressionsVisualizer)
local useRouteName_upvr = require(Parent.Navigation).useRouteName
local ImpressionsDetector_upvr = require(script.Parent.ImpressionsDetector)
return function(arg1) -- Line 27
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: Signal_upvr (readonly)
		[3]: ImpressionsVisualizer_upvr (readonly)
		[4]: useRouteName_upvr (readonly)
		[5]: ImpressionsDetector_upvr (readonly)
	]]
	local any_useRef_result1_upvr_2 = React_upvr.useRef({})
	local any_useRef_result1_upvr_3 = React_upvr.useRef(Signal_upvr.new())
	local any_useRef_result1_upvw = React_upvr.useRef(nil)
	if any_useRef_result1_upvw.current == nil then
		any_useRef_result1_upvw.current = ImpressionsVisualizer_upvr.new(arg1.impressionsTag)
	end
	assert(any_useRef_result1_upvw.current, "impressionsVisualizer should always be truthy; check needed for lint")
	local any_useState_result1_upvr, any_useState_result2_upvr_2 = React_upvr.useState({})
	local any_useState_result1_upvr_2, any_useState_result2_upvr = React_upvr.useState(arg1.dataUpdatedTimestamp)
	local useRouteName_upvr_result1_upvr = useRouteName_upvr()
	local viewPortBounds = arg1.viewPortBounds
	local any_useRef_result1_upvr = React_upvr.useRef(arg1.impressionsTag)
	React_upvr.useEffect(function() -- Line 44
		--[[ Upvalues[5]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: any_useRef_result1_upvr_2 (readonly)
			[5]: any_useRef_result1_upvw (read and write)
		]]
		if any_useRef_result1_upvr.current ~= arg1.impressionsTag then
			any_useRef_result1_upvr.current = arg1.impressionsTag
			any_useState_result2_upvr(arg1.dataUpdatedTimestamp)
			any_useRef_result1_upvr_2.current = {}
			any_useRef_result1_upvw.current:onClearAllImpressions()
			any_useRef_result1_upvw.current:setImpressionsTag(arg1.impressionsTag)
		end
	end, {arg1.impressionsTag})
	React_upvr.useEffect(function() -- Line 54
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr_3 (readonly)
			[2]: arg1 (readonly)
		]]
		any_useRef_result1_upvr_3.current:fire()
		local var21_upvw
		if arg1.scrollViewPositionChangedSignal then
			var21_upvw = arg1.scrollViewPositionChangedSignal:connect(function() -- Line 58
				--[[ Upvalues[1]:
					[1]: any_useRef_result1_upvr_3 (copied, readonly)
				]]
				any_useRef_result1_upvr_3.current:fire()
			end)
		end
		return function() -- Line 63
			--[[ Upvalues[1]:
				[1]: var21_upvw (read and write)
			]]
			if var21_upvw ~= nil then
				var21_upvw:disconnect()
			end
		end
	end, {arg1.scrollViewPositionChangedSignal})
	React_upvr.useEffect(function() -- Line 70
		--[[ Upvalues[7]:
			[1]: useRouteName_upvr_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_useRef_result1_upvr_3 (readonly)
			[4]: any_useState_result1_upvr_2 (readonly)
			[5]: any_useState_result2_upvr (readonly)
			[6]: any_useRef_result1_upvr_2 (readonly)
			[7]: any_useRef_result1_upvw (read and write)
		]]
		local var27
		if useRouteName_upvr_result1_upvr ~= arg1.pageContext then
			var27 = false
		else
			var27 = true
		end
		if var27 then
			any_useRef_result1_upvr_3.current:fire()
			if arg1.dataUpdatedTimestamp ~= any_useState_result1_upvr_2 then
				any_useState_result2_upvr(arg1.dataUpdatedTimestamp)
				any_useRef_result1_upvr_2.current = {}
				any_useRef_result1_upvw.current:onClearAllImpressions()
			end
		end
	end, {useRouteName_upvr_result1_upvr, arg1.pageContext, arg1.dataUpdatedTimestamp, any_useState_result1_upvr_2, viewPortBounds})
	React_upvr.useEffect(function() -- Line 89
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_useRef_result1_upvw (read and write)
			[4]: any_useState_result2_upvr_2 (readonly)
		]]
		if any_useState_result1_upvr ~= nil and 0 < #any_useState_result1_upvr then
			arg1.sendImpressions(any_useState_result1_upvr)
			any_useRef_result1_upvw.current:onSendImpressions(any_useState_result1_upvr)
			any_useState_result2_upvr_2({})
		end
	end, {any_useState_result1_upvr})
	React_upvr.useEffect(function() -- Line 97
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvw (read and write)
		]]
		return function() -- Line 98
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvw (copied, read and write)
			]]
			any_useRef_result1_upvw.current:destroy()
		end
	end, {})
	return React_upvr.createElement(ImpressionsDetector_upvr, {
		parentRef = arg1.parentRef;
		viewPortBounds = viewPortBounds;
		onRequestImpressionsSignal = any_useRef_result1_upvr_3.current;
		filterImpressionFunc = React_upvr.useCallback(function(arg1_2) -- Line 103
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr_2 (readonly)
			]]
			if any_useRef_result1_upvr_2.current[arg1_2] ~= nil then
				return false
			end
			any_useRef_result1_upvr_2.current[arg1_2] = true
			return true
		end, {});
		onImpressionsDetected = React_upvr.useCallback(function(arg1_3) -- Line 112
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			if not arg1_3 or #arg1_3 == 0 then
			else
				any_useState_result2_upvr_2(arg1_3)
			end
		end, {});
		impressionsTag = arg1.impressionsTag;
	})
end