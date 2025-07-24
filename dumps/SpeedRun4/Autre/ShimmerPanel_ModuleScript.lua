-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:03
-- Luau version 6, Types version 3
-- Time taken: 0.003684 seconds

local Parent = script.Parent
local Parent_3 = Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ShimmerPanel")
any_extend_result1.validateProps = t.strictInterface({
	AnchorPoint = t.optional(t.Vector2);
	LayoutOrder = t.optional(t.integer);
	Position = t.optional(t.UDim2);
	Size = t.UDim2;
	cornerRadius = t.optional(t.UDim);
	Image = t.optional(t.string);
	imageDimensions = t.optional(t.Vector2);
	imageScale = t.optional(t.number);
	shimmerSpeed = t.optional(t.number);
})
any_extend_result1.defaultProps = {
	cornerRadius = UDim.new(0, 0);
	Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer.png";
	imageDimensions = Vector2.new(219, 250);
	imageScale = 2.5;
	shimmerSpeed = 4;
}
local function _(arg1) -- Line 66, Named "lerpValueToAnimCurve"
	local absolute = math.abs(arg1 - 1)
	if 1 < absolute then
		return 1
	end
	if absolute < 0.5 then
		return math.pow(absolute, 3) * 4
	end
	return 1 - math.pow(absolute * -2 + 2, 3) / 2
end
function any_extend_result1.init(arg1) -- Line 77
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.state = {
		lerpValue = 0;
	}
	arg1.frameRef = Roact_upvr.createRef()
	arg1.lerpValue = 0
end
local withStyle_upvr = require(Parent_3.Core.Style.withStyle)
local UIBloxConfig_upvr = require(Parent_3.UIBloxConfig)
local getClosestRadius_upvr = require(Parent.getClosestRadius)
local Skeleton_upvr = require(Parent_2.Foundation).Skeleton
local lerp_upvr = require(Parent_2.UIBlox.Utility.lerp)
local EventConnection_upvr = require(Parent_2.ReactUtils).EventConnection
local RunService_upvr = game:GetService("RunService")
local TextureScroller_upvr = require(script.Parent.TextureScroller)
function any_extend_result1.render(arg1) -- Line 85
	--[[ Upvalues[9]:
		[1]: withStyle_upvr (readonly)
		[2]: UIBloxConfig_upvr (readonly)
		[3]: getClosestRadius_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: Skeleton_upvr (readonly)
		[6]: lerp_upvr (readonly)
		[7]: EventConnection_upvr (readonly)
		[8]: RunService_upvr (readonly)
		[9]: TextureScroller_upvr (readonly)
	]]
	local imageDimensions_upvr = arg1.props.imageDimensions
	local imageScale = arg1.props.imageScale
	local shimmerSpeed = arg1.props.shimmerSpeed
	local var22_upvw = 0
	if shimmerSpeed ~= 0 then
		var22_upvw = (imageScale + 1) / shimmerSpeed
	end
	local cornerRadius_upvr = arg1.props.cornerRadius
	local AnchorPoint_upvr = arg1.props.AnchorPoint
	local Position_upvr = arg1.props.Position
	local Size_upvr = arg1.props.Size
	local LayoutOrder_upvr = arg1.props.LayoutOrder
	local Image_upvr = arg1.props.Image
	local var30_upvr = imageDimensions_upvr / imageScale
	return withStyle_upvr(function(arg1_2) -- Line 103
		--[[ Upvalues[18]:
			[1]: UIBloxConfig_upvr (copied, readonly)
			[2]: getClosestRadius_upvr (copied, readonly)
			[3]: cornerRadius_upvr (readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: Skeleton_upvr (copied, readonly)
			[6]: AnchorPoint_upvr (readonly)
			[7]: Position_upvr (readonly)
			[8]: Size_upvr (readonly)
			[9]: LayoutOrder_upvr (readonly)
			[10]: arg1 (readonly)
			[11]: lerp_upvr (copied, readonly)
			[12]: EventConnection_upvr (copied, readonly)
			[13]: RunService_upvr (copied, readonly)
			[14]: TextureScroller_upvr (copied, readonly)
			[15]: Image_upvr (readonly)
			[16]: var30_upvr (readonly)
			[17]: imageDimensions_upvr (readonly)
			[18]: var22_upvw (read and write)
		]]
		local Theme_upvr = arg1_2.Theme
		if UIBloxConfig_upvr.useFoundationSkeleton then
			return Roact_upvr.createElement(Skeleton_upvr, {
				radius = getClosestRadius_upvr(arg1_2.Tokens.Semantic.Radius, cornerRadius_upvr);
				AnchorPoint = AnchorPoint_upvr;
				Position = Position_upvr;
				Size = Size_upvr;
				LayoutOrder = LayoutOrder_upvr;
			})
		end
		local var38
		if arg1_2.Settings.ReducedMotion then
			local module_2 = {
				AnchorPoint = AnchorPoint_upvr;
				LayoutOrder = LayoutOrder_upvr;
				BorderSizePixel = 0;
				Position = Position_upvr;
				Size = Size_upvr;
			}
			var38 = Roact_upvr
			var38 = arg1.frameRef
			module_2[var38.Ref] = var38
			local module = {}
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var38 = var38("UICorner", tbl)
				tbl.CornerRadius = cornerRadius_upvr
				local tbl = {}
				var38 = Roact_upvr.createElement
				return var38
			end
			if cornerRadius_upvr == UDim.new(0, 0) or not INLINED() then
				var38 = nil
			end
			module.UICorner = var38
			var38 = Roact_upvr.createElement
			var38 = var38(EventConnection_upvr, {
				callback = function(arg1_3) -- Line 119
					--[[ Upvalues[3]:
						[1]: Theme_upvr (readonly)
						[2]: arg1 (copied, readonly)
						[3]: lerp_upvr (copied, readonly)
					]]
					local BackgroundOnHover = Theme_upvr.BackgroundOnHover
					local var35 = arg1.lerpValue + arg1_3
					if 2.5 < var35 then
						var35 = 0
					end
					arg1.lerpValue = var35
					local current = arg1.frameRef.current
					if current then
						local absolute_2 = math.abs(arg1.lerpValue - 1)
						if 1 < absolute_2 then
							current = 1
						elseif absolute_2 < 0.5 then
							current = math.pow(absolute_2, 3) * 4
						else
							current = 1 - math.pow(absolute_2 * -2 + 2, 3) / 2
						end
						arg1.frameRef.current.BackgroundColor3 = BackgroundOnHover.Color:Lerp(BackgroundOnHover.Color, current)
						arg1.frameRef.current.BackgroundTransparency = lerp_upvr(BackgroundOnHover.Transparency, BackgroundOnHover.Transparency - 0.1, current)
					end
				end;
				event = RunService_upvr.renderStepped;
			})
			module.renderStepped = var38
			return Roact_upvr.createElement("Frame", module_2, module)
		end
		return Roact_upvr.createElement(TextureScroller_upvr, {
			anchorPoint = AnchorPoint_upvr;
			layoutOrder = LayoutOrder_upvr;
			backgroundColor3 = Theme_upvr.PlaceHolder.Color;
			backgroundTransparency = Theme_upvr.PlaceHolder.Transparency;
			cornerRadius = cornerRadius_upvr;
			image = Image_upvr;
			imageRectSize = var30_upvr;
			imageAnchorPoint = Vector2.new(0, 0.5);
			imageTransparency = 0;
			imageRectOffsetStart = Vector2.new(imageDimensions_upvr.X, imageDimensions_upvr.Y / 2);
			imageRectOffsetEnd = Vector2.new(-var30_upvr.X, imageDimensions_upvr.Y / 2);
			imageScrollCycleTime = var22_upvw;
			position = Position_upvr;
			size = Size_upvr;
		})
	end)
end
return any_extend_result1