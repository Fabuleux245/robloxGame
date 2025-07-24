-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:04
-- Luau version 6, Types version 3
-- Time taken: 0.003302 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local function _(arg1) -- Line 16, Named "floorVector2"
	return Vector2.new(math.floor(arg1.X), math.floor(arg1.Y))
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("TextureScroller")
any_extend_result1.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2);
	layoutOrder = t.optional(t.integer);
	backgroundColor3 = t.optional(t.Color3);
	backgroundTransparency = t.optional(t.number);
	position = t.optional(t.UDim2);
	cornerRadius = t.optional(t.UDim);
	image = t.string;
	imageTransparency = t.optional(t.number);
	imageAnchorPoint = t.optional(t.Vector2);
	imageRectOffsetStart = t.Vector2;
	imageRectOffsetEnd = t.Vector2;
	imageScrollCycleTime = t.optional(t.number);
	imageRectSize = t.Vector2;
	size = t.optional(t.UDim2);
})
any_extend_result1.defaultProps = {
	backgroundTransparency = 1;
	cornerRadius = UDim.new(0, 0);
	imageAnchorPoint = Vector2.new(0, 0);
	imageScrollCycleTime = 1;
}
function any_extend_result1.init(arg1) -- Line 61
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.lerpValue = 0
	arg1.imageRef = Roact_upvr.createRef()
	function arg1.renderSteppedCallback(arg1_2) -- Line 65
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local imageScrollCycleTime = arg1.props.imageScrollCycleTime
		local imageRectOffsetStart = arg1.props.imageRectOffsetStart
		local imageRectOffsetEnd = arg1.props.imageRectOffsetEnd
		local imageRectSize = arg1.props.imageRectSize
		local imageAnchorPoint = arg1.props.imageAnchorPoint
		local var14 = 0
		if imageScrollCycleTime ~= 0 then
			var14 = arg1_2 / imageScrollCycleTime
		end
		arg1.lerpValue = (arg1.lerpValue + var14) % 1
		if arg1.imageRef.current then
			local any_lerp_result1 = Vector2.new(imageRectOffsetStart.X - imageAnchorPoint.X * imageRectSize.X, imageRectOffsetStart.Y - imageAnchorPoint.Y * imageRectSize.Y):lerp(Vector2.new(imageRectOffsetEnd.X - imageAnchorPoint.X * imageRectSize.X, imageRectOffsetEnd.Y - imageAnchorPoint.Y * imageRectSize.Y), arg1.lerpValue)
			arg1.imageRef.current.ImageRectOffset = Vector2.new(math.floor(any_lerp_result1.X), math.floor(any_lerp_result1.Y))
		end
	end
end
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
local EventConnection_upvr = require(Parent.ReactUtils).EventConnection
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.render(arg1) -- Line 93
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetComponent_upvr (readonly)
		[3]: EventConnection_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local cornerRadius = arg1.props.cornerRadius
	local imageRectSize_2 = arg1.props.imageRectSize
	local module = {}
	local tbl_2 = {}
	local var25
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var25 = var25("UICorner", tbl_4)
		tbl_4.CornerRadius = cornerRadius
		local tbl_4 = {}
		var25 = Roact_upvr.createElement
		return var25
	end
	if cornerRadius == UDim.new(0, 0) or not INLINED() then
		var25 = nil
	end
	tbl_2.UICorner = var25
	module.TextureScrollerImage = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
		BackgroundTransparency = 1;
		Image = arg1.props.image;
		ImageTransparency = arg1.props.imageTransparency;
		Size = UDim2.new(1, 0, 1, 0);
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(0, 0, imageRectSize_2.X, imageRectSize_2.Y);
		[Roact_upvr.Ref] = arg1.imageRef;
		ImageRectSize = imageRectSize_2;
	}, tbl_2)
	local tbl = {
		callback = arg1.renderSteppedCallback;
	}
	var25 = RunService_upvr
	tbl.event = var25.renderStepped
	module.renderStepped = Roact_upvr.createElement(EventConnection_upvr, tbl)
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		tbl_3.CornerRadius = cornerRadius
		local tbl_3 = {}
		return Roact_upvr.createElement("UICorner", tbl_3)
	end
	if cornerRadius == UDim.new(0, 0) or not INLINED_2() then
	end
	module.UICorner = nil
	return Roact_upvr.createElement("Frame", {
		AnchorPoint = arg1.props.anchorPoint;
		BackgroundColor3 = arg1.props.backgroundColor3;
		BackgroundTransparency = arg1.props.backgroundTransparency;
		BorderSizePixel = 0;
		LayoutOrder = arg1.props.layoutOrder;
		Position = arg1.props.position;
		Size = arg1.props.size;
	}, module)
end
return any_extend_result1