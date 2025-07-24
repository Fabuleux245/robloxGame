-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:27
-- Luau version 6, Types version 3
-- Time taken: 0.008909 seconds

local Parent = script.Parent
local Parent_2 = Parent.Parent
local Cryo_upvr = require(Parent_2.Cryo)
local Roact_upvr = require(Parent_2.Roact)
local isRoact17_upvr = require(Parent.isRoact17)
local tbl_upvr = {
	Horizontal = {};
	Vertical = {};
	Both = {};
}
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("FitFrameOnAxis")
any_extend_result1_upvr.defaultProps = {
	axis = tbl_upvr.Vertical;
	minimumSize = UDim2.new(UDim.new(0, 0), UDim.new(0, 0));
	margin = require(Parent.Rect).square(0);
	FillDirection = Enum.FillDirection.Vertical;
	HorizontalAlignment = Enum.HorizontalAlignment.Left;
	ImageSet = {};
	VerticalAlignment = Enum.VerticalAlignment.Top;
	contentPadding = UDim.new(0, 0);
	textProps = nil;
}
function any_extend_result1_upvr.init(arg1) -- Line 31
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: isRoact17_upvr (readonly)
	]]
	arg1.layoutRef = Roact_upvr.createRef()
	if isRoact17_upvr() then
		local forwardedRef = arg1.props.forwardedRef
		if not forwardedRef then
			forwardedRef = Roact_upvr.createRef()
		end
		arg1.frameRef = forwardedRef
	else
		forwardedRef = arg1.props[Roact_upvr.Ref]
		local var10 = forwardedRef
		if not var10 then
			var10 = Roact_upvr.createRef()
		end
		arg1.frameRef = var10
	end
	function arg1.onResize() -- Line 39
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local current = arg1.layoutRef.current
		local current_2 = arg1.frameRef.current
		if not current_2 or not current then
		else
			current_2.Size = arg1:__getSize(current)
		end
	end
end
function any_extend_result1_upvr.render(arg1) -- Line 50
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var14
	if arg1.props.Size ~= nil then
		var14 = false
	else
		var14 = true
	end
	assert(var14, "Size is not a valid property of FitFrameOnAxis. Did you mean `minimumSize`?")
	var14 = arg1.props
	if not var14[Roact_upvr.Children] then
	end
	var14 = arg1:__getFilteredProps()
	if arg1.props.onActivated then
		local _ = "ImageButton"
	else
	end
	local any_join_result1 = Cryo_upvr.Dictionary.join({}, {
		["$layout"] = Roact_upvr.createElement("UIListLayout", {
			FillDirection = arg1.props.FillDirection;
			HorizontalAlignment = arg1.props.HorizontalAlignment;
			Padding = arg1.props.contentPadding;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = arg1.props.VerticalAlignment;
			[Roact_upvr.Change.AbsoluteContentSize] = arg1.onResize;
			[Roact_upvr.Ref] = arg1.layoutRef;
		});
		["$margin"] = Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, arg1.props.margin.left);
			PaddingRight = UDim.new(0, arg1.props.margin.right);
			PaddingTop = UDim.new(0, arg1.props.margin.top);
			PaddingBottom = UDim.new(0, arg1.props.margin.bottom);
		});
	})
	if arg1.props.textProps then
		return Roact_upvr.createElement("ImageLabel", var14, {
			TextLabel = Roact_upvr.createElement("TextLabel", Cryo_upvr.Dictionary.join(arg1.props.textProps, {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 1);
			}));
			ChildFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 1);
			}, any_join_result1);
		})
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Roact_upvr.createElement("ImageLabel", var14, any_join_result1)
end
function any_extend_result1_upvr.didMount(arg1) -- Line 93
	arg1.onResize()
end
function any_extend_result1_upvr.didUpdate(arg1) -- Line 97
	arg1.onResize()
end
function any_extend_result1_upvr.__getFilteredProps(arg1) -- Line 101
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: any_extend_result1_upvr (readonly)
	]]
	local any_join_result1_2 = Cryo_upvr.Dictionary.join(arg1.props.ImageSet, {
		[Roact_upvr.Ref] = arg1.frameRef;
		[Roact_upvr.Event.Activated] = arg1.props.onActivated;
	})
	for i, _ in pairs(any_extend_result1_upvr.defaultProps) do
		any_join_result1_2[i] = Cryo_upvr.None
	end
	any_join_result1_2.textProps = Cryo_upvr.None
	return Cryo_upvr.Dictionary.join(arg1.props, any_join_result1_2, {
		onActivated = Cryo_upvr.None;
		forwardedRef = Cryo_upvr.None;
		[Roact_upvr.Children] = Cryo_upvr.None;
	})
end
function any_extend_result1_upvr.__getSize(arg1, arg2) -- Line 124
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1.props.axis == tbl_upvr.Both then
		return arg1:__getBothAxisSize(arg2)
	end
	local any___getAxisUDim_result1 = arg1:__getAxisUDim(arg2.AbsoluteContentSize)
	local any___getOtherUDim_result1 = arg1:__getOtherUDim()
	if arg1.props.axis == tbl_upvr.Vertical then
		return UDim2.new(any___getOtherUDim_result1, any___getAxisUDim_result1)
	end
	if arg1.props.axis == tbl_upvr.Horizontal then
		return UDim2.new(any___getAxisUDim_result1, any___getOtherUDim_result1)
	end
end
function any_extend_result1_upvr.__getBothAxisSize(arg1, arg2) -- Line 141
	local minimumSize_2 = arg1.props.minimumSize
	local AbsoluteContentSize = arg2.AbsoluteContentSize
	return UDim2.new(UDim.new(minimumSize_2.X.Scale, AbsoluteContentSize.X + arg1:__getHorizontalMargin()), UDim.new(minimumSize_2.Y.Scale, AbsoluteContentSize.Y + arg1:__getVerticalMargin()))
end
function any_extend_result1_upvr.__getAxisUDim(arg1, arg2) -- Line 151
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var37
	local var38
	if arg1.props.axis == tbl_upvr.Vertical then
		var37 = arg1.props.minimumSize.Y
		var38 = arg2.Y + arg1:__getVerticalMargin()
	elseif arg1.props.axis == tbl_upvr.Horizontal then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var37 = arg1.props.minimumSize.X
		var38 = arg2.X + arg1:__getHorizontalMargin()
	end
	return UDim.new(var37.Scale, math.max(var38, var37.Offset))
end
function any_extend_result1_upvr.__getVerticalMargin(arg1) -- Line 169
	return arg1.props.margin.top + arg1.props.margin.bottom
end
function any_extend_result1_upvr.__getHorizontalMargin(arg1) -- Line 173
	return arg1.props.margin.left + arg1.props.margin.right
end
local function __getOtherUDim(arg1) -- Line 177
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local minimumSize = arg1.props.minimumSize
	if arg1.props.axis == tbl_upvr.Vertical then
		return minimumSize.X
	end
	if arg1.props.axis == tbl_upvr.Horizontal then
		return minimumSize.Y
	end
end
any_extend_result1_upvr.__getOtherUDim = __getOtherUDim
__getOtherUDim = nil
local var40 = __getOtherUDim
if isRoact17_upvr() then
	var40 = Roact_upvr.forwardRef(function(arg1, arg2) -- Line 191
		--[[ Upvalues[3]:
			[1]: Roact_upvr (readonly)
			[2]: any_extend_result1_upvr (readonly)
			[3]: Cryo_upvr (readonly)
		]]
		local module = {}
		module.forwardedRef = arg2
		return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
	end)
else
	var40 = any_extend_result1_upvr
end
var40.Axis = tbl_upvr
return var40