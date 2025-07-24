-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:33
-- Luau version 6, Types version 3
-- Time taken: 0.008964 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local AppChatNetworking = require(Parent.AppChatNetworking)
local Images = UIBlox.App.ImageSet.Images
local FFlagAppChatModalImpressionImprovements_upvr = require(AppChat.Flags.FFlagAppChatModalImpressionImprovements)
local tbl_10_upvr = {
	[AppChatNetworking.Constants.ModalContentType.Link] = function(arg1) -- Line 36
		--[[ Upvalues[2]:
			[1]: useStyle_upvr (readonly)
			[2]: React_upvr (readonly)
		]]
		local var5_result1 = useStyle_upvr()
		return React_upvr.createElement("TextButton", {
			Size = UDim2.new(1, 0, 0, 0);
			LayoutOrder = arg1.layoutOrder;
			Font = var5_result1.Font.Body.Font;
			BorderSizePixel = 0;
			Text = `<u>{arg1.content.text}</u>`;
			RichText = true;
			TextColor3 = var5_result1.Theme.TextDefault.Color;
			TextSize = var5_result1.Font.CaptionBody.RelativeSize * var5_result1.Font.BaseSize;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			[React_upvr.Event.Activated] = arg1.content.onActivated;
		})
	end;
	[AppChatNetworking.Constants.ModalContentType.Text] = function(arg1) -- Line 54
		--[[ Upvalues[2]:
			[1]: useStyle_upvr (readonly)
			[2]: React_upvr (readonly)
		]]
		local var5_result1_2 = useStyle_upvr()
		return React_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, 0);
			LayoutOrder = arg1.layoutOrder;
			Font = var5_result1_2.Font.Body.Font;
			BorderSizePixel = 0;
			Text = arg1.content.text;
			TextColor3 = var5_result1_2.Theme.TextDefault.Color;
			TextSize = var5_result1_2.Font.CaptionBody.RelativeSize * var5_result1_2.Font.BaseSize;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
		})
	end;
}
local tbl_8_upvr = {
	titleText = "";
	bodyText = "";
	actionText = "";
	additionalContent = {};
	buttonType = UIBlox.App.Button.Enum.ButtonType.PrimarySystem;
	paddingX = 12;
	hideActionButton = false;
	onActivated = function() -- Line 103, Named "onActivated"
	end;
	onDismissed = function() -- Line 104, Named "onDismissed"
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local useChatPagePadding_upvr = require(AppChat.Contexts.ChatPagePadding.useChatPagePadding)
local FFlagAppChatEnableTC_upvr = require(Parent.SharedFlags).FFlagAppChatEnableTC
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local Label_upvr = require(AppChat.Components.Label.Label)
local icons_actions_favoriteOn_upvr = Images["icons/actions/favoriteOn"]
local IconButton_upvr = UIBlox.App.Button.IconButton
local icons_navigation_close_upvr = Images["icons/navigation/close"]
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local function var17(arg1, arg2) -- Line 107
	--[[ Upvalues[15]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[5]: useChatPagePadding_upvr (readonly)
		[6]: FFlagAppChatEnableTC_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: tbl_10_upvr (readonly)
		[9]: any_new_result1_upvr (readonly)
		[10]: FFlagAppChatModalImpressionImprovements_upvr (readonly)
		[11]: Label_upvr (readonly)
		[12]: icons_actions_favoriteOn_upvr (readonly)
		[13]: IconButton_upvr (readonly)
		[14]: icons_navigation_close_upvr (readonly)
		[15]: ButtonStack_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_8_upvr, arg1)
	local var29 = any_join_result1_upvr.style or useStyle_upvr()
	local var30
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		var30 = useChatPagePadding_upvr()
	else
		var30 = {}
		var30.left = 12
		var30.right = 12
	end
	local Space_100 = var29.Tokens.Global.Space_100
	local Medium = var29.Tokens.Semantic.Icon.Size.Medium
	if FFlagAppChatEnableTC_upvr then
		local any_useMemo_result1, any_useMemo_result2 = React_upvr.useMemo(function() -- Line 124
			--[[ Upvalues[5]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: any_join_result1_upvr (readonly)
				[3]: tbl_10_upvr (copied, readonly)
				[4]: React_upvr (copied, readonly)
				[5]: any_new_result1_upvr (copied, readonly)
			]]
			local any_map_result1 = Cryo_upvr.Dictionary.map(any_join_result1_upvr.additionalContent, function(arg1_2, arg2_2) -- Line 125
				--[[ Upvalues[3]:
					[1]: tbl_10_upvr (copied, readonly)
					[2]: React_upvr (copied, readonly)
					[3]: any_new_result1_upvr (copied, readonly)
				]]
				local type = arg1_2.type
				local var36 = tbl_10_upvr[type]
				if var36 then
					type = React_upvr.createElement
					local tbl_9 = {
						layoutOrder = arg2_2 + 2;
					}
					tbl_9.content = arg1_2
					type = type(var36, tbl_9)
				else
					type = nil
				end
				if type then
					return type, `additionalContent_{arg2_2}`
				end
				any_new_result1_upvr:warning(`Unsupported additional content type: {arg1_2.type}`)
				return nil, nil
			end)
			return any_map_result1, not Cryo_upvr.isEmpty(any_map_result1)
		end, {any_join_result1_upvr.additionalContent})
	end
	local module = {
		BackgroundTransparency = 1;
		LayoutOrder = any_join_result1_upvr.LayoutOrder;
		Size = UDim2.new(1, 0, 0, 0);
	}
	local Y = Enum.AutomaticSize.Y
	module.AutomaticSize = Y
	if FFlagAppChatModalImpressionImprovements_upvr then
		Y = arg2
	else
		Y = nil
	end
	module.ref = Y
	local module_2 = {}
	local tbl_7 = {
		PaddingTop = UDim.new(0, Space_100);
		PaddingBottom = UDim.new(0, Space_100);
	}
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		-- KONSTANTWARNING: GOTO [134] #97
	end
	tbl_7.PaddingLeft = UDim.new(0, any_join_result1_upvr.paddingX)
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		-- KONSTANTWARNING: GOTO [148] #107
	end
	tbl_7.PaddingRight = UDim.new(0, any_join_result1_upvr.paddingX)
	module_2.ContentPadding = React_upvr.createElement("UIPadding", tbl_7)
	local tbl = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, Space_100 * 2);
		});
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, var29.Tokens.Semantic.Radius.Medium);
		});
		UIStroke = React_upvr.createElement("UIStroke", {
			Thickness = var29.Tokens.Global.Stroke_100;
			Color = var29.Theme.Divider.Color;
			Transparency = var29.Theme.Divider.Transparency;
		});
		ContentPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, Space_100);
			PaddingBottom = UDim.new(0, Space_100);
			PaddingLeft = UDim.new(0, Space_100);
			PaddingRight = UDim.new(0, Space_100);
		});
	}
	local tbl_4 = {
		HorizontalLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Top;
		});
	}
	local tbl_12 = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, Space_100);
		});
	}
	local tbl_2 = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, Space_100);
		});
	}
	if not any_join_result1_upvr.titleLabelText then
		-- KONSTANTWARNING: GOTO [477] #324
	end
	tbl_2.TitleLabelWithIcon = React_upvr.createElement(Label_upvr, {
		bodyText = any_join_result1_upvr.titleLabelText;
		iconImage = icons_actions_favoriteOn_upvr;
		layoutOrder = 1;
	})
	tbl_2.TitleTextLabel = React_upvr.createElement("TextLabel", {
		Size = UDim2.new(1, 0, 0, 0);
		LayoutOrder = 2;
		Font = var29.Font.Title.Font;
		BorderSizePixel = 0;
		Text = any_join_result1_upvr.titleText;
		TextColor3 = var29.Theme.TextEmphasis.Color;
		TextSize = var29.Font.Header2.RelativeSize * var29.Font.BaseSize;
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, {
		UIFlexItem = React_upvr.createElement("UIFlexItem", {
			FlexMode = Enum.UIFlexMode.Fill;
		});
	})
	tbl_12.LabelAndTextFrame = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, tbl_2)
	tbl_12.BodyTextLabel = React_upvr.createElement("TextLabel", {
		Size = UDim2.new(1, 0, 0, 0);
		LayoutOrder = 2;
		Font = var29.Font.Body.Font;
		BorderSizePixel = 0;
		Text = any_join_result1_upvr.bodyText;
		TextColor3 = var29.Theme.TextDefault.Color;
		TextSize = var29.Font.CaptionBody.RelativeSize * var29.Font.BaseSize;
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
	})
	local var66
	if FFlagAppChatEnableTC_upvr and any_useMemo_result2 then
		var66 = React_upvr.createElement(React_upvr.Fragment, {}, any_useMemo_result1)
	else
		var66 = nil
	end
	tbl_12.AdditionalContent = var66
	tbl_4.TextFrame = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, -Medium - Space_100, 0, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, tbl_12)
	local tbl_3 = {}
	var66 = 0
	tbl_3.size = UDim2.new(var66, Medium, 0, Medium)
	tbl_3.icon = icons_navigation_close_upvr
	tbl_3.onActivated = any_join_result1_upvr.onDismissed
	tbl_3.layoutOrder = 2
	tbl_4.ImageIcon = React_upvr.createElement(IconButton_upvr, tbl_3)
	tbl.IconAndTextFrame = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, tbl_4)
	if any_join_result1_upvr.hideActionButton then
		local _
	else
		local tbl_5 = {}
		local tbl_11 = {
			forcedFillDirection = Enum.FillDirection.Horizontal;
		}
		local tbl_6 = {}
		var66 = {}
		var66.buttonType = any_join_result1_upvr.buttonType
		var66.props = {
			onActivated = any_join_result1_upvr.onActivated;
			text = any_join_result1_upvr.actionText;
		}
		tbl_6[1] = var66
		tbl_11.buttons = tbl_6
		tbl_5.ButtonStack = React_upvr.createElement(ButtonStack_upvr, tbl_11)
	end
	tbl.Buttons = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		Size = UDim2.new(1, 0, 0, var29.Tokens.Global.Size_500);
	}, tbl_5)
	module_2.Content = React_upvr.createElement("Frame", {
		BackgroundTransparency = var29.Theme.SystemPrimaryContent.Transparency;
		BackgroundColor3 = var29.Theme.SystemPrimaryContent.Color;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
	}, tbl)
	return React_upvr.createElement("Frame", module, module_2)
end
if FFlagAppChatModalImpressionImprovements_upvr then
	return React_upvr.forwardRef(var17)
end
return var17