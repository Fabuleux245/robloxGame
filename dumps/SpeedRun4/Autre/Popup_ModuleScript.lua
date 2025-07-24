-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:22
-- Luau version 6, Types version 3
-- Time taken: 0.003730 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local createElement_upvr = React_upvr.createElement
local UIBlox = require(CorePackages.Packages.UIBlox)
local vector2_upvr = Vector2.new(8, 8)
local TextService_upvr = game:GetService("TextService")
local function Paragraph_upvr(arg1) -- Line 19, Named "Paragraph"
	--[[ Upvalues[3]:
		[1]: TextService_upvr (readonly)
		[2]: vector2_upvr (readonly)
		[3]: createElement_upvr (readonly)
	]]
	local text = arg1.text
	return createElement_upvr("TextLabel", {
		AutomaticSize = Enum.AutomaticSize.X;
		Size = UDim2.fromOffset(0, TextService_upvr:GetTextSize(text, arg1.textSize, arg1.font, Vector2.new(300 - vector2_upvr.X * 2, math.huge)).Y);
		BackgroundTransparency = 1;
		Text = text;
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		Font = arg1.font;
		TextSize = arg1.textSize;
		TextColor3 = arg1.textColor3;
		TextTransparency = arg1.textTransparency;
		LayoutOrder = arg1.layoutOrder;
	})
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useAnalytics_upvr = require(script.Parent.useAnalytics)
local List_upvr = require(CorePackages.Packages.Cryo).List
local LinkButton_upvr = UIBlox.App.Button.LinkButton
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
return function(arg1) -- Line 51
	--[[ Upvalues[9]:
		[1]: useStyle_upvr (readonly)
		[2]: useAnalytics_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: createElement_upvr (readonly)
		[5]: vector2_upvr (readonly)
		[6]: List_upvr (readonly)
		[7]: Paragraph_upvr (readonly)
		[8]: LinkButton_upvr (readonly)
		[9]: ControlState_upvr (readonly)
	]]
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	React_upvr.useEffect(function() -- Line 57
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: useAnalytics_upvr_result1_upvr (readonly)
		]]
		if arg1.visible then
			useAnalytics_upvr_result1_upvr.fireEvent("popupImpression", {
				copyType = arg1.analyticsCopyType;
			})
		end
	end, {arg1.visible})
	local module_2 = {
		layout = createElement_upvr("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 12);
		});
		padding = createElement_upvr("UIPadding", {
			PaddingTop = UDim.new(0, vector2_upvr.Y);
			PaddingBottom = UDim.new(0, vector2_upvr.Y);
			PaddingLeft = UDim.new(0, vector2_upvr.X);
			PaddingRight = UDim.new(0, vector2_upvr.X);
		});
		shape = createElement_upvr("UICorner", {
			CornerRadius = UDim.new(0, 8);
		});
	}
	local Footer_upvr = useStyle_upvr_result1_upvr.Font.Footer
	module_2.body = createElement_upvr(React_upvr.Fragment, nil, List_upvr.map(arg1.bodyText, function(arg1_2, arg2) -- Line 90
		--[[ Upvalues[4]:
			[1]: createElement_upvr (copied, readonly)
			[2]: Paragraph_upvr (copied, readonly)
			[3]: Footer_upvr (readonly)
			[4]: useStyle_upvr_result1_upvr (readonly)
		]]
		local module = {}
		module.layoutOrder = arg2
		module.text = arg1_2
		module.font = Footer_upvr.Font
		module.textSize = useStyle_upvr_result1_upvr.Font.BaseSize * Footer_upvr.RelativeSize
		module.textColor3 = useStyle_upvr_result1_upvr.Theme.TextEmphasis.Color
		module.textTransparency = useStyle_upvr_result1_upvr.Theme.TextEmphasis.Transparency
		return createElement_upvr(Paragraph_upvr, module)
	end))
	module_2.link = createElement_upvr(LinkButton_upvr, {
		text = arg1.linkText;
		fontStyle = "Footer";
		layoutOrder = 100;
		minPaddingX = 0;
		minPaddingY = 8;
		underlineAlwaysEnabled = true;
		onActivated = React_upvr.useCallback(function() -- Line 108
			--[[ Upvalues[2]:
				[1]: useAnalytics_upvr_result1_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			useAnalytics_upvr_result1_upvr.fireEvent("formInteraction", {
				aType = "click";
				input = "learn_more";
			})
			arg1.openWebview()
		end);
		onStateChanged = React_upvr.useCallback(function(arg1_3, arg2) -- Line 115
			--[[ Upvalues[2]:
				[1]: ControlState_upvr (copied, readonly)
				[2]: useAnalytics_upvr_result1_upvr (readonly)
			]]
			if arg2 == ControlState_upvr.Hover then
				useAnalytics_upvr_result1_upvr.fireEvent("formInteraction", {
					aType = "hover";
					input = "learn_more";
				})
			end
		end);
	})
	return createElement_upvr("Frame", {
		Visible = arg1.visible;
		LayoutOrder = arg1.layoutOrder;
		Size = UDim2.fromOffset(300, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundColor3 = useStyle_upvr_result1_upvr.Theme.BackgroundUIContrast.Color;
		BackgroundTransparency = useStyle_upvr_result1_upvr.Theme.BackgroundUIContrast.Transparency;
	}, module_2)
end