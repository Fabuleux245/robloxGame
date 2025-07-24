-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:51
-- Luau version 6, Types version 3
-- Time taken: 0.006936 seconds

game:DefineFastInt("ScrollDetectorTimeThresholdMillis", 300000)
game:DefineFastInt("ScrollDetectorDelayMillis", 250)
local function _() -- Line 9, Named "getDelaySeconds"
	return game:GetFastInt("ScrollDetectorDelayMillis") / 1000
end
local function _() -- Line 13, Named "getThresholdSeconds"
	return game:GetFastInt("ScrollDetectorTimeThresholdMillis") / 1000
end
local React_upvr = require(script:FindFirstAncestor("ScrollTelemetry").Parent.React)
local RunService_upvr = game:GetService("RunService")
return function(arg1) -- Line 22
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	local any_useRef_result1_upvr_7 = React_upvr.useRef(0)
	local any_useRef_result1_upvr_3 = React_upvr.useRef(0)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_5 = React_upvr.useRef(0)
	local any_useRef_result1_upvr_4 = React_upvr.useRef(0)
	local function _(arg1_2) -- Line 31
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr_7 (readonly)
			[2]: any_useRef_result1_upvr_3 (readonly)
			[3]: arg1 (readonly)
			[4]: any_useRef_result1_upvr_5 (readonly)
		]]
		local var10 = any_useRef_result1_upvr_7.current - any_useRef_result1_upvr_3.current
		if var10 == 0 then
		else
			arg1.sendScrollEvent(var10, arg1_2 - any_useRef_result1_upvr_5.current, any_useRef_result1_upvr_3.current)
		end
	end
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local function var11_upvr() -- Line 40
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: any_useRef_result1_upvr_4 (readonly)
			[3]: any_useRef_result1_upvr_7 (readonly)
			[4]: any_useRef_result1_upvr_3 (readonly)
			[5]: any_useRef_result1_upvr_5 (readonly)
			[6]: any_useRef_result1_upvr (readonly)
			[7]: any_useRef_result1_upvr_2 (readonly)
		]]
		if not arg1.scrollingFrameRef or not arg1.scrollingFrameRef.current then
			local var13 = any_useRef_result1_upvr_7.current - any_useRef_result1_upvr_3.current
			if var13 == 0 then
			else
				arg1.sendScrollEvent(var13, any_useRef_result1_upvr_4.current - any_useRef_result1_upvr_5.current, any_useRef_result1_upvr_3.current)
			end
			if any_useRef_result1_upvr.current then
				any_useRef_result1_upvr.current:Disconnect()
			end
			any_useRef_result1_upvr.current = nil
		else
			local time_result1 = time()
			local var15
			if arg1.scrollingFrameRef and arg1.scrollingFrameRef.current then
				if arg1.scrollingFrameRef.current.ScrollingDirection == Enum.ScrollingDirection.Y then
					var15 = arg1.scrollingFrameRef.current.CanvasPosition.Y
				else
					var15 = arg1.scrollingFrameRef.current.CanvasPosition.X
				end
			end
			local var16 = any_useRef_result1_upvr_7.current - any_useRef_result1_upvr_3.current
			local var17 = var15 - any_useRef_result1_upvr_7.current
			if not any_useRef_result1_upvr_2.current and var17 == 0 then
				any_useRef_result1_upvr_2.current = any_useRef_result1_upvr_4.current
			elseif any_useRef_result1_upvr_2.current and var17 ~= 0 then
				any_useRef_result1_upvr_2.current = nil
			end
			if any_useRef_result1_upvr_2.current and any_useRef_result1_upvr_2.current + game:GetFastInt("ScrollDetectorDelayMillis") / 1000 < time_result1 then
				any_useRef_result1_upvr_7.current = var15
				local var18 = any_useRef_result1_upvr_7.current - any_useRef_result1_upvr_3.current
				if var18 == 0 then
				else
					arg1.sendScrollEvent(var18, any_useRef_result1_upvr_2.current - any_useRef_result1_upvr_5.current, any_useRef_result1_upvr_3.current)
				end
				any_useRef_result1_upvr_3.current = var15
				local current = any_useRef_result1_upvr.current
				if current then
					current:Disconnect()
				end
				any_useRef_result1_upvr.current = nil
				return
			end
			if var16 ~= 0 and var17 ~= 0 and math.sign(var16) ~= math.sign(var17) then
				local var20 = any_useRef_result1_upvr_7.current - any_useRef_result1_upvr_3.current
				if var20 == 0 then
				else
					arg1.sendScrollEvent(var20, any_useRef_result1_upvr_4.current - any_useRef_result1_upvr_5.current, any_useRef_result1_upvr_3.current)
				end
				any_useRef_result1_upvr_3.current = any_useRef_result1_upvr_7.current
				any_useRef_result1_upvr_5.current = any_useRef_result1_upvr_4.current
			elseif not any_useRef_result1_upvr_2.current and game:GetFastInt("ScrollDetectorTimeThresholdMillis") / 1000 <= time_result1 - any_useRef_result1_upvr_5.current then
				any_useRef_result1_upvr_7.current = var15
				local var21 = any_useRef_result1_upvr_7.current - any_useRef_result1_upvr_3.current
				if var21 == 0 then
				else
					arg1.sendScrollEvent(var21, time_result1 - any_useRef_result1_upvr_5.current, any_useRef_result1_upvr_3.current)
				end
				any_useRef_result1_upvr_3.current = var15
				any_useRef_result1_upvr_5.current = time_result1
			end
			any_useRef_result1_upvr_7.current = var15
			any_useRef_result1_upvr_4.current = time_result1
		end
	end
	local function var22_upvr() -- Line 105
		--[[ Upvalues[7]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useRef_result1_upvr_5 (readonly)
			[3]: any_useRef_result1_upvr_4 (readonly)
			[4]: any_useRef_result1_upvr_3 (readonly)
			[5]: any_useRef_result1_upvr_7 (readonly)
			[6]: RunService_upvr (copied, readonly)
			[7]: var11_upvr (readonly)
		]]
		if not any_useRef_result1_upvr.current then
			any_useRef_result1_upvr_5.current = time()
			any_useRef_result1_upvr_4.current = any_useRef_result1_upvr_5.current
			any_useRef_result1_upvr_3.current = any_useRef_result1_upvr_7.current
			any_useRef_result1_upvr.current = RunService_upvr.Stepped:Connect(function() -- Line 111
				--[[ Upvalues[1]:
					[1]: var11_upvr (copied, readonly)
				]]
				var11_upvr()
			end)
		end
	end
	local any_useRef_result1_upvr_6 = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 117
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: any_useRef_result1_upvr_6 (readonly)
			[3]: any_useRef_result1_upvr_7 (readonly)
			[4]: var22_upvr (readonly)
			[5]: any_useRef_result1_upvr (readonly)
			[6]: any_useRef_result1_upvr_4 (readonly)
			[7]: any_useRef_result1_upvr_3 (readonly)
			[8]: any_useRef_result1_upvr_5 (readonly)
		]]
		local var26_upvw
		if arg1.scrollingFrameRef and arg1.scrollingFrameRef.current and any_useRef_result1_upvr_6.current ~= arg1.scrollingFrameRef.current then
			local scrollingFrameRef = arg1.scrollingFrameRef
			if scrollingFrameRef.current.ScrollingDirection == Enum.ScrollingDirection.Y then
				scrollingFrameRef = arg1.scrollingFrameRef.current.CanvasPosition.Y
			else
				scrollingFrameRef = arg1.scrollingFrameRef.current.CanvasPosition.X
			end
			any_useRef_result1_upvr_7.current = scrollingFrameRef
			var26_upvw = arg1.scrollingFrameRef.current:GetPropertyChangedSignal("CanvasPosition"):Connect(function() -- Line 130
				--[[ Upvalues[1]:
					[1]: var22_upvr (copied, readonly)
				]]
				var22_upvr()
			end)
			any_useRef_result1_upvr_6.current = arg1.scrollingFrameRef.current
		end
		return function() -- Line 137
			--[[ Upvalues[8]:
				[1]: any_useRef_result1_upvr (copied, readonly)
				[2]: any_useRef_result1_upvr_4 (copied, readonly)
				[3]: any_useRef_result1_upvr_7 (copied, readonly)
				[4]: any_useRef_result1_upvr_3 (copied, readonly)
				[5]: arg1 (copied, readonly)
				[6]: any_useRef_result1_upvr_5 (copied, readonly)
				[7]: var26_upvw (read and write)
				[8]: any_useRef_result1_upvr_6 (copied, readonly)
			]]
			if any_useRef_result1_upvr.current then
				local var30 = any_useRef_result1_upvr_7.current - any_useRef_result1_upvr_3.current
				if var30 == 0 then
				else
					arg1.sendScrollEvent(var30, any_useRef_result1_upvr_4.current - any_useRef_result1_upvr_5.current, any_useRef_result1_upvr_3.current)
				end
				any_useRef_result1_upvr.current:Disconnect()
			end
			any_useRef_result1_upvr.current = nil
			if var26_upvw then
				var26_upvw:Disconnect()
			end
			var26_upvw = nil
			if not arg1.scrollingFrameRef or not arg1.scrollingFrameRef.current then
				any_useRef_result1_upvr_6.current = nil
			end
		end
	end, {arg1.scrollingFrameRef})
	return nil
end