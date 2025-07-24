-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:20
-- Luau version 6, Types version 3
-- Time taken: 0.006338 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local UIBlox = require(Parent.UIBlox)
local any_extend_result1 = Roact_upvr.Component:extend("MediaGalleryFullScreen")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.integer);
	size = t.optional(t.UDim2);
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	items = t.array(t.interface({
		imageId = t.string;
		isYouTubeVideo = t.optional(t.boolean);
	}));
	showIndex = t.optional(t.integer);
	onVideoPlayActivated = t.optional(t.callback);
})
any_extend_result1.defaultProps = {
	size = UDim2.fromScale(1, 1);
	showIndex = 1;
}
local getShowItems_upvr = require(script.Parent.getShowItems)
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 53
	--[[ Upvalues[1]:
		[1]: getShowItems_upvr (readonly)
	]]
	local var10
	if arg2.items ~= arg1.items then
		local var9_result1 = getShowItems_upvr(arg1)
		local tbl = {}
		local items = arg1.items
		tbl.items = items
		tbl.itemsToShow = var9_result1
		if 1 >= #var9_result1 then
			items = false
		else
			items = true
		end
		tbl.showArrows = items
		tbl.focusIndex = math.min(arg2.focusIndex or 1, #var9_result1)
		var10 = tbl
	end
	if arg2.showIndex ~= arg1.showIndex then
		local var14 = var10
		if not var14 then
			var14 = {}
		end
		var10 = var14
		var10.showIndex = arg1.showIndex
		var10.focusIndex = math.min(arg1.showIndex, #arg1.items)
	end
	return var10
end
function any_extend_result1.init(arg1) -- Line 76
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.state = {
		items = nil;
		itemsToShow = nil;
		showArrows = true;
		focusIndex = 1;
		showIndex = 1;
	}
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(UDim2.fromScale(1, 1))
	arg1.itemFrameSize = any_createBinding_result1
	arg1.updateItemFrameSize = any_createBinding_result2
	local any_createBinding_result1_2, any_createBinding_result2_3 = Roact_upvr.createBinding(UDim2.new(0, 96, 1, 0))
	arg1.arrowButtonSize = any_createBinding_result1_2
	arg1.updateArrowButtonSize = any_createBinding_result2_3
	local any_createBinding_result1_4, any_createBinding_result2_4 = Roact_upvr.createBinding(UDim2.new(0.5, 0, 0.5, 0))
	arg1.leftArrowPosition = any_createBinding_result1_4
	arg1.updateLeftArrowPosition = any_createBinding_result2_4
	local any_createBinding_result1_3, any_createBinding_result2_2 = Roact_upvr.createBinding(UDim2.new(0.5, 0, 0.5, 0))
	arg1.rightArrowPosition = any_createBinding_result1_3
	arg1.updateRightArrowPosition = any_createBinding_result2_2
	function arg1.onResize(arg1_2) -- Line 90
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local X_2 = arg1_2.AbsoluteSize.X
		local Y = arg1_2.AbsoluteSize.Y
		local floored = math.floor(Y * 1.7777777777777777)
		if X_2 < floored then
			floored = X_2
			Y = math.floor(floored / 1.7777777777777777)
		end
		arg1.updateItemFrameSize(UDim2.new(0, floored, 0, Y))
	end
	function arg1.onImageResize(arg1_3) -- Line 104
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local X = arg1_3.AbsoluteSize.X
		arg1.updateLeftArrowPosition(UDim2.new(0.5, -X / 2, 0.5, 0))
		arg1.updateRightArrowPosition(UDim2.new(0.5, X / 2, 0.5, 0))
		arg1.updateArrowButtonSize(UDim2.new(0, 96, 0, arg1_3.AbsoluteSize.Y))
	end
	function arg1.onUserInputBegan(arg1_4) -- Line 113
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_4.UserInputType ~= Enum.UserInputType.Keyboard then
		else
			if arg1_4.KeyCode == Enum.KeyCode.Left and 1 < arg1.state.focusIndex then
				arg1.showPreviousItem()
				return
			end
			if arg1_4.KeyCode == Enum.KeyCode.Right then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if arg1.state.focusIndex < #arg1.props.items then
					arg1.showNextItem()
				end
			end
		end
	end
	function arg1.showPreviousItem() -- Line 128
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var32 = arg1.state.focusIndex - 1
		if var32 < 1 then
			var32 = 1
		end
		arg1:setState({
			focusIndex = var32;
		})
	end
	function arg1.showNextItem() -- Line 139
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local len = #arg1.props.items
		local var36 = arg1.state.focusIndex + 1
		if len < var36 then
			var36 = len
		end
		arg1:setState({
			focusIndex = var36;
		})
	end
	function arg1.cycleNext() -- Line 151
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var39 = arg1.state.focusIndex + 1
		if #arg1.props.items < var39 then
			var39 = 1
		end
		arg1:setState({
			focusIndex = var39;
		})
	end
	function arg1.onVideoPlayActivated(arg1_5) -- Line 163
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onVideoPlayActivated then
			arg1.props.onVideoPlayActivated(arg1.state.itemsToShow[arg1_5].originalIndex)
		end
	end
end
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local function renderArrowButton_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 172, Named "renderArrowButton"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: IconButton_upvr (readonly)
		[3]: Images_upvr (readonly)
	]]
	local module = {}
	module.Size = arg6
	module.AnchorPoint = arg4
	module.Position = arg5
	module.BorderSizePixel = 0
	module.BackgroundTransparency = 1
	module.ZIndex = 100
	local module_2 = {}
	local tbl_2 = {
		size = UDim2.fromScale(1, 1);
		icon = Images_upvr[arg2];
		showBackground = true;
		backgroundTransparency = 1;
	}
	tbl_2.isDisabled = arg3
	tbl_2.onActivated = arg7
	module_2.ArrowButton = Roact_upvr.createElement(IconButton_upvr, tbl_2)
	return Roact_upvr.createElement("Frame", module, module_2)
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
function any_extend_result1.render(arg1) -- Line 192
	--[[ Upvalues[1]:
		[1]: withStyle_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_6) -- Line 193
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithProvider(arg1_6)
	end)
end
local ThumbnailButton_upvr = require(script.Parent.ThumbnailButton)
local EventConnection_upvr = require(Parent.ReactUtils).EventConnection
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.renderWithProvider(arg1, arg2) -- Line 198
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: renderArrowButton_upvr (readonly)
		[3]: ThumbnailButton_upvr (readonly)
		[4]: EventConnection_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
	local focusIndex = arg1.state.focusIndex
	local var54
	if focusIndex > 1 then
		var54 = false
	else
		var54 = true
	end
	if #arg1.state.itemsToShow > focusIndex then
		-- KONSTANTWARNING: GOTO [39] #24
	end
	-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 23. Error Block 41 start (CF ANALYSIS FAILED)
	local tbl_3 = {
		LayoutOrder = arg1.props.layoutOrder;
		Size = arg1.props.size;
		AnchorPoint = arg1.props.anchorPoint;
		Position = arg1.props.position;
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		[Roact_upvr.Change.AbsoluteSize] = arg1.onResize;
	}
	if arg1.state.showArrows then
		-- KONSTANTWARNING: GOTO [87] #57
	end
	-- KONSTANTERROR: [38] 23. Error Block 41 end (CF ANALYSIS FAILED)
end
return any_extend_result1