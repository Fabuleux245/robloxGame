-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:42
-- Luau version 6, Types version 3
-- Time taken: 0.006896 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local t = dependencies.t
local Cryo_upvr = dependencies.Cryo
local tbl_upvr = {
	Start = -240;
	End = 0;
}
local tbl_upvr_3 = {
	Start = 1;
	End = 0;
}
local tbl_upvr_2 = {
	dampingRatio = 1;
	frequency = 3.5;
}
local function _(arg1, arg2, arg3) -- Line 37, Named "lerp"
	local minimum_3 = math.min(1, math.max(0, arg3))
	return arg1 * (1 - minimum_3) + arg2 * minimum_3
end
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("RefreshScrollingFrameNew")
any_extend_result1_upvr.defaultProps = {
	ScrollingElement = "ScrollingFrame";
	refreshThreshold = 52;
	scrollingElementProps = {};
}
any_extend_result1_upvr.validateProps = t.interface({
	ScrollingElement = t.union(t.string, t.callback, t.table);
	scrollingElementProps = t.optional(t.table);
	refreshThreshold = t.number;
	forwardRef = t.optional(t.table);
	onCanvasPositionChangedCallback = t.optional(t.callback);
	onStatusBarTapped = t.optional(t.callback);
	refresh = t.optional(t.callback);
	[Roact_upvr.Children] = t.optional(t.any);
})
local Otter_upvr = dependencies.Otter
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
function any_extend_result1_upvr.init(arg1) -- Line 66
	--[[ Upvalues[7]:
		[1]: any_extend_result1_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: tbl_upvr_3 (readonly)
		[4]: tbl_upvr (readonly)
		[5]: Otter_upvr (readonly)
		[6]: tbl_upvr_2 (readonly)
		[7]: UserGameSettings_upvr (readonly)
	]]
	arg1.state = {
		isRefreshing = false;
	}
	arg1.startHeight = 0
	arg1.isUserInteracting = false
	local forwardRef = arg1.props.forwardRef
	local var17
	if type(forwardRef) == "function" then
		var17 = false
	else
		var17 = true
	end
	assert(var17, "%s does not support function ref forwarding":format(tostring(any_extend_result1_upvr)))
	local var18 = forwardRef
	if not var18 then
		var17 = Roact_upvr
		var18 = var17.createRef()
	end
	arg1.scrollingFrameRef = var18
	var17 = Roact_upvr
	arg1.spinnerFrameRef = var17.createRef()
	var17 = Roact_upvr
	arg1.spinnerRef = var17.createRef()
	function arg1.updateSpinner(arg1_2) -- Line 87
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: tbl_upvr_3 (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
		]]
		if arg1.spinnerFrameRef.current then
			arg1.spinnerFrameRef.current.Size = UDim2.new(1, 0, 0, arg1_2)
			local var23 = arg1_2 / arg1.props.refreshThreshold
			local minimum_4 = math.min(1, math.max(0, var23))
			arg1.spinnerRef.current.ImageTransparency = tbl_upvr_3.Start * (1 - minimum_4) + tbl_upvr_3.End * minimum_4
			if not arg1.state.isRefreshing then
				local minimum_5 = math.min(1, math.max(0, var23))
				arg1.spinnerRef.current.Rotation = tbl_upvr.Start * (1 - minimum_5) + tbl_upvr.End * minimum_5
			end
		end
	end
	var17 = Otter_upvr
	var17 = 0
	arg1.motor = var17.createSingleMotor(var17)
	arg1.motor:onStep(arg1.updateSpinner)
	function arg1.resetSpinner() -- Line 110
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
			[3]: tbl_upvr_2 (copied, readonly)
		]]
		arg1.motor:setGoal(Otter_upvr.spring(0, tbl_upvr_2))
	end
	function arg1.scrollBack() -- Line 114
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
		]]
		if arg1.scrollingFrameRef.current then
			if UserGameSettings_upvr.ReducedMotion then
				arg1.scrollingFrameRef.current.CanvasPosition = Vector2.new(0, 0)
				return
			end
			arg1.scrollingFrameRef.current:ScrollToTop()
		end
	end
	function arg1.dispatchRefresh() -- Line 124
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
			[3]: tbl_upvr_2 (copied, readonly)
		]]
		local refresh = arg1.props.refresh
		if refresh == nil then
		elseif not arg1.state.isRefreshing then
			arg1:setState({
				isRefreshing = true;
			})
			arg1.motor:setGoal(Otter_upvr.spring(arg1.props.refreshThreshold, tbl_upvr_2))
			local function onRefreshComplete() -- Line 140
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg1.isMounted then
					arg1:setState({
						isRefreshing = false;
					})
					arg1.resetSpinner()
				end
			end
			refresh():andThen(onRefreshComplete, onRefreshComplete)
		end
	end
	function arg1.onInputBegan(arg1_3) -- Line 153
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.isUserInteracting then
			arg1.startHeight = arg1.scrollingFrameRef.current.CanvasPosition.Y
		end
		arg1.isUserInteracting = true
	end
	function arg1.onInputEnded(arg1_4) -- Line 162
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.isUserInteracting = false
		arg1.startHeight = 0
		if arg1.props.refresh ~= nil and arg1.scrollingFrameRef.current then
			local var34 = -arg1.scrollingFrameRef.current.CanvasPosition.Y
			if arg1.props.refreshThreshold < var34 and arg1.startHeight < var34 then
				arg1.dispatchRefresh()
				return
			end
			if 0 < var34 then
				arg1.resetSpinner()
			end
		end
	end
	function arg1.statusBarTapCallback() -- Line 182
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onStatusBarTapped then
			arg1.props.onStatusBarTapped()
		end
		arg1.scrollBack()
	end
	function arg1.onCanvasPositionChanged(arg1_5) -- Line 189
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
		]]
		if arg1.props.onCanvasPositionChangedCallback ~= nil then
			arg1.props.onCanvasPositionChangedCallback(arg1_5)
		end
		if arg1.props.refresh ~= nil and arg1.isUserInteracting and not arg1.state.isRefreshing then
			local var38 = -arg1_5.CanvasPosition.Y
			if 0 <= var38 and var38 <= arg1.props.refreshThreshold then
				arg1.motor:setGoal(Otter_upvr.instant(var38))
			end
		end
	end
	function arg1.onCanvasSizeChanged(arg1_6) -- Line 204
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onCanvasSizeChangedCallback ~= nil then
			arg1.props.onCanvasSizeChangedCallback(arg1_6)
		end
	end
end
function any_extend_result1_upvr.didMount(arg1) -- Line 211
	arg1.isMounted = true
	arg1.resetSpinner()
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 216
	arg1.isMounted = false
	arg1.motor:destroy()
	arg1.motor = nil
end
local withStyle_upvr = UIBlox.Style.withStyle
local Spinner_upvr = require(script.Parent.Spinner)
local any_getIconSize_result1_upvr = UIBlox.App.ImageSet.getIconSize(UIBlox.App.ImageSet.Enum.IconSize.Medium)
local ExternalEventConnection_upvr = require(script.Parent.ExternalEventConnection)
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1_upvr.render(arg1) -- Line 223
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: Spinner_upvr (readonly)
		[5]: any_getIconSize_result1_upvr (readonly)
		[6]: ExternalEventConnection_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
	]]
	local isRefreshing_upvr = arg1.state.isRefreshing
	local var47_upvr = arg1.props[Roact_upvr.Children]
	return withStyle_upvr(function(arg1_7) -- Line 227
		--[[ Upvalues[9]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: Spinner_upvr (copied, readonly)
			[5]: any_getIconSize_result1_upvr (copied, readonly)
			[6]: isRefreshing_upvr (readonly)
			[7]: var47_upvr (readonly)
			[8]: ExternalEventConnection_upvr (copied, readonly)
			[9]: UserInputService_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(arg1.props.ScrollingElement, Cryo_upvr.Dictionary.join({
			[Roact_upvr.Change.CanvasPosition] = arg1.onCanvasPositionChanged;
			[Roact_upvr.Change.CanvasSize] = arg1.onCanvasSizeChanged;
			[Roact_upvr.Ref] = arg1.scrollingFrameRef;
		}, arg1.props.scrollingElementProps), {
			Layout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			SpinnerFrame = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 0);
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				ClipsDescendants = false;
				[Roact_upvr.Ref] = arg1.spinnerFrameRef;
			}, {
				Spinner = Roact_upvr.createElement(Spinner_upvr, {
					Size = UDim2.new(0, any_getIconSize_result1_upvr, 0, any_getIconSize_result1_upvr);
					AnchorPoint = Vector2.new(0.5, 1);
					Position = UDim2.new(0.5, 0, 1, 0);
					isSpinning = isRefreshing_upvr;
					[Roact_upvr.Ref] = arg1.spinnerRef;
				});
			});
			Content = Roact_upvr.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y;
				BackgroundTransparency = 1;
				LayoutOrder = 2;
				Size = UDim2.new(1, 0, 1, 0);
			}, var47_upvr);
			inputBegan = Roact_upvr.createElement(ExternalEventConnection_upvr, {
				event = UserInputService_upvr.InputBegan;
				callback = arg1.onInputBegan;
			});
			inputEnded = Roact_upvr.createElement(ExternalEventConnection_upvr, {
				event = UserInputService_upvr.InputEnded;
				callback = arg1.onInputEnded;
			});
			statusBarTapped = Roact_upvr.createElement(ExternalEventConnection_upvr, {
				event = UserInputService_upvr.StatusBarTapped;
				callback = arg1.statusBarTapCallback;
			});
		})
	end)
end
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 280
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)