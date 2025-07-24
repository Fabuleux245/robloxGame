-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:36
-- Luau version 6, Types version 3
-- Time taken: 0.006754 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local RoactFitComponents_upvr = dependencies.RoactFitComponents
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatBubbleContainer")
any_extend_result1.TAIL_WIDTH = 6
any_extend_result1.defaultProps = {
	isIncoming = false;
	hasTail = false;
	padding = 12;
	LayoutOrder = 0;
	isPending = false;
	[Roact_upvr.Change.AbsoluteSize] = function() -- Line 24
	end;
	overrideImageColor = false;
}
function any_extend_result1.init(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(Vector2.new(0, 0))
	arg1.bubbleSize = any_createBinding_result1
	arg1.updateBubbleSize = any_createBinding_result2
end
local UIBlox_upvr = dependencies.UIBlox
local FitFrameOnAxis_upvr = RoactFitComponents_upvr.FitFrameOnAxis
local Rect_new_result1_upvr = Rect.new(10, 10, 11, 11)
function any_extend_result1.render(arg1) -- Line 33
	--[[ Upvalues[5]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FitFrameOnAxis_upvr (readonly)
		[4]: Rect_new_result1_upvr (readonly)
		[5]: RoactFitComponents_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 34
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: FitFrameOnAxis_upvr (copied, readonly)
			[4]: Rect_new_result1_upvr (copied, readonly)
			[5]: RoactFitComponents_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 53 start (CF ANALYSIS FAILED)
		local var27
		if not arg1.props[Roact_upvr.Children] then
		end
		local hasTail_2 = arg1.props.hasTail
		var27 = arg1
		local isIncoming = var27.props.isIncoming
		var27 = arg1.props
		local isPending_2 = var27.isPending
		var27 = nil
		if isIncoming then
			var27 = arg1_2.Theme.UIDefault
			-- KONSTANTWARNING: GOTO [42] #28
		end
		-- KONSTANTERROR: [0] 1. Error Block 53 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 22. Error Block 60 start (CF ANALYSIS FAILED)
		if isPending_2 then
			var27 = arg1_2.Theme.UIMuted
		else
			var27 = arg1_2.Theme.UIEmphasis
		end
		local Color = var27.Color
		local Transparency = var27.Transparency
		if arg1.props.overrideImageColor then
			Color = nil
			if not isPending_2 then
				Transparency = nil
			end
		end
		local var33
		if hasTail_2 then
			if isIncoming then
				var33 = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble.png"
			else
				var33 = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-self.png"
			end
		end
		if not isIncoming or not UDim2.new(0, arg1.TAIL_WIDTH, 0, 0) then
		end
		if isIncoming then
		else
		end
		if not isIncoming or not UDim2.new(0, 0, 0, 0) then
		end
		local module = {}
		local tbl_2 = {}
		if not isIncoming or not Vector2.new(0, 0) then
		end
		tbl_2.AnchorPoint = Vector2.new(1, 0)
		tbl_2.axis = FitFrameOnAxis_upvr.Axis.Both
		tbl_2.BackgroundTransparency = 1
		tbl_2.ImageColor3 = Color
		tbl_2.ImageSet = {
			Image = var33;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect_new_result1_upvr;
		}
		tbl_2.ImageTransparency = Transparency
		tbl_2.margin = RoactFitComponents_upvr.Rect.square(arg1.props.padding)
		tbl_2.Position = UDim2.new(1, -arg1.TAIL_WIDTH, 0, 0)
		tbl_2[Roact_upvr.Change.AbsoluteSize] = function(arg1_6) -- Line 88
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: Roact_upvr (copied, readonly)
			]]
			arg1.updateBubbleSize(arg1_6.AbsoluteSize)
			arg1.props[Roact_upvr.Change.AbsoluteSize](arg1_6)
		end
		module.bubble = Roact_upvr.createElement(FitFrameOnAxis_upvr, tbl_2, {})
		local tbl_3 = {}
		if not isIncoming or not Vector2.new(0, 0) then
		end
		tbl_3.AnchorPoint = Vector2.new(1, 0)
		tbl_3.Size = UDim2.new(0, arg1.TAIL_WIDTH, 0, arg1.TAIL_WIDTH)
		tbl_3.BackgroundTransparency = 1
		tbl_3.ImageColor3 = Color
		tbl_3.Position = UDim2.new(1, 0, 0, 0)
		tbl_3.Image = "rbxasset://textures/ui/LuaChat/9-slice/chat-bubble-self-tip.png"
		tbl_3.ImageTransparency = Transparency
		tbl_3.Visible = hasTail_2
		module.tail = Roact_upvr.createElement("ImageLabel", tbl_3)
		do
			return Roact_upvr.createElement("Frame", {
				Size = arg1.bubbleSize:map(function(arg1_5) -- Line 69
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					return UDim2.new(0, arg1_5.X + arg1.TAIL_WIDTH, 0, arg1_5.Y)
				end);
				LayoutOrder = arg1.props.LayoutOrder;
				BackgroundTransparency = 1;
			}, module)
		end
		-- KONSTANTERROR: [32] 22. Error Block 60 end (CF ANALYSIS FAILED)
	end)
end
return any_extend_result1