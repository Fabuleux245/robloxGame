-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:01
-- Luau version 6, Types version 3
-- Time taken: 0.008421 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local RoactFitComponents = require(Parent.RoactFitComponents)
local FitFrameVertical_upvr = RoactFitComponents.FitFrameVertical
local UIBlox = require(Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_status_imageunavailable_upvr = Images["icons/status/imageunavailable"]
local FFlagPopularFillIconEnabled_upvr = require(Parent_2.Flags.FFlagPopularFillIconEnabled)
local GetFStringPopularFillIconLocation_upvr = Parent_2.Flags.GetFStringPopularFillIconLocation
local var12_upvr
if FFlagPopularFillIconEnabled_upvr then
	var12_upvr = require(GetFStringPopularFillIconLocation_upvr)()
	GetFStringPopularFillIconLocation_upvr = Images[var12_upvr]
else
	GetFStringPopularFillIconLocation_upvr = nil
end
if FFlagPopularFillIconEnabled_upvr then
	var12_upvr = UDim2.new(0, 16, 0, 16)
else
	var12_upvr = UDim2.new(0, 0, 0, 0)
end
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
function any_extend_result1.init(arg1) -- Line 57
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.contentRef = Roact_upvr.createRef()
	arg1.state = {
		contentSize = Vector2.new(0, 0);
	}
	function arg1.changeContentSize(arg1_2) -- Line 62
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.contentSize ~= arg1_2.AbsoluteSize then
			arg1:setState({
				contentSize = arg1_2.AbsoluteSize;
			})
		end
	end
end
local function getPopularityThreshold_upvr(arg1, arg2) -- Line 91, Named "getPopularityThreshold"
	if arg2 ~= 1 and arg2 ~= 2 then
		return 0
	end
	if arg1 <= 2 then
		return 0
	end
	if arg1 <= 5 then
		return 1
	end
	if arg1 <= 7 then
		if arg2 == 1 then
			return 1
		end
		return 2
	end
	if arg1 <= 9 then
		if arg2 == 1 then
			return 2
		end
		if arg1 <= 8 then
			return 2
		end
		return 3
	end
	if arg1 <= 20 then
		if arg2 == 1 then
			return 2
		end
		return 4
	end
	if arg1 <= 50 then
		if arg2 == 1 then
			return 3
		end
		return 5
	end
	if arg1 <= 100 then
		if arg2 == 1 then
			return 4
		end
		return 7
	end
	if arg2 == 1 then
		return 7
	end
	return 12
end
local function createItemBadge_upvr(arg1, arg2) -- Line 115, Named "createItemBadge"
	--[[ Upvalues[5]:
		[1]: FFlagPopularFillIconEnabled_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: var12_upvr (readonly)
		[5]: GetFStringPopularFillIconLocation_upvr (readonly)
	]]
	local var17
	if FFlagPopularFillIconEnabled_upvr and arg2.isPopularItem then
		var17 = Roact_upvr.createElement(ImageSetLabel_upvr, {
			Size = var12_upvr;
			BackgroundTransparency = 1;
			Image = GetFStringPopularFillIconLocation_upvr;
			ImageColor3 = Color3.fromRGB(0, 0, 0);
			LayoutOrder = 1;
		})
	end
	local module = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 1);
		});
		TextLabel = Roact_upvr.createElement("TextLabel", {
			Text = arg2.badgeText;
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 34, 0, 12);
			AutomaticSize = Enum.AutomaticSize.X;
			TextColor3 = Color3.fromRGB(25, 27, 29);
			Font = Enum.Font.BuilderSansBold;
			TextSize = 12;
			TextYAlignment = Enum.TextYAlignment.Center;
			TextXAlignment = Enum.TextXAlignment.Left;
			LayoutOrder = 2;
		});
		UIPadding = Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 4);
			PaddingRight = UDim.new(0, 8);
			PaddingTop = UDim.new(0, 2);
			PaddingBottom = UDim.new(0, 2);
		});
		UICorner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(1, 8);
		});
		UIStroke = Roact_upvr.createElement("UIStroke", {
			Color = Color3.fromRGB(206, 183, 115);
			Thickness = 1;
		});
	}
	if var17 then
		module.PopularIcon = var17
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 0;
		Size = UDim2.new(0, 44, 0, 20);
		BackgroundColor3 = Color3.fromRGB(239, 215, 109);
		AutomaticSize = Enum.AutomaticSize.XY;
		LayoutOrder = 3;
		AnchorPoint = Vector2.new(0, 1);
	}, module)
end
local function createItemIconComponent_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 177, Named "createItemIconComponent"
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetLabel_upvr (readonly)
		[3]: icons_status_imageunavailable_upvr (readonly)
		[4]: FitFrameVertical_upvr (readonly)
	]]
	local tbl_2 = {}
	local tbl_3 = {
		BackgroundTransparency = 1;
		Size = UDim2.new(0, arg2, 0, arg3);
		ScaleType = Enum.ScaleType.Stretch;
	}
	tbl_3.Image = arg1
	local var28
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var28 = arg4.UIDefault.Transparency
		return var28
	end
	if arg1 ~= icons_status_imageunavailable_upvr or not INLINED() then
		var28 = 0
	end
	tbl_3.ImageTransparency = var28
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var28 = arg4.UIDefault.Color
		return var28
	end
	if arg1 ~= icons_status_imageunavailable_upvr or not INLINED_2() then
		var28 = Color3.new(1, 1, 1)
	end
	tbl_3.ImageColor3 = var28
	tbl_2.ItemImage = Roact_upvr.createElement(ImageSetLabel_upvr, tbl_3)
	local module_2 = {}
	var28 = 1
	module_2.BackgroundTransparency = var28
	var28 = UDim.new(1, 0)
	module_2.width = var28
	var28 = Enum.HorizontalAlignment.Center
	module_2.HorizontalAlignment = var28
	var28 = Enum.VerticalAlignment.Top
	module_2.VerticalAlignment = var28
	var28 = 1
	module_2.LayoutOrder = var28
	var28 = tbl_2
	return Roact_upvr.createElement(FitFrameVertical_upvr, module_2, var28)
end
local FitTextLabel_upvr = RoactFitComponents.FitTextLabel
local icons_common_robux_upvr = Images["icons/common/robux"]
local function createItemDetailsComponent_upvr(arg1, arg2, arg3, arg4) -- Line 198, Named "createItemDetailsComponent"
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: FitTextLabel_upvr (readonly)
		[3]: FitFrameVertical_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: icons_common_robux_upvr (readonly)
		[6]: getPopularityThreshold_upvr (readonly)
		[7]: createItemBadge_upvr (readonly)
	]]
	local module_3 = {
		ItemName = Roact_upvr.createElement(FitTextLabel_upvr, {
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			width = FitTextLabel_upvr.Width.FitToText;
			maximumWidth = arg2 * 0.55;
			Font = arg4.Header2.Font;
			Text = arg1.itemName;
			TextSize = arg4.BaseSize * arg4.Header2.RelativeSize;
			TextColor3 = arg3.TextEmphasis.Color;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
		});
	}
	local tbl = {
		RobuxIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 24, 0, 24);
			ScaleType = Enum.ScaleType.Stretch;
			Image = icons_common_robux_upvr;
			ImageColor3 = arg3.IconEmphasis.Color;
			ImageTransparency = arg3.IconEmphasis.Transparency;
		});
	}
	local tbl_4 = {
		LayoutOrder = 2;
		BackgroundTransparency = 1;
		TextWrapped = true;
		width = FitTextLabel_upvr.Width.FitToText;
	}
	tbl_4.maximumWidth = arg2
	tbl_4.Font = arg4.Header2.Font
	tbl_4.Text = tostring(arg1.itemRobuxCost)
	tbl_4.TextSize = arg4.BaseSize * arg4.Header2.RelativeSize
	tbl_4.TextColor3 = arg3.TextEmphasis.Color
	tbl.ItemCost = Roact_upvr.createElement(FitTextLabel_upvr, tbl_4)
	module_3.ItemCostFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
		LayoutOrder = 2;
		BackgroundTransparency = 1;
		width = UDim.new(0.5, 0);
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		contentPadding = UDim.new(0, 2);
	}, tbl)
	if arg1.userVariant and arg1.catalogSize and arg1.salesRank and arg1.salesRank <= getPopularityThreshold_upvr(arg1.catalogSize, arg1.userVariant) then
		module_3.ItemBadge = createItemBadge_upvr(arg4, arg1)
	end
	return Roact_upvr.createElement(FitFrameVertical_upvr, {
		LayoutOrder = 2;
		BackgroundTransparency = 1;
		width = UDim.new(0.45, 0);
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		contentPadding = UDim.new(0, 5);
	}, module_3)
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local Constants_upvr = require(Parent_2.Generic.Constants)
local IconSize_upvr = UIBlox.App.Constant.IconSize
local getEnableCondenseRobuxUpsell_upvr = require(Parent_2.Flags.getEnableCondenseRobuxUpsell)
local HumanoidViewport_upvr = require(Parent_2.Generic.HumanoidViewport)
function any_extend_result1.render(arg1) -- Line 262
	--[[ Upvalues[10]:
		[1]: withStyle_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: getEnableCondenseRobuxUpsell_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: HumanoidViewport_upvr (readonly)
		[7]: icons_status_imageunavailable_upvr (readonly)
		[8]: createItemIconComponent_upvr (readonly)
		[9]: createItemDetailsComponent_upvr (readonly)
		[10]: FitFrameVertical_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_3) -- Line 265
		--[[ Upvalues[11]:
			[1]: Constants_upvr (copied, readonly)
			[2]: props_upvr (readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: getEnableCondenseRobuxUpsell_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: HumanoidViewport_upvr (copied, readonly)
			[7]: icons_status_imageunavailable_upvr (copied, readonly)
			[8]: createItemIconComponent_upvr (copied, readonly)
			[9]: createItemDetailsComponent_upvr (copied, readonly)
			[10]: arg1 (readonly)
			[11]: FitFrameVertical_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
		local Theme = arg1_3.Theme
		local var47
		if props_upvr.model == nil and props_upvr.itemIcon == nil then
			var47 = IconSize_upvr.Large
		end
		if getEnableCondenseRobuxUpsell_upvr() then
		else
		end
		if getEnableCondenseRobuxUpsell_upvr() then
			-- KONSTANTWARNING: GOTO [38] #29
		end
		-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 28. Error Block 30 start (CF ANALYSIS FAILED)
		local var48
		if props_upvr.model ~= nil then
			var48 = Roact_upvr.createElement(HumanoidViewport_upvr, {
				model = props_upvr.model;
				Position = UDim2.fromOffset(5, 5);
				Size = UDim2.fromOffset(var47, var47);
			})
		else
			local itemIcon = props_upvr.itemIcon
			if not itemIcon then
				itemIcon = icons_status_imageunavailable_upvr
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			var48 = createItemIconComponent_upvr(itemIcon, var47, var47, Theme, props_upvr)
		end
		do
			return Roact_upvr.createElement(FitFrameVertical_upvr, {
				LayoutOrder = props_upvr.layoutOrder;
				BackgroundTransparency = 1;
				width = UDim.new(1, 0);
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				contentPadding = UDim.new(0, 6);
				[Roact_upvr.Ref] = arg1.contentRef;
				[Roact_upvr.Change.AbsoluteSize] = arg1.changeContentSize;
			}, {
				ItemIconFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
					LayoutOrder = 1;
					BackgroundTransparency = 1;
					width = UDim.new(0.45, 0);
					HorizontalAlignment = Enum.HorizontalAlignment.Right;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					margin = {
						top = 0;
						bottom = 0;
						left = 0;
						right = 20;
					};
				}, {
					ItemIcon = var48;
				});
				ItemDetailsFrame = createItemDetailsComponent_upvr(props_upvr, arg1.state.contentSize.X, Theme, arg1_3.Font);
			})
		end
		-- KONSTANTERROR: [37] 28. Error Block 30 end (CF ANALYSIS FAILED)
	end)
end
return any_extend_result1