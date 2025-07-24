-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:16
-- Luau version 6, Types version 3
-- Time taken: 0.005169 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Parent = Foundation.Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	frequency = 2;
}
local tbl_upvr_2 = {
	scrollBarVisibility = "Auto";
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local Flags_upvr = require(Foundation.Utility.Flags)
local Visibility_upvr = require(Foundation.Enums.Visibility)
local useCursor_upvr = require(Foundation.Providers.Cursor.useCursor)
local ReactOtter_upvr = require(Parent.ReactOtter)
local ControlState_upvr = require(Foundation.Enums.ControlState)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 45, Named "ScrollingFrame"
	--[[ Upvalues[10]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: Flags_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Visibility_upvr (readonly)
		[7]: useCursor_upvr (readonly)
		[8]: ReactOtter_upvr (readonly)
		[9]: tbl_upvr (readonly)
		[10]: ControlState_upvr (readonly)
	]]
	local withDefaults_upvr_result1_upvr = withDefaults_upvr(arg1, tbl_upvr_2)
	local var7_result1_upvr = useTokens_upvr()
	local Common = var7_result1_upvr.Semantic.Color.Common
	local Placeholder_upvr = Common.Placeholder
	if Flags_upvr.FoundationFixVisibleNoneScrollBarThickness then
		Common = React_upvr.useMemo
		Common = Common(function() -- Line 50
			--[[ Upvalues[3]:
				[1]: withDefaults_upvr_result1_upvr (readonly)
				[2]: Visibility_upvr (copied, readonly)
				[3]: var7_result1_upvr (readonly)
			]]
			if withDefaults_upvr_result1_upvr.scrollBarVisibility == Visibility_upvr.None then
				return 0
			end
			return var7_result1_upvr.Size.Size_300
		end, {withDefaults_upvr_result1_upvr.scrollBarVisibility})
	else
		Common = var7_result1_upvr.Size.Size_300
	end
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(1)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2, arg2_2) -- Line 62
		--[[ Upvalues[5]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useAnimatedBinding_result2_upvr (readonly)
			[3]: ReactOtter_upvr (copied, readonly)
			[4]: Placeholder_upvr (readonly)
			[5]: tbl_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr.current then
			task.cancel(any_useRef_result1_upvr.current)
		end
		if arg1_2 then
			any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(Placeholder_upvr.Transparency, tbl_upvr))
		end
		if arg2_2 ~= nil then
			any_useRef_result1_upvr.current = task.delay(arg2_2, function() -- Line 72
				--[[ Upvalues[3]:
					[1]: any_useAnimatedBinding_result2_upvr (copied, readonly)
					[2]: ReactOtter_upvr (copied, readonly)
					[3]: tbl_upvr (copied, readonly)
				]]
				any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(1, tbl_upvr))
			end)
		end
	end, {Placeholder_upvr})
	React_upvr.useEffect(function() -- Line 78
		--[[ Upvalues[3]:
			[1]: withDefaults_upvr_result1_upvr (readonly)
			[2]: any_useCallback_result1_upvr (readonly)
			[3]: ControlState_upvr (copied, readonly)
		]]
		local var29
		if withDefaults_upvr_result1_upvr.scrollBarVisibility == "None" then
			var29 = 0
			any_useCallback_result1_upvr(false, var29)
		else
			if withDefaults_upvr_result1_upvr.scrollBarVisibility == "Always" then
				any_useCallback_result1_upvr(true)
				return
			end
			local var30 = true
			var29 = withDefaults_upvr_result1_upvr.controlState
			if var29 ~= ControlState_upvr.Hover then
				var30 = true
				var29 = withDefaults_upvr_result1_upvr.controlState
				if var29 ~= ControlState_upvr.Selected then
					var29 = withDefaults_upvr_result1_upvr.controlState
					if var29 ~= ControlState_upvr.Pressed then
						var30 = false
					else
						var30 = true
					end
				end
			end
			if withDefaults_upvr_result1_upvr.controlState == ControlState_upvr.Default then
				var29 = 0
			else
				var29 = nil
			end
			any_useCallback_result1_upvr(var30, var29)
		end
	end, {withDefaults_upvr_result1_upvr.scrollBarVisibility, withDefaults_upvr_result1_upvr.controlState})
	local module = {
		AutomaticCanvasSize = withDefaults_upvr_result1_upvr.AutomaticCanvasSize;
		CanvasSize = withDefaults_upvr_result1_upvr.CanvasSize;
		ScrollingDirection = withDefaults_upvr_result1_upvr.ScrollingDirection;
		ScrollBarImageColor3 = Placeholder_upvr.Color3;
		ScrollBarImageTransparency = any_useAnimatedBinding_result1;
		ScrollBarThickness = Common;
		VerticalScrollBarInset = withDefaults_upvr_result1_upvr.VerticalScrollBarInset;
		HorizontalScrollBarInset = withDefaults_upvr_result1_upvr.HorizontalScrollBarInset;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.fromScale(1, 1);
		SelectionImageObject = useCursor_upvr();
	}
	local Change = React_upvr.Change
	if withDefaults_upvr_result1_upvr.scrollBarVisibility == "Auto" then
		function Change(arg1_3) -- Line 114
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr (readonly)
				[2]: withDefaults_upvr_result1_upvr (readonly)
			]]
			any_useCallback_result1_upvr(true, 3)
			if withDefaults_upvr_result1_upvr.onCanvasPositionChanged then
				withDefaults_upvr_result1_upvr.onCanvasPositionChanged(arg1_3)
			end
		end
	else
		Change = withDefaults_upvr_result1_upvr.onCanvasPositionChanged
	end
	module[Change.CanvasPosition] = Change
	module[React_upvr.Change.AbsoluteCanvasSize] = withDefaults_upvr_result1_upvr.onAbsoluteCanvasSizeChanged
	module[React_upvr.Change.AbsoluteWindowSize] = withDefaults_upvr_result1_upvr.onAbsoluteWindowSizeChanged
	module.ref = arg2
	return React_upvr.createElement("ScrollingFrame", module, withDefaults_upvr_result1_upvr.children)
end))