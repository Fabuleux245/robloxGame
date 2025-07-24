-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:24
-- Luau version 6, Types version 3
-- Time taken: 0.011493 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local Roact_upvr = require(Parent.Roact)
local Otter_upvr = require(Parent.Otter)
local Cryo_upvr = require(Parent.Cryo)
local t = require(Parent.t)
local Images = require(Parent.UIBlox).App.ImageSet.Images
local FFlagAXRefactorCatalogItemCard_upvr = require(Parent.AvatarExperienceFlags).FFlagAXRefactorCatalogItemCard
local tbl_7_upvr = {
	frequency = 2;
	dampingRatio = 0.9;
	restingPositionLimit = 0.5;
	restingVelocityLimit = 0.1;
}
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ScrollingAppCarousel")
any_extend_result1_upvr.defaultProps = {
	carouselMargin = 0;
}
local tbl_2 = {
	items = t.table;
	index = t.numberMin(1);
	itemCount = t.number;
	itemWidth = t.numberMin(1);
	itemPadding = t.number;
	carouselMargin = t.number;
	carouselHeight = t.number;
	canvasWidth = t.number;
	styleProps = t.optional(t.table);
	isScrollingDisabled = t.optional(t.boolean);
	onChangeCanvasPosition = t.callback;
}
local any_optional_result1 = t.optional(t.callback)
tbl_2.onRefCallback = any_optional_result1
if FFlagAXRefactorCatalogItemCard_upvr then
	any_optional_result1 = t.optional(t.boolean)
else
	any_optional_result1 = nil
end
tbl_2.shouldExpandToFitContentHeight = any_optional_result1
any_extend_result1_upvr.validateProps = t.strictInterface(tbl_2)
function any_extend_result1_upvr.getScrollState(arg1, arg2, arg3) -- Line 76
	return {
		maxNumOfItemsVisible = math.floor((arg3 + arg2) / (arg1 + arg2));
	}
end
function any_extend_result1_upvr.handleMouseEvent(arg1, arg2, arg3) -- Line 85
	if arg2.UserInputType == Enum.UserInputType.MouseMovement then
		local tbl_3 = {}
		tbl_3.hoveringCarousel = arg3
		arg1:setState(tbl_3)
	end
end
function any_extend_result1_upvr.handleScroll(arg1, arg2) -- Line 93
	local var15
	if arg1.state.animationActive then
	else
		local index = arg1.props.index
		local maxNumOfItemsVisible = arg1.state.maxNumOfItemsVisible
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var15 = maxNumOfItemsVisible
			return var15
		end
		if not arg2 or not INLINED() then
			var15 = -maxNumOfItemsVisible
		end
		var15 = arg1:scrollToIndex
		var15(index, index + var15)
	end
end
function any_extend_result1_upvr.handleResize(arg1, arg2) -- Line 104
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if arg1._isMounted then
		local var18 = arg2.AbsoluteSize.X - 2 * arg1.props.carouselMargin
		arg1:setState(Cryo_upvr.Dictionary.join({
			absoluteWidth = arg2.AbsoluteSize.X;
			carouselWidth = var18;
		}, arg1.getScrollState(arg1.props.itemWidth, arg1.props.itemPadding, var18)))
	end
end
local ArgCheck_upvr = require(Parent.ArgCheck)
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
function any_extend_result1_upvr.scrollToIndex(arg1, arg2, arg3) -- Line 115
	--[[ Upvalues[4]:
		[1]: ArgCheck_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
		[3]: Otter_upvr (readonly)
		[4]: tbl_7_upvr (readonly)
	]]
	ArgCheck_upvr.assert(not arg1.props.isScrollingDisabled, "scrolling should be disabled")
	local var22 = arg1.props.itemWidth + arg1.props.itemPadding
	local var23 = (math.max(math.min(arg3, arg1.props.itemCount - arg1.state.maxNumOfItemsVisible + 1), 1) - 1) * var22
	arg1:destroyMotor()
	arg1:createMotor((arg2 - 1) * var22)
	if UserGameSettings_upvr.ReducedMotion then
		arg1.carouselMotor:setGoal(Otter_upvr.instant(var23))
	else
		arg1.carouselMotor:setGoal(Otter_upvr.spring(var23, tbl_7_upvr))
	end
end
function any_extend_result1_upvr.createMotor(arg1, arg2) -- Line 137
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	arg1.carouselMotor = Otter_upvr.createSingleMotor(arg2)
	arg1.carouselMotor:onStep(function(arg1_2) -- Line 139
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			animationActive = true;
			canvasPosition = Vector2.new(arg1_2, 0);
		})
	end)
	arg1.carouselMotor:onComplete(function() -- Line 145
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:destroyMotor()
		arg1:setState({
			animationActive = false;
		})
	end)
end
function any_extend_result1_upvr.destroyMotor(arg1) -- Line 153
	if arg1.carouselMotor then
		arg1.carouselMotor:destroy()
		arg1.carouselMotor = nil
	end
end
function any_extend_result1_upvr.init(arg1) -- Line 160
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1:setState({
		carouselWidth = 0;
		hoveringCarousel = false;
		animationActive = false;
		canvasPosition = Vector2.new(0, 0);
		maxNumOfItemsVisible = 0;
		absoluteWidth = 0;
	})
	arg1.carouselMotor = nil
	function arg1.onMouseEnter(arg1_3, arg2) -- Line 172
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1._isMounted then
			arg1:handleMouseEvent(arg2, true)
		end
	end
	function arg1.onMouseLeave(arg1_4, arg2) -- Line 178
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1._isMounted then
			arg1:handleMouseEvent(arg2, false)
		end
	end
	arg1.frameRef = Roact_upvr.createRef()
	function arg1.onResize(arg1_5) -- Line 186
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1._isMounted then
			arg1:handleResize(arg1_5)
			if arg1.props.onResize then
				arg1.props.onResize(arg1_5)
			end
		end
	end
	function arg1.scrollLeft() -- Line 195
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1._isMounted then
			arg1:handleScroll(false)
		end
	end
	function arg1.scrollRight() -- Line 201
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1._isMounted then
			arg1:handleScroll(true)
		end
	end
end
function any_extend_result1_upvr.getDerivedStateFromProps(arg1, arg2) -- Line 208
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
	]]
	local maximum = math.max(0, arg2.absoluteWidth - 2 * arg1.carouselMargin)
	return Cryo_upvr.Dictionary.join({
		carouselWidth = maximum;
	}, any_extend_result1_upvr.getScrollState(arg1.itemWidth, arg1.itemPadding, maximum))
end
function any_extend_result1_upvr.didMount(arg1) -- Line 215
	arg1._isMounted = true
	arg1:handleResize(arg1.frameRef:getValue())
end
function any_extend_result1_upvr.didUpdate(arg1, arg2, arg3) -- Line 221
	-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
	if arg1.props.itemCount >= arg2.itemCount then
	else
	end
	if arg1.props.itemWidth == arg2.itemWidth then
		-- KONSTANTWARNING: GOTO [20] #13
	end
	-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 12. Error Block 39 start (CF ANALYSIS FAILED)
	if arg1.props.itemPadding == arg2.itemPadding then
		-- KONSTANTWARNING: GOTO [30] #19
	end
	-- KONSTANTERROR: [19] 12. Error Block 39 end (CF ANALYSIS FAILED)
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 233
	arg1._isMounted = false
	arg1:destroyMotor()
end
local ScrollButton_upvr = require(script.Parent.ScrollButton)
local icons_actions_cycleLeft_upvr = Images["icons/actions/cycleLeft"]
local icons_actions_cycleRight_upvr = Images["icons/actions/cycleRight"]
local AppCarousel_upvr = require(script.Parent.AppCarousel)
function any_extend_result1_upvr.render(arg1) -- Line 238
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: ScrollButton_upvr (readonly)
		[3]: icons_actions_cycleLeft_upvr (readonly)
		[4]: icons_actions_cycleRight_upvr (readonly)
		[5]: FFlagAXRefactorCatalogItemCard_upvr (readonly)
		[6]: AppCarousel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local carouselMargin = arg1.props.carouselMargin
	local carouselHeight = arg1.props.carouselHeight
	local var42
	if arg1.state.hoveringCarousel then
		local isScrollingDisabled = arg1.props.isScrollingDisabled
		local var44 = false
		if 1 < arg1.props.index then
			var44 = not isScrollingDisabled
		end
		local var45 = false
		if arg1.props.index + arg1.state.maxNumOfItemsVisible <= arg1.props.itemCount then
			var45 = not isScrollingDisabled
		end
		if var44 then
			var42 = Roact_upvr.createElement(ScrollButton_upvr, {
				icon = icons_actions_cycleLeft_upvr;
				callback = arg1.scrollLeft;
			})
		end
		if var45 then
		end
	end
	local var48
	if arg1.props.styleProps and arg1.props.styleProps.leftPosition then
		var48 = UDim2.new(0, arg1.props.styleProps.leftPosition, 0, 0)
	else
		var48 = UDim2.fromScale(0, 0)
	end
	local var49
	if arg1.props.styleProps and arg1.props.styleProps.rightPosition then
		var49 = UDim2.new(1, arg1.props.styleProps.rightPosition, 0, 0)
	else
		var49 = UDim2.fromScale(1, 0)
	end
	local module = {
		Size = UDim2.new(1, carouselMargin, 0, carouselHeight);
	}
	local var51
	if FFlagAXRefactorCatalogItemCard_upvr and arg1.props.shouldExpandToFitContentHeight then
		var51 = Enum.AutomaticSize.Y
	else
		var51 = nil
	end
	module.AutomaticSize = var51
	local var52
	var51 = UDim2.fromOffset(-carouselMargin, 0)
	module.Position = var51
	var51 = 1
	module.BackgroundTransparency = var51
	var51 = Roact_upvr.Event.InputBegan
	module[var51] = arg1.onMouseEnter
	var51 = Roact_upvr.Event.InputEnded
	module[var51] = arg1.onMouseLeave
	var51 = Roact_upvr.Change.AbsoluteSize
	module[var51] = arg1.onResize
	var51 = Roact_upvr.Ref
	module[var51] = arg1.frameRef
	var51 = {}
	local tbl = {
		Position = var48;
	}
	var52 = Vector2.new(0, 0)
	tbl.AnchorPoint = var52
	var52 = UDim2.new(0, carouselMargin, 1, 0)
	tbl.Size = var52
	var52 = 1
	tbl.BackgroundTransparency = var52
	var52 = 2
	tbl.ZIndex = var52
	var52 = {}
	var52.ScrollLeftButton = var42
	var51.LeftMargin = Roact_upvr.createElement("Frame", tbl, var52)
	local tbl_6 = {}
	var52 = UDim2.new(1, -2 * carouselMargin, 1, 0)
	tbl_6.Size = var52
	if FFlagAXRefactorCatalogItemCard_upvr and arg1.props.shouldExpandToFitContentHeight then
		var52 = Enum.AutomaticSize.Y
	else
		var52 = nil
	end
	tbl_6.AutomaticSize = var52
	var52 = UDim2.fromOffset(carouselMargin, 0)
	tbl_6.Position = var52
	var52 = 1
	tbl_6.BackgroundTransparency = var52
	var52 = {}
	local tbl_5 = {
		carouselHeight = carouselHeight;
		canvasWidth = arg1.props.canvasWidth;
		items = arg1.props.items;
		onChangeCanvasPosition = arg1.props.onChangeCanvasPosition;
		onRefCallback = arg1.props.onRefCallback;
		canvasPosition = arg1.state.canvasPosition;
	}
	if arg1.props.isScrollingDisabled then
		-- KONSTANTWARNING: GOTO [326] #218
	end
	tbl_5.scrollingAnimationActive = arg1.state.animationActive
	if FFlagAXRefactorCatalogItemCard_upvr then
	else
	end
	tbl_5.shouldExpandToFitContentHeight = nil
	var52.InnerCarouselContent = Roact_upvr.createElement(AppCarousel_upvr, tbl_5)
	var51.Carousel = Roact_upvr.createElement("Frame", tbl_6, var52)
	local tbl_4 = {
		Position = var49;
	}
	var52 = Vector2.new(1, 0)
	tbl_4.AnchorPoint = var52
	var52 = UDim2.new(0, carouselMargin, 1, 0)
	tbl_4.Size = var52
	var52 = 1
	tbl_4.BackgroundTransparency = var52
	var52 = 2
	tbl_4.ZIndex = var52
	var52 = {}
	var52.ScrollRightButton = Roact_upvr.createElement(ScrollButton_upvr, {
		icon = icons_actions_cycleRight_upvr;
		callback = arg1.scrollRight;
	})
	var51.RightMargin = Roact_upvr.createElement("Frame", tbl_4, var52)
	return Roact_upvr.createElement("Frame", module, var51)
end
return any_extend_result1_upvr