-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:17
-- Luau version 6, Types version 3
-- Time taken: 0.011489 seconds

local Parent = script.Parent.Parent.Parent
local UIBlox = require(Parent.UIBlox)
local React_upvr = require(Parent.React)
local withStyle_upvr = UIBlox.Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local t = require(Parent.t)
local any_extend_result1 = require(Parent.Roact).PureComponent:extend("SubscriptionTitle")
any_extend_result1.validateProps = t.strictInterface({
	name = t.string;
	displayPrice = t.string;
	subscriptionProviderName = t.string;
	period = t.string;
	disclaimerText = t.string;
	layoutOrder = t.number;
	contentHeight = t.number;
	itemIcon = t.any;
})
local function _(arg1, arg2) -- Line 53, Named "createSubscriptionInfo"
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 54
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme = arg1_2.Theme
		local Font = arg1_2.Font.Body.Font
		local module_14 = {}
		local tbl_15 = {
			SortOrder = Enum.SortOrder.LayoutOrder;
		}
		local var15
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var15 = Enum.HorizontalAlignment.Left
			return var15
		end
		if not arg2 or not INLINED() then
			var15 = Enum.HorizontalAlignment.Center
		end
		tbl_15.HorizontalAlignment = var15
		var15 = UDim.new(0, 8)
		tbl_15.Padding = var15
		module_14.Layout = React_upvr.createElement("UIListLayout", tbl_15)
		local module_7 = {}
		var15 = {}
		var15.Size = UDim2.new(1, 0, 0, 20)
		var15.BackgroundTransparency = 1
		var15.Text = arg1.subscriptionProviderName
		var15.TextSize = 16
		var15.TextColor3 = Theme.TextEmphasis.Color
		var15.TextTransparency = Theme.TextEmphasis.Transparency
		var15.Font = Font
		if not arg2 or not Enum.TextXAlignment.Left then
		end
		var15.TextXAlignment = Enum.TextXAlignment.Center
		var15.TextWrapped = true
		var15.LayoutOrder = arg1.layoutOrder
		module_7.AppName = React_upvr.createElement("TextLabel", var15)
		local module_9 = {}
		var15 = React_upvr
		var15 = "TextLabel"
		local tbl_5 = {
			Size = UDim2.new(1, 0, 0, 20);
			BackgroundTransparency = 1;
			Text = arg1.name;
			TextSize = 20;
			TextColor3 = Theme.TextEmphasis.Color;
			TextTransparency = Theme.TextEmphasis.Transparency;
			Font = Font;
		}
		if not arg2 or not Enum.TextXAlignment.Left then
		end
		tbl_5.TextXAlignment = Enum.TextXAlignment.Center
		tbl_5.TextWrapped = true
		tbl_5.LayoutOrder = arg1.layoutOrder + 1
		module_9.Title = var15.createElement(var15, tbl_5)
		local module_5 = {}
		var15 = React_upvr.createElement
		local tbl_8 = {}
		local tbl_6 = {
			SortOrder = Enum.SortOrder.LayoutOrder;
		}
		if not arg2 or not Enum.HorizontalAlignment.Left then
		end
		tbl_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
		tbl_6.FillDirection = Enum.FillDirection.Horizontal
		tbl_8.Layout = React_upvr.createElement("UIListLayout", tbl_6)
		local tbl_7 = {
			Size = UDim2.new(0, 0, 0, 16);
			BackgroundTransparency = 1;
			Text = arg1.displayPrice;
			TextSize = 16;
			TextColor3 = Theme.TextEmphasis.Color;
			TextTransparency = Theme.TextDefault.Transparency;
			Font = Font;
			RichText = true;
		}
		if not arg2 or not Enum.TextXAlignment.Left then
		end
		tbl_7.TextXAlignment = Enum.TextXAlignment.Center
		tbl_7.TextWrapped = true
		tbl_7.LayoutOrder = arg1.layoutOrder + 1
		tbl_7.AutomaticSize = Enum.AutomaticSize.X
		tbl_8.Price = React_upvr.createElement("TextLabel", tbl_7)
		local tbl_20 = {
			Size = UDim2.new(0, 0, 0, 16);
			BackgroundTransparency = 1;
			Text = arg1.period;
			TextSize = 16;
			TextColor3 = Theme.TextDefault.Color;
			TextTransparency = Theme.TextDefault.Transparency;
			Font = Font;
			RichText = true;
		}
		if not arg2 or not Enum.TextXAlignment.Left then
		end
		tbl_20.TextXAlignment = Enum.TextXAlignment.Center
		tbl_20.TextWrapped = true
		tbl_20.LayoutOrder = arg1.layoutOrder + 1
		tbl_20.AutomaticSize = Enum.AutomaticSize.X
		tbl_8.Period = React_upvr.createElement("TextLabel", tbl_20)
		var15 = var15("Frame", {
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.fromRGB(255, 0, 0);
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = arg1.layoutOrder + 2;
		}, tbl_8)
		module_5.PriceFrame = var15
		var15 = {}
		local tbl_14 = {
			Size = UDim2.new(1, 0, 0, 16);
			BackgroundTransparency = 1;
			Text = arg1.disclaimerText;
			TextSize = 16;
			TextColor3 = Theme.TextDefault.Color;
			Font = Font;
		}
		if not arg2 or not Enum.TextXAlignment.Left then
		end
		tbl_14.TextXAlignment = Enum.TextXAlignment.Center
		tbl_14.TextWrapped = true
		tbl_14.LayoutOrder = arg1.layoutOrder + 3
		var15.DisclaimerText = React_upvr.createElement("TextLabel", tbl_14)
		return React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.layoutOrder;
		}, module_14, module_7, module_9, module_5, var15)
	end)
end
local function createCompactSubscriptionTitle_upvr(arg1) -- Line 157, Named "createCompactSubscriptionTitle"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ImageSetLabel_upvr (readonly)
		[3]: withStyle_upvr (readonly)
	]]
	local module_8 = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			FillDirection = Enum.FillDirection.Horizontal;
			Padding = UDim.new(0, 24);
		});
		Icon = React_upvr.createElement(ImageSetLabel_upvr, {
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 96, 0, 96);
			ScaleType = Enum.ScaleType.Fit;
			AutomaticSize = Enum.AutomaticSize.X;
			Image = arg1.itemIcon;
		});
	}
	local var31_upvr = true
	module_8.SubscriptionInfo = withStyle_upvr(function(arg1_3) -- Line 54
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var31_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme_3 = arg1_3.Theme
		local Font_2 = arg1_3.Font.Body.Font
		local module_3 = {}
		local tbl_17 = {
			SortOrder = Enum.SortOrder.LayoutOrder;
		}
		local var37
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var37 = Enum.HorizontalAlignment.Left
			return var37
		end
		if not var31_upvr or not INLINED_2() then
			var37 = Enum.HorizontalAlignment.Center
		end
		tbl_17.HorizontalAlignment = var37
		var37 = UDim.new(0, 8)
		tbl_17.Padding = var37
		module_3.Layout = React_upvr.createElement("UIListLayout", tbl_17)
		local module_6 = {}
		var37 = {}
		var37.Size = UDim2.new(1, 0, 0, 20)
		var37.BackgroundTransparency = 1
		var37.Text = arg1.subscriptionProviderName
		var37.TextSize = 16
		var37.TextColor3 = Theme_3.TextEmphasis.Color
		var37.TextTransparency = Theme_3.TextEmphasis.Transparency
		var37.Font = Font_2
		if not var31_upvr or not Enum.TextXAlignment.Left then
		end
		var37.TextXAlignment = Enum.TextXAlignment.Center
		var37.TextWrapped = true
		var37.LayoutOrder = arg1.layoutOrder
		module_6.AppName = React_upvr.createElement("TextLabel", var37)
		local module_13 = {}
		var37 = React_upvr
		var37 = "TextLabel"
		local tbl_13 = {
			Size = UDim2.new(1, 0, 0, 20);
			BackgroundTransparency = 1;
			Text = arg1.name;
			TextSize = 20;
			TextColor3 = Theme_3.TextEmphasis.Color;
			TextTransparency = Theme_3.TextEmphasis.Transparency;
			Font = Font_2;
		}
		if not var31_upvr or not Enum.TextXAlignment.Left then
		end
		tbl_13.TextXAlignment = Enum.TextXAlignment.Center
		tbl_13.TextWrapped = true
		tbl_13.LayoutOrder = arg1.layoutOrder + 1
		module_13.Title = var37.createElement(var37, tbl_13)
		local module_10 = {}
		var37 = React_upvr.createElement
		local tbl_16 = {}
		local tbl_21 = {
			SortOrder = Enum.SortOrder.LayoutOrder;
		}
		if not var31_upvr or not Enum.HorizontalAlignment.Left then
		end
		tbl_21.HorizontalAlignment = Enum.HorizontalAlignment.Center
		tbl_21.FillDirection = Enum.FillDirection.Horizontal
		tbl_16.Layout = React_upvr.createElement("UIListLayout", tbl_21)
		local tbl_11 = {
			Size = UDim2.new(0, 0, 0, 16);
			BackgroundTransparency = 1;
			Text = arg1.displayPrice;
			TextSize = 16;
			TextColor3 = Theme_3.TextEmphasis.Color;
			TextTransparency = Theme_3.TextDefault.Transparency;
			Font = Font_2;
			RichText = true;
		}
		if not var31_upvr or not Enum.TextXAlignment.Left then
		end
		tbl_11.TextXAlignment = Enum.TextXAlignment.Center
		tbl_11.TextWrapped = true
		tbl_11.LayoutOrder = arg1.layoutOrder + 1
		tbl_11.AutomaticSize = Enum.AutomaticSize.X
		tbl_16.Price = React_upvr.createElement("TextLabel", tbl_11)
		local tbl_10 = {
			Size = UDim2.new(0, 0, 0, 16);
			BackgroundTransparency = 1;
			Text = arg1.period;
			TextSize = 16;
			TextColor3 = Theme_3.TextDefault.Color;
			TextTransparency = Theme_3.TextDefault.Transparency;
			Font = Font_2;
			RichText = true;
		}
		if not var31_upvr or not Enum.TextXAlignment.Left then
		end
		tbl_10.TextXAlignment = Enum.TextXAlignment.Center
		tbl_10.TextWrapped = true
		tbl_10.LayoutOrder = arg1.layoutOrder + 1
		tbl_10.AutomaticSize = Enum.AutomaticSize.X
		tbl_16.Period = React_upvr.createElement("TextLabel", tbl_10)
		var37 = var37("Frame", {
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.fromRGB(255, 0, 0);
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = arg1.layoutOrder + 2;
		}, tbl_16)
		module_10.PriceFrame = var37
		var37 = {}
		local tbl = {
			Size = UDim2.new(1, 0, 0, 16);
			BackgroundTransparency = 1;
			Text = arg1.disclaimerText;
			TextSize = 16;
			TextColor3 = Theme_3.TextDefault.Color;
			Font = Font_2;
		}
		if not var31_upvr or not Enum.TextXAlignment.Left then
		end
		tbl.TextXAlignment = Enum.TextXAlignment.Center
		tbl.TextWrapped = true
		tbl.LayoutOrder = arg1.layoutOrder + 3
		var37.DisclaimerText = React_upvr.createElement("TextLabel", tbl)
		return React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.layoutOrder;
		}, module_3, module_6, module_13, module_10, var37)
	end)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = 1;
	}, module_8)
end
local function createNormalSubscriptionTitle_upvr(arg1) -- Line 182, Named "createNormalSubscriptionTitle"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ImageSetLabel_upvr (readonly)
		[3]: withStyle_upvr (readonly)
	]]
	local module_2 = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			FillDirection = Enum.FillDirection.Vertical;
			Padding = UDim.new(0, 24);
		});
		Icon = React_upvr.createElement(ImageSetLabel_upvr, {
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 96, 0, 96);
			ScaleType = Enum.ScaleType.Fit;
			AutomaticSize = Enum.AutomaticSize.X;
			Image = arg1.itemIcon;
		});
	}
	local var53_upvr = false
	module_2.SubscriptionInfo = withStyle_upvr(function(arg1_4) -- Line 54
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var53_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme_2 = arg1_4.Theme
		local Font_3 = arg1_4.Font.Body.Font
		local module_11 = {}
		local tbl_3 = {
			SortOrder = Enum.SortOrder.LayoutOrder;
		}
		local var59
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var59 = Enum.HorizontalAlignment.Left
			return var59
		end
		if not var53_upvr or not INLINED_3() then
			var59 = Enum.HorizontalAlignment.Center
		end
		tbl_3.HorizontalAlignment = var59
		var59 = UDim.new(0, 8)
		tbl_3.Padding = var59
		module_11.Layout = React_upvr.createElement("UIListLayout", tbl_3)
		local module_4 = {}
		var59 = {}
		var59.Size = UDim2.new(1, 0, 0, 20)
		var59.BackgroundTransparency = 1
		var59.Text = arg1.subscriptionProviderName
		var59.TextSize = 16
		var59.TextColor3 = Theme_2.TextEmphasis.Color
		var59.TextTransparency = Theme_2.TextEmphasis.Transparency
		var59.Font = Font_3
		if not var53_upvr or not Enum.TextXAlignment.Left then
		end
		var59.TextXAlignment = Enum.TextXAlignment.Center
		var59.TextWrapped = true
		var59.LayoutOrder = arg1.layoutOrder
		module_4.AppName = React_upvr.createElement("TextLabel", var59)
		local module_12 = {}
		var59 = React_upvr
		var59 = "TextLabel"
		local tbl_2 = {
			Size = UDim2.new(1, 0, 0, 20);
			BackgroundTransparency = 1;
			Text = arg1.name;
			TextSize = 20;
			TextColor3 = Theme_2.TextEmphasis.Color;
			TextTransparency = Theme_2.TextEmphasis.Transparency;
			Font = Font_3;
		}
		if not var53_upvr or not Enum.TextXAlignment.Left then
		end
		tbl_2.TextXAlignment = Enum.TextXAlignment.Center
		tbl_2.TextWrapped = true
		tbl_2.LayoutOrder = arg1.layoutOrder + 1
		module_12.Title = var59.createElement(var59, tbl_2)
		local module = {}
		var59 = React_upvr.createElement
		local tbl_4 = {}
		local tbl_12 = {
			SortOrder = Enum.SortOrder.LayoutOrder;
		}
		if not var53_upvr or not Enum.HorizontalAlignment.Left then
		end
		tbl_12.HorizontalAlignment = Enum.HorizontalAlignment.Center
		tbl_12.FillDirection = Enum.FillDirection.Horizontal
		tbl_4.Layout = React_upvr.createElement("UIListLayout", tbl_12)
		local tbl_9 = {
			Size = UDim2.new(0, 0, 0, 16);
			BackgroundTransparency = 1;
			Text = arg1.displayPrice;
			TextSize = 16;
			TextColor3 = Theme_2.TextEmphasis.Color;
			TextTransparency = Theme_2.TextDefault.Transparency;
			Font = Font_3;
			RichText = true;
		}
		if not var53_upvr or not Enum.TextXAlignment.Left then
		end
		tbl_9.TextXAlignment = Enum.TextXAlignment.Center
		tbl_9.TextWrapped = true
		tbl_9.LayoutOrder = arg1.layoutOrder + 1
		tbl_9.AutomaticSize = Enum.AutomaticSize.X
		tbl_4.Price = React_upvr.createElement("TextLabel", tbl_9)
		local tbl_19 = {
			Size = UDim2.new(0, 0, 0, 16);
			BackgroundTransparency = 1;
			Text = arg1.period;
			TextSize = 16;
			TextColor3 = Theme_2.TextDefault.Color;
			TextTransparency = Theme_2.TextDefault.Transparency;
			Font = Font_3;
			RichText = true;
		}
		if not var53_upvr or not Enum.TextXAlignment.Left then
		end
		tbl_19.TextXAlignment = Enum.TextXAlignment.Center
		tbl_19.TextWrapped = true
		tbl_19.LayoutOrder = arg1.layoutOrder + 1
		tbl_19.AutomaticSize = Enum.AutomaticSize.X
		tbl_4.Period = React_upvr.createElement("TextLabel", tbl_19)
		var59 = var59("Frame", {
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.fromRGB(255, 0, 0);
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = arg1.layoutOrder + 2;
		}, tbl_4)
		module.PriceFrame = var59
		var59 = {}
		local tbl_18 = {
			Size = UDim2.new(1, 0, 0, 16);
			BackgroundTransparency = 1;
			Text = arg1.disclaimerText;
			TextSize = 16;
			TextColor3 = Theme_2.TextDefault.Color;
			Font = Font_3;
		}
		if not var53_upvr or not Enum.TextXAlignment.Left then
		end
		tbl_18.TextXAlignment = Enum.TextXAlignment.Center
		tbl_18.TextWrapped = true
		tbl_18.LayoutOrder = arg1.layoutOrder + 3
		var59.DisclaimerText = React_upvr.createElement("TextLabel", tbl_18)
		return React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.layoutOrder;
		}, module_11, module_4, module_12, module, var59)
	end)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = 1;
	}, module_2)
end
function any_extend_result1.getTitleHeight(arg1, arg2) -- Line 207
	if 216 < arg2 then
		return 216
	end
	return 96
end
function any_extend_result1.render(arg1) -- Line 215
	--[[ Upvalues[2]:
		[1]: createNormalSubscriptionTitle_upvr (readonly)
		[2]: createCompactSubscriptionTitle_upvr (readonly)
	]]
	if 216 < arg1.props.contentHeight then
		return createNormalSubscriptionTitle_upvr(arg1.props)
	end
	return createCompactSubscriptionTitle_upvr(arg1.props)
end
return any_extend_result1