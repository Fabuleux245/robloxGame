-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:56
-- Luau version 6, Types version 3
-- Time taken: 0.002371 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local tbl_upvr = {
	linear = Enum.EasingStyle.Linear;
	quadratic = Enum.EasingStyle.Quad;
	cubic = Enum.EasingStyle.Cubic;
}
local function _(arg1) -- Line 35, Named "stopTween"
	if arg1.current then
		arg1.current:Cancel()
		arg1.current = nil
	end
end
local function _(arg1, arg2) -- Line 43, Named "isApproximatelyEqual"
	local var3
	if math.abs(arg1 - arg2) >= 0.001 then
		var3 = false
	else
		var3 = true
	end
	return var3
end
local React_upvr = require(VirtualEvents.Parent.React)
local FFlagEnableEventDetailsNewModalImprovements_upvr = require(VirtualEvents.Flags.FFlagEnableEventDetailsNewModalImprovements)
local TweenService_upvr = game:GetService("TweenService")
return function(arg1) -- Line 47, Named "useAnimation"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: FFlagEnableEventDetailsNewModalImprovements_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: TweenService_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 51
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: FFlagEnableEventDetailsNewModalImprovements_upvr (copied, readonly)
			[3]: any_useRef_result1_upvr (readonly)
			[4]: tbl_upvr (copied, readonly)
			[5]: any_useRef_result1_upvr_2 (readonly)
			[6]: TweenService_upvr (copied, readonly)
		]]
		local startOffset = arg1.startOffset
		local var11 = arg1.endOffset or 0
		local easingStyle = arg1.easingStyle
		if math.abs(startOffset - var11) >= 0.001 then
			easingStyle = false
		else
			easingStyle = true
		end
		if easingStyle then
			if FFlagEnableEventDetailsNewModalImprovements_upvr then
			else
				arg1.setAnimationOffset(var11)
			end
		end
		local NumberValue_upvr = Instance.new("NumberValue")
		NumberValue_upvr.Value = startOffset
		any_useRef_result1_upvr.current = startOffset
		local var14 = tbl_upvr[easingStyle or "quadratic"]
		if not var14 then
			var14 = tbl_upvr.quadratic
		end
		local var15 = any_useRef_result1_upvr_2
		if var15.current then
			var15.current:Cancel()
			var15.current = nil
		end
		any_useRef_result1_upvr_2.current = TweenService_upvr:Create(NumberValue_upvr, TweenInfo.new(arg1.duration or 0.2, var14, Enum.EasingDirection.Out), {
			Value = var11;
		})
		local any_Connect_result1_upvr = NumberValue_upvr:GetPropertyChangedSignal("Value"):Connect(function() -- Line 82
			--[[ Upvalues[3]:
				[1]: NumberValue_upvr (readonly)
				[2]: any_useRef_result1_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local Value = NumberValue_upvr.Value
			local var19
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 6. Error Block 13 start (CF ANALYSIS FAILED)
			if math.abs(Value - any_useRef_result1_upvr.current) >= 0.001 then
				var19 = false
			else
				var19 = true
			end
			if not var19 then
				-- KONSTANTERROR: [22] 17. Error Block 9 start (CF ANALYSIS FAILED)
				var19 = any_useRef_result1_upvr
				var19.current = Value
				var19 = arg1.setAnimationOffset
				var19(Value)
				-- KONSTANTERROR: [22] 17. Error Block 9 end (CF ANALYSIS FAILED)
			end
			-- KONSTANTERROR: [8] 6. Error Block 13 end (CF ANALYSIS FAILED)
		end)
		if any_useRef_result1_upvr_2.current then
			any_useRef_result1_upvr_2.current.Completed:Connect(function() -- Line 91
				--[[ Upvalues[4]:
					[1]: any_Connect_result1_upvr (readonly)
					[2]: NumberValue_upvr (readonly)
					[3]: any_useRef_result1_upvr_2 (copied, readonly)
					[4]: any_useRef_result1_upvr (copied, readonly)
				]]
				any_Connect_result1_upvr:Disconnect()
				NumberValue_upvr:Destroy()
				any_useRef_result1_upvr_2.current = nil
				any_useRef_result1_upvr.current = nil
			end)
			any_useRef_result1_upvr_2.current:Play()
		end
		return function() -- Line 100
			--[[ Upvalues[4]:
				[1]: any_Connect_result1_upvr (readonly)
				[2]: any_useRef_result1_upvr_2 (copied, readonly)
				[3]: NumberValue_upvr (readonly)
				[4]: any_useRef_result1_upvr (copied, readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
			local var23 = any_useRef_result1_upvr_2
			if var23.current then
				var23.current:Cancel()
				var23.current = nil
			end
			NumberValue_upvr:Destroy()
			any_useRef_result1_upvr.current = nil
		end
	end, {arg1.startOffset, arg1.endOffset, arg1.duration, arg1.easingStyle, arg1.setAnimationOffset})
end