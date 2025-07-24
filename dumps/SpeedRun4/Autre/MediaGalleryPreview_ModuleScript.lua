-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:21
-- Luau version 6, Types version 3
-- Time taken: 0.020298 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local Otter_upvr = require(Parent.Otter)
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local t = require(Parent.t)
local any_getIconSize_result1_upvr = UIBlox.App.ImageSet.getIconSize(UIBlox.App.ImageSet.Enum.IconSize.Medium)
local tbl_4_upvr = {
	frequency = 4;
	dampingRatio = 1;
}
local any_extend_result1 = Roact_upvr.Component:extend("MediaGalleryPreview")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.integer);
	size = t.optional(t.UDim2);
	fullWidth = t.optional(t.boolean);
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	items = t.array(t.strictInterface({
		imageId = t.string;
		isYouTubeVideo = t.optional(t.boolean);
	}));
	numberOfThumbnails = t.optional(t.integer);
	onPreviewActivated = t.optional(t.callback);
	onThumbnailActivated = t.optional(t.callback);
	onVideoPlayActivated = t.optional(t.callback);
})
any_extend_result1.defaultProps = {
	size = UDim2.fromScale(1, 1);
	numberOfThumbnails = 5;
	fullWidth = false;
}
local getShowItems_upvr = require(script.Parent.getShowItems)
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 79
	--[[ Upvalues[1]:
		[1]: getShowItems_upvr (readonly)
	]]
	if arg2.items == arg1.items and arg2.numberOfThumbnails == arg1.numberOfThumbnails then return end
	local var12_result1, var12_result2, getShowItems_upvr_result3 = getShowItems_upvr(arg1)
	local module_3 = {
		items = arg1.items;
	}
	local numberOfThumbnails_2 = arg1.numberOfThumbnails
	module_3.numberOfThumbnails = numberOfThumbnails_2
	module_3.itemsToShow = var12_result1
	module_3.youTubeVideoItemsSize = var12_result2
	module_3.imageItemsSize = getShowItems_upvr_result3
	if 1 >= getShowItems_upvr_result3 then
		numberOfThumbnails_2 = false
	else
		numberOfThumbnails_2 = true
	end
	module_3.animationOn = numberOfThumbnails_2
	module_3.animatedIndex = var12_result2 + 1
	module_3.selectedIndex = var12_result2 + 1
	return module_3
end
function any_extend_result1.init(arg1) -- Line 97
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	arg1.state = {
		items = nil;
		numberOfThumbnails = 1;
		itemsToShow = nil;
		youTubeVideoItemsSize = 0;
		imageItemsSize = 0;
		animationOn = false;
		animatedIndex = 1;
		selectedIndex = 1;
		showArrows = false;
		focusIndex = 1;
	}
	arg1.animationTime = 0
	arg1.scrolling = false
	arg1.scrollMotor = Otter_upvr.createSingleMotor(0)
	local any_createBinding_result1_2, any_createBinding_result2_3 = Roact_upvr.createBinding(UDim2.fromScale(1, 1))
	arg1.contentSize = any_createBinding_result1_2
	arg1.updateContentSize = any_createBinding_result2_3
	local any_createBinding_result1_5, any_createBinding_result2 = Roact_upvr.createBinding(UDim2.fromScale(1, 0.5))
	arg1.previewSize = any_createBinding_result1_5
	arg1.updatePreviewSize = any_createBinding_result2
	local any_createBinding_result1, any_createBinding_result2_5 = Roact_upvr.createBinding(UDim2.fromScale(1, 0.5))
	arg1.paginationSize = any_createBinding_result1
	arg1.updatePaginationSize = any_createBinding_result2_5
	local any_createBinding_result1_3, any_createBinding_result2_2 = Roact_upvr.createBinding(UDim2.fromScale(0, 0))
	arg1.thumbnailSize = any_createBinding_result1_3
	arg1.updateThumbnailSize = any_createBinding_result2_2
	local any_createBinding_result1_7, any_createBinding_result2_4 = Roact_upvr.createBinding(Vector2.new(0, 0))
	arg1.canvasPosition = any_createBinding_result1_7
	arg1.updateCanvasPosition = any_createBinding_result2_4
	local any_createBinding_result1_6, any_createBinding_result2_6 = Roact_upvr.createBinding(0)
	arg1.progress = any_createBinding_result1_6
	arg1.updateProgress = any_createBinding_result2_6
	local any_createBinding_result1_4, any_createBinding_result2_7 = Roact_upvr.createBinding(0)
	arg1.previewTransparency = any_createBinding_result1_4
	arg1.updatePreviewTransparency = any_createBinding_result2_7
	function arg1.onResize(arg1_2) -- Line 124
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:updateSizes(arg1_2)
		arg1.updateCanvasPosition(Vector2.new(arg1:getCanvasPositionX(), 0))
	end
	function arg1.onMouseLeave(arg1_3, arg2) -- Line 129
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType ~= Enum.UserInputType.MouseMovement then
		else
			arg1.resetAnimation()
			arg1:setState(function(arg1_4) -- Line 135
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				local selectedIndex = arg1_4.selectedIndex
				local module_4 = {}
				local var38
				if 1 >= arg1_4.imageItemsSize then
					var38 = false
				else
					var38 = true
				end
				module_4.animationOn = var38
				module_4.animatedIndex = selectedIndex
				module_4.focusIndex = arg1.getNextFocusIndex(selectedIndex)
				return module_4
			end)
		end
	end
	function arg1.onPreviewActivated() -- Line 147
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.resetAnimation()
		arg1:setState({
			animationOn = false;
		})
		if arg1.props.onPreviewActivated then
			arg1.props.onPreviewActivated(arg1.state.itemsToShow[arg1.state.selectedIndex].originalIndex)
		end
	end
	function arg1.onMouseEnterPagination(arg1_5, arg2) -- Line 162
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType ~= Enum.UserInputType.MouseMovement then
		else
			arg1:setState(function(arg1_6) -- Line 167
				if arg1_6.showArrows then return end
				return {
					showArrows = true;
				}
			end)
		end
	end
	function arg1.onMouseLeavePagination(arg1_7, arg2) -- Line 178
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType ~= Enum.UserInputType.MouseMovement then
		else
			arg1:setState(function(arg1_8) -- Line 183
				if not arg1_8.showArrows then return end
				return {
					showArrows = false;
				}
			end)
		end
	end
	function arg1.onCycleLeftActivated() -- Line 194
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.scrolling then
		else
			arg1.resetAnimation()
			arg1:setState({
				animationOn = false;
				focusIndex = math.max(arg1.state.focusIndex - 1, 1);
			})
		end
	end
	function arg1.onCycleRightActivated() -- Line 208
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.scrolling then
		else
			arg1.resetAnimation()
			arg1:setState({
				animationOn = false;
				focusIndex = math.min(arg1.state.focusIndex + 1, #arg1.props.items);
			})
		end
	end
	function arg1.onItemActivated(arg1_9) -- Line 223
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local isYouTubeVideo = arg1.state.itemsToShow[arg1_9].isYouTubeVideo
		arg1.resetAnimation()
		local tbl_2 = {
			animationOn = false;
		}
		local var54
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var54 = arg1_9
			return var54
		end
		if isYouTubeVideo or not INLINED() then
			var54 = nil
		end
		tbl_2.selectedIndex = var54
		arg1:setState(tbl_2)
		if isYouTubeVideo then
			arg1.onVideoPlayActivated(arg1_9)
		end
		if arg1.props.onThumbnailActivated then
			arg1.props.onThumbnailActivated(arg1.state.selectedIndex, arg1_9)
		end
	end
	function arg1.onItemPlayActivated(arg1_10) -- Line 243
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.resetAnimation()
		arg1:setState({
			animationOn = false;
		})
		arg1.onVideoPlayActivated(arg1_10)
	end
	function arg1.onVideoPlayActivated(arg1_11) -- Line 252
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onVideoPlayActivated then
			arg1.props.onVideoPlayActivated(arg1.state.itemsToShow[arg1_11].originalIndex)
		end
	end
	function arg1.getNextFocusIndex(arg1_12) -- Line 261
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local focusIndex = arg1.state.focusIndex
		local numberOfThumbnails = arg1.props.numberOfThumbnails
		if arg1_12 < focusIndex then
			return arg1_12
		end
		if focusIndex + numberOfThumbnails <= arg1_12 then
			return arg1_12 - numberOfThumbnails + 1
		end
		return focusIndex
	end
	function arg1.resetAnimation() -- Line 276
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.animationTime = 0
		arg1.updateProgress(0)
		arg1.updatePreviewTransparency(0)
	end
	function arg1.renderSteppedCallback(arg1_13) -- Line 282
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.animationTime += arg1_13
		local var63 = arg1.animationTime - 4.5
		if 5 < arg1.animationTime then
			arg1.animationTime = 0
			arg1.updateProgress(0)
			local youTubeVideoItemsSize = arg1.state.youTubeVideoItemsSize
			local var65 = (arg1.state.animatedIndex - youTubeVideoItemsSize) % arg1.state.imageItemsSize + 1 + youTubeVideoItemsSize
			arg1:setState({
				animatedIndex = var65;
				selectedIndex = var65;
				focusIndex = arg1.getNextFocusIndex(var65);
			})
		else
			arg1.updateProgress(arg1.animationTime / 5)
			if 0 < var63 then
				arg1.updatePreviewTransparency(var63 / 0.5)
			end
		end
	end
	function arg1.scrollMotorOnStep(arg1_14) -- Line 312
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateCanvasPosition(Vector2.new(arg1_14, 0))
	end
	function arg1.scrollMotorOnComplete() -- Line 316
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.scrolling = false
	end
	arg1.scrollMotor:onStep(arg1.scrollMotorOnStep)
	arg1.scrollMotor:onComplete(arg1.scrollMotorOnComplete)
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local EventConnection_upvr = require(Parent.ReactUtils).EventConnection
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.render(arg1) -- Line 324
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: IconButton_upvr (readonly)
		[4]: any_getIconSize_result1_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: EventConnection_upvr (readonly)
		[7]: RunService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local numberOfThumbnails_4 = arg1.props.numberOfThumbnails
	local len = #arg1.props.items
	local itemsToShow_upvr = arg1.state.itemsToShow
	local focusIndex_2 = arg1.state.focusIndex
	local selectedIndex_2_upvr = arg1.state.selectedIndex
	local animationOn_upvr = arg1.state.animationOn
	local youTubeVideoItemsSize_2 = arg1.state.youTubeVideoItemsSize
	local var81_upvr = false
	local var82_upvr
	if var82_upvr < len then
		var81_upvr = not animationOn_upvr
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var82_upvr = (selectedIndex_2_upvr - youTubeVideoItemsSize_2) % arg1.state.imageItemsSize + 1 + youTubeVideoItemsSize_2
		return var82_upvr
	end
	if not animationOn_upvr or not INLINED_2() then
		var82_upvr = nil
	end
	if numberOfThumbnails_4 >= len then
	else
	end
	if focusIndex_2 > 1 then
		-- KONSTANTWARNING: GOTO [74] #46
	end
	if #itemsToShow_upvr >= focusIndex_2 + numberOfThumbnails_4 then
	else
	end
	local layoutOrder_upvr = arg1.props.layoutOrder
	local size_upvr = arg1.props.size
	local anchorPoint_upvr = arg1.props.anchorPoint
	local position_upvr = arg1.props.position
	local var88_upvr = true
	local showArrows_upvr = arg1.state.showArrows
	local var90_upvr = true
	local var91_upvr = true
	return withStyle_upvr(function(arg1_15) -- Line 348
		--[[ Upvalues[20]:
			[1]: Roact_upvr (copied, readonly)
			[2]: layoutOrder_upvr (readonly)
			[3]: size_upvr (readonly)
			[4]: anchorPoint_upvr (readonly)
			[5]: position_upvr (readonly)
			[6]: arg1 (readonly)
			[7]: var81_upvr (readonly)
			[8]: animationOn_upvr (readonly)
			[9]: var82_upvr (readonly)
			[10]: itemsToShow_upvr (readonly)
			[11]: selectedIndex_2_upvr (readonly)
			[12]: var88_upvr (readonly)
			[13]: showArrows_upvr (readonly)
			[14]: IconButton_upvr (copied, readonly)
			[15]: any_getIconSize_result1_upvr (copied, readonly)
			[16]: Images_upvr (copied, readonly)
			[17]: var90_upvr (readonly)
			[18]: var91_upvr (readonly)
			[19]: EventConnection_upvr (copied, readonly)
			[20]: RunService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 40 start (CF ANALYSIS FAILED)
		local module_5 = {
			LayoutOrder = layoutOrder_upvr;
			Size = size_upvr;
			AnchorPoint = anchorPoint_upvr;
			Position = position_upvr;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			[Roact_upvr.Change.AbsoluteSize] = arg1.onResize;
		}
		local var93
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var93 = arg1.onMouseLeave
			return var93
		end
		if not var81_upvr or not INLINED_3() then
			var93 = nil
		end
		module_5[Roact_upvr.Event.InputEnded] = var93
		local module_2 = {}
		var93 = Roact_upvr.createElement
		local tbl_11 = {
			ListLayout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 24);
			});
		}
		local tbl_6 = {}
		-- KONSTANTERROR: [0] 1. Error Block 40 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [110] 77. Error Block 41 start (CF ANALYSIS FAILED)
		local tbl = {
			Size = UDim2.fromScale(1, 1);
		}
		local var101 = var82_upvr
		if var101 then
			var101 = itemsToShow_upvr[var82_upvr].imageId
		end
		tbl.Image = var101
		tbl.BackgroundTransparency = 1
		tbl.ZIndex = -1
		if not Roact_upvr.createElement("ImageLabel", tbl, {
			Corner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			});
		}) then
			-- KONSTANTERROR: [155] 111. Error Block 9 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [155] 111. Error Block 9 end (CF ANALYSIS FAILED)
		end
		tbl_6.AnimationLabel = nil
		tbl_6.Button = Roact_upvr.createElement("ImageButton", {
			Size = UDim2.fromScale(1, 1);
			Image = itemsToShow_upvr[selectedIndex_2_upvr].imageId;
			ImageTransparency = arg1.previewTransparency;
			BackgroundTransparency = 1;
			AutoButtonColor = false;
			ZIndex = 1;
			[Roact_upvr.Event.Activated] = arg1.onPreviewActivated;
		}, {
			Corner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			});
		})
		tbl_11.Preview = Roact_upvr.createElement("Frame", {
			LayoutOrder = 1;
			Size = arg1.previewSize;
			BackgroundTransparency = 1;
		}, tbl_6)
		local tbl_5 = {
			LayoutOrder = 2;
			Size = arg1.paginationSize;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
		}
		if not var88_upvr or not arg1.onMouseEnterPagination then
		end
		tbl_5[Roact_upvr.Event.InputBegan] = nil
		if not var88_upvr or not arg1.onMouseLeavePagination then
		end
		tbl_5[Roact_upvr.Event.InputEnded] = nil
		local tbl_10 = {}
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			tbl_9.onActivated = arg1.onCycleLeftActivated
			tbl_9.isDisabled = var90_upvr
			tbl_9.icon = Images_upvr["icons/actions/cycleLeft"]
			tbl_9.position = UDim2.fromScale(0, 0.5)
			tbl_9.anchorPoint = Vector2.new(0, 0.5)
			tbl_9.size = UDim2.new(0, any_getIconSize_result1_upvr, 1, 0)
			local tbl_9 = {}
			return Roact_upvr.createElement(IconButton_upvr, tbl_9)
		end
		if not showArrows_upvr or not INLINED_4() then
		end
		tbl_10.LeftArrow = nil
		tbl_10.Scroller = arg1:renderScroller(arg1_15)
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			tbl_3.onActivated = arg1.onCycleRightActivated
			tbl_3.isDisabled = var91_upvr
			tbl_3.icon = Images_upvr["icons/actions/cycleRight"]
			tbl_3.position = UDim2.fromScale(1, 0.5)
			tbl_3.anchorPoint = Vector2.new(1, 0.5)
			tbl_3.size = UDim2.new(0, any_getIconSize_result1_upvr, 1, 0)
			local tbl_3 = {}
			return Roact_upvr.createElement(IconButton_upvr, tbl_3)
		end
		if not showArrows_upvr or not INLINED_5() then
		end
		tbl_10.RightArrow = nil
		tbl_11.Pagination = Roact_upvr.createElement("Frame", tbl_5, tbl_10)
		var93 = var93("Frame", {
			Size = arg1.contentSize;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
		}, tbl_11)
		module_2.Content = var93
		local function INLINED_6() -- Internal function, doesn't exist in bytecode
			var93 = var93(EventConnection_upvr, tbl_12)
			tbl_12.callback = arg1.renderSteppedCallback
			tbl_12.event = RunService_upvr.RenderStepped
			local tbl_12 = {}
			var93 = Roact_upvr.createElement
			return var93
		end
		if not animationOn_upvr or not INLINED_6() then
			var93 = nil
		end
		module_2.EventConnection = var93
		do
			return Roact_upvr.createElement("Frame", module_5, module_2)
		end
		-- KONSTANTERROR: [110] 77. Error Block 41 end (CF ANALYSIS FAILED)
	end)
end
local FFlagLuaAppEdpSelectableItems_upvr = require(Parent.SharedFlags).FFlagLuaAppEdpSelectableItems
function any_extend_result1.renderScroller(arg1, arg2) -- Line 434
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_getIconSize_result1_upvr (readonly)
		[3]: FFlagLuaAppEdpSelectableItems_upvr (readonly)
	]]
	local module_6 = {
		Size = UDim2.new(1, -any_getIconSize_result1_upvr * 2, 1, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		BackgroundTransparency = 1;
		ScrollBarThickness = 0;
		ClipsDescendants = true;
		ScrollingDirection = Enum.ScrollingDirection.X;
		AutomaticCanvasSize = Enum.AutomaticSize.XY;
	}
	local canvasPosition = arg1.canvasPosition
	module_6.CanvasPosition = canvasPosition
	if FFlagLuaAppEdpSelectableItems_upvr then
		canvasPosition = false
	else
		canvasPosition = nil
	end
	module_6.Selectable = canvasPosition
	return Roact_upvr.createElement("ScrollingFrame", module_6, arg1:renderThumbnails(arg2))
end
local ThumbnailButton_upvr = require(script.Parent.ThumbnailButton)
function any_extend_result1.renderThumbnails(arg1, arg2) -- Line 449
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ThumbnailButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {
		ListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 12);
		});
	}
	local var129
	for i, v in ipairs(arg1.state.itemsToShow) do
		if i ~= arg1.state.selectedIndex then
			var129 = false
		else
			var129 = true
		end
		if arg1.state.animationOn then
			if i ~= arg1.state.animatedIndex then
			else
			end
		end
		local imageId = v.imageId
		if imageId then
			if v.imageId == "" then
			else
			end
		end
		local tbl_8 = {}
		local tbl_7 = {
			itemKey = i;
			imageId = v.imageId;
			isVideo = v.isYouTubeVideo;
			isSelected = var129;
		}
		if not true or not arg1.onItemActivated then
		end
		tbl_7.onActivated = nil
		if not v.isYouTubeVideo or not arg1.onItemPlayActivated then
		end
		tbl_7.onPlayActivated = nil
		tbl_7.useScaledPlayButton = true
		tbl_8.Thumbnail = Roact_upvr.createElement(ThumbnailButton_upvr, tbl_7)
		if not true or not arg1:renderTimerBar(arg2) then
		end
		tbl_8.TimerBar = nil
		module["item"..i] = Roact_upvr.createElement("Frame", {
			LayoutOrder = i;
			Size = arg1.thumbnailSize;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
		}, tbl_8)
	end
	return module
end
function any_extend_result1.renderTimerBar(arg1, arg2) -- Line 490
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local UIDefault = arg2.Theme.UIDefault
	local SecondaryContent = arg2.Theme.SecondaryContent
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 2);
		AnchorPoint = Vector2.new(0, 1);
		Position = UDim2.fromScale(0, 1);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		ZIndex = 100;
	}, {
		Background = Roact_upvr.createElement("Frame", {
			Size = arg1.thumbnailSize;
			AnchorPoint = Vector2.new(0, 1);
			Position = UDim2.fromScale(0, 1);
			BorderSizePixel = 0;
			BackgroundColor3 = UIDefault.Color;
			BackgroundTransparency = UIDefault.Transparency;
		}, {
			Corner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			});
			Progress = Roact_upvr.createElement("Frame", {
				Size = arg1.progress:map(function(arg1_16) -- Line 515
					return UDim2.fromScale(arg1_16, 1)
				end);
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				ClipsDescendants = true;
			}, {
				Foreground = Roact_upvr.createElement("Frame", {
					Size = arg1.thumbnailSize;
					BorderSizePixel = 0;
					BackgroundColor3 = SecondaryContent.Color;
					BackgroundTransparency = SecondaryContent.Transparency;
				}, {
					Corner = Roact_upvr.createElement("UICorner", {
						CornerRadius = UDim.new(0, 8);
					});
				});
			});
		});
	})
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 537
	if arg1.state.focusIndex ~= arg3.focusIndex then
		arg1:scrollToNewIndex()
	end
	if arg1.state.selectedIndex ~= arg3.selectedIndex then
		arg1.updatePreviewTransparency(0)
	end
end
local calcMediaGallerySizesFromWidth_upvr = require(script.Parent.calcMediaGallerySizesFromWidth)
local calcMediaGallerySizesFromHeight_upvr = require(script.Parent.calcMediaGallerySizesFromHeight)
function any_extend_result1.updateSizes(arg1, arg2) -- Line 547
	--[[ Upvalues[2]:
		[1]: calcMediaGallerySizesFromWidth_upvr (readonly)
		[2]: calcMediaGallerySizesFromHeight_upvr (readonly)
	]]
	local Y = arg2.AbsoluteSize.Y
	local numberOfThumbnails_3 = arg1.props.numberOfThumbnails
	local calcMediaGallerySizesFromWidth_upvr_result1 = calcMediaGallerySizesFromWidth_upvr(arg2.AbsoluteSize.X, numberOfThumbnails_3, arg1.props.fullWidth)
	if Y < calcMediaGallerySizesFromWidth_upvr_result1.contentSize.Y.Offset then
		calcMediaGallerySizesFromWidth_upvr_result1 = calcMediaGallerySizesFromHeight_upvr(Y, numberOfThumbnails_3, arg1.props.fullWidth)
	end
	arg1.updateContentSize(calcMediaGallerySizesFromWidth_upvr_result1.contentSize)
	arg1.updatePreviewSize(calcMediaGallerySizesFromWidth_upvr_result1.previewSize)
	arg1.updatePaginationSize(calcMediaGallerySizesFromWidth_upvr_result1.paginationSize)
	arg1.updateThumbnailSize(calcMediaGallerySizesFromWidth_upvr_result1.thumbnailSize)
end
function any_extend_result1.getCanvasPositionX(arg1) -- Line 563
	return (arg1.state.focusIndex - 1) * (arg1.thumbnailSize:getValue().X.Offset + 12)
end
function any_extend_result1.scrollToNewIndex(arg1) -- Line 569
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	arg1.scrollMotor:setGoal(Otter_upvr.instant(arg1.canvasPosition:getValue().X))
	arg1.scrollMotor:setGoal(Otter_upvr.spring(arg1:getCanvasPositionX(), tbl_4_upvr))
	arg1.scrolling = true
end
return any_extend_result1