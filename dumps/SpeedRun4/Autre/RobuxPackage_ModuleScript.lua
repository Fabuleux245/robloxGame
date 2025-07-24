-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:13
-- Luau version 6, Types version 3
-- Time taken: 0.010042 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local LocalizationService_upvr = game:GetService("LocalizationService")
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local RoactFitComponents = require(Parent.RoactFitComponents)
local formatNumber_upvr = require(Parent_2.Utility.formatNumber)
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
local Constants_upvr = UIBlox.App.Style.Constants
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local FitFrameHorizontal_upvr = RoactFitComponents.FitFrameHorizontal
local icons_common_robux_upvr = UIBlox.App.ImageSet.Images["icons/common/robux"]
local FitTextLabel_upvr = RoactFitComponents.FitTextLabel
local function renderWithProviders_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 57, Named "renderWithProviders"
	--[[ Upvalues[11]:
		[1]: Roact_upvr (readonly)
		[2]: ShimmerPanel_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: RoactGamepad_upvr (readonly)
		[5]: ImageSetButton_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: FitFrameHorizontal_upvr (readonly)
		[8]: icons_common_robux_upvr (readonly)
		[9]: FitTextLabel_upvr (readonly)
		[10]: formatNumber_upvr (readonly)
		[11]: LocalizationService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var16
	if arg1.robuxAmount == nil then
		local module_3 = {}
		var16 = 1
		module_3.BackgroundTransparency = var16
		var16 = UDim2.new(0, arg1.scale * 404, 0, arg1.scale * 448)
		module_3.Size = var16
		var16 = {}
		var16.ShimmerPanel = Roact_upvr.createElement(ShimmerPanel_upvr, {
			Size = UDim2.new(1, 0, 1, 0);
		})
		return Roact_upvr.createElement("Frame", module_3, var16)
	end
	local Theme = arg3.Theme
	local Font = arg3.Font
	var16 = arg1.scale
	local var21 = var16 * 64
	if arg5 == Constants_upvr.ThemeName.Dark then
		var16 = Color3.fromRGB(25, 27, 29)
	else
		var16 = Color3.fromRGB(242, 244, 245)
	end
	if arg1.selected then
		if arg5 == Constants_upvr.ThemeName.Dark then
			var16 = Color3.fromRGB(57, 59, 61)
		else
			var16 = Color3.fromRGB(255, 255, 255)
		end
	end
	local module_2 = {
		LayoutOrder = arg1.layoutOrder;
		BackgroundColor3 = Theme.UIEmphasis.Color;
		BackgroundTransparency = Theme.UIEmphasis.Transparency;
		Size = UDim2.new(0, arg1.scale * 404, 0, arg1.scale * 448);
		Image = nil;
	}
	module_2.SelectionImageObject = arg4
	local forwardRef = arg1.forwardRef
	module_2[Roact_upvr.Ref] = forwardRef
	module_2.NextSelectionUp = nil
	module_2.NextSelectionDown = nil
	module_2.NextSelectionLeft = arg1.nextSelectionLeft
	module_2.NextSelectionRight = arg1.nextSelectionRight
	local tbl_9 = {}
	if arg1.onActivated ~= nil then
		forwardRef = RoactGamepad_upvr.Input.onBegin
		forwardRef = forwardRef(Enum.KeyCode.ButtonA, function() -- Line 101
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.onActivated(arg1.packageId)
		end)
	else
		forwardRef = nil
	end
	tbl_9.Activated = forwardRef
	module_2.inputBindings = tbl_9
	module_2[Roact_upvr.Event.Activated] = function() -- Line 106
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.onActivated(arg1.packageId)
	end
	module_2[Roact_upvr.Event.MouseMoved] = function() -- Line 109
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.onHover(arg1.forwardRef, true)
	end
	module_2[Roact_upvr.Event.MouseEnter] = function() -- Line 112
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.onHover(arg1.forwardRef, true)
	end
	module_2[Roact_upvr.Event.MouseLeave] = function() -- Line 115
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.onHover(arg1.forwardRef, false)
	end
	module_2[Roact_upvr.Event.SelectionGained] = function() -- Line 118
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.onSelect(arg1.forwardRef)
	end
	local module = {
		Corner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8);
		});
	}
	local tbl_2 = {
		Corner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8);
		});
	}
	local tbl_6 = {
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, arg1.scale * 24);
		});
		
		Roact_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, arg1.scale * 17.5);
		})
	}
	local tbl_8 = {}
	local tbl_5 = {}
	if arg1.selected then
		-- KONSTANTWARNING: GOTO [417] #293
	end
	tbl_5.Size = UDim2.fromOffset(arg1.scale * 192, arg1.scale * 192)
	if arg1.selected then
		local udim2 = UDim2.new(0.5, 0, 0.3, 0)
	else
	end
	tbl_5.Position = UDim2.new(0.5, 0, 0.5, 0)
	tbl_5.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl_5.BackgroundTransparency = 1
	tbl_5.Image = arg1.robuxImage
	tbl_5.ImageTransparency = 0
	tbl_8.RobuxImage = Roact_upvr.createElement(ImageSetLabel_upvr, tbl_5)
	tbl_6.RobuxImageFrame = Roact_upvr.createElement("Frame", {
		LayoutOrder = 1;
		Size = UDim2.fromOffset(arg1.scale * 192, arg1.scale * 192);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
	}, tbl_8)
	tbl_6.RobuxAmount = Roact_upvr.createElement(FitFrameHorizontal_upvr, {
		LayoutOrder = 2;
		AnchorPoint = Vector2.new(0.5, 0.5);
		height = UDim.new(0, var21);
		contentPadding = UDim.new(0, 0);
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		BackgroundTransparency = 1;
	}, {
		Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Size = UDim2.new(0, var21, 0, var21);
			Image = icons_common_robux_upvr;
			ImageColor3 = Theme.TextEmphasis.Color;
			ImageTransparency = Theme.TextEmphasis.Transparency;
		});
		RobuxAmountText = Roact_upvr.createElement(FitTextLabel_upvr, {
			LayoutOrder = 2;
			width = FitTextLabel_upvr.Width.FitToText;
			Text = formatNumber_upvr(LocalizationService_upvr.RobloxLocaleId, arg1.robuxAmount);
			Font = Font.Title.Font;
			TextColor3 = Theme.TextEmphasis.Color;
			TextTransparency = Theme.TextEmphasis.Transparency;
			TextSize = var21;
			BackgroundTransparency = 1;
		});
	})
	tbl_6.CurrencyAmmountText = Roact_upvr.createElement(FitTextLabel_upvr, {
		LayoutOrder = 3;
		AnchorPoint = Vector2.new(0.5, 0.5);
		width = FitTextLabel_upvr.Width.FitToText;
		Text = arg1.currencyAmountStr;
		Font = Font.Header1.Font;
		TextColor3 = Theme.TextEmphasis.Color;
		TextTransparency = Theme.TextEmphasis.Transparency;
		TextSize = arg1.scale * 32;
		BackgroundTransparency = 1;
	})
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl_4.Gradient = Roact_upvr.createElement("UIGradient", tbl_3)
		tbl_3.Color = ColorSequence.new(tbl_7)
		tbl_7[2] = ColorSequenceKeypoint.new(1, Color3.fromRGB(243, 185, 34))
		tbl_7[1] = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 251, 103))
		local tbl_7 = {}
		tbl_3.Rotation = 0
		local tbl_3 = {}
		local tbl_4 = {}
		tbl.BackgroundTransparency = 1
		tbl.TextSize = arg1.scale * 32
		tbl.TextTransparency = Theme.TextEmphasis.Transparency
		tbl.TextColor3 = Theme.TextEmphasis.Color
		tbl.Font = Font.Header2.Font
		tbl.Text = arg2.moreRobux
		tbl.width = FitTextLabel_upvr.Width.FitToText
		tbl.AnchorPoint = Vector2.new(0.5, 0.5)
		tbl.LayoutOrder = 4
		local tbl = {}
		return Roact_upvr.createElement(FitTextLabel_upvr, tbl, tbl_4)
	end
	if not arg1.robuxMoreAmount or not INLINED() then
	end
	tbl_6.MoreText = nil
	tbl_2.MiddleContent = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0);
	}, tbl_6)
	module.Outline = Roact_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		BackgroundColor3 = var16;
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		Size = UDim2.new(1, -3, 1, -3);
	}, tbl_2)
	return Roact_upvr.createElement(RoactGamepad_upvr.Focusable[ImageSetButton_upvr], module_2, module)
end
local useCursor_upvr = UIBlox.App.SelectionCursor.useCursor
local useStyleMetadata_upvr = UIBlox.Core.Style.useStyleMetadata
local MultiTextLocalizer_upvr = require(Parent_2.Locale.MultiTextLocalizer)
local withStyle_upvr = UIBlox.Core.Style.withStyle
return function(arg1) -- Line 244
	--[[ Upvalues[8]:
		[1]: useCursor_upvr (readonly)
		[2]: useStyleMetadata_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: MultiTextLocalizer_upvr (readonly)
		[5]: formatNumber_upvr (readonly)
		[6]: LocalizationService_upvr (readonly)
		[7]: withStyle_upvr (readonly)
		[8]: renderWithProviders_upvr (readonly)
	]]
	local module_4 = {
		keys = {
			moreRobux = {
				key = "IAPExperience.BuyRobux.Text.MoreRobux2";
				params = {
					robux = formatNumber_upvr(LocalizationService_upvr.RobloxLocaleId, arg1.robuxMoreAmount or 0);
				};
			};
		};
	}
	local var54_result1_upvr = useCursor_upvr(UDim.new(0, 8))
	local ThemeName_upvr = useStyleMetadata_upvr().ThemeName
	function module_4.render(arg1_2) -- Line 259
		--[[ Upvalues[5]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: renderWithProviders_upvr (copied, readonly)
			[4]: var54_result1_upvr (readonly)
			[5]: ThemeName_upvr (readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 260
			--[[ Upvalues[5]:
				[1]: arg1 (copied, readonly)
				[2]: renderWithProviders_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: var54_result1_upvr (copied, readonly)
				[5]: ThemeName_upvr (copied, readonly)
			]]
			if arg1.scale == nil then
				arg1.scale = 0.65
			end
			return renderWithProviders_upvr(arg1, arg1_2, arg1_3, var54_result1_upvr, ThemeName_upvr)
		end)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module_4)
end