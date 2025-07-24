-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:43
-- Luau version 6, Types version 3
-- Time taken: 0.002725 seconds

local Parent = script.Parent.Parent.Parent
local UIBlox = require(Parent.UIBlox)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local React_upvr = require(Parent.React)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local PlayerName_upvr = UIBlox.App.Indicator.PlayerName
local PlayerContext_upvr = UIBlox.App.Indicator.PlayerContext
return function(arg1) -- Line 40
	--[[ Upvalues[6]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Button_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
		[5]: PlayerName_upvr (readonly)
		[6]: PlayerContext_upvr (readonly)
	]]
	local useDesignTokens_upvr_result1_upvr = useDesignTokens_upvr(function(arg1_2) -- Line 41
		return {
			contextTextSpacing = arg1_2.Global.Space_75;
			joinEventSpacing = arg1_2.Global.Space_150;
			padding = arg1_2.Global.Space_200;
			joinEventButtonHeight = arg1_2.Global.Size_600;
		}
	end)
	local function _() -- Line 50
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: useDesignTokens_upvr_result1_upvr (readonly)
			[4]: Button_upvr (copied, readonly)
			[5]: ButtonType_upvr (copied, readonly)
		]]
		local var14
		if arg1.renderJoinEventButton or arg1.joinEventText then
			local module_2 = {
				LayoutOrder = 5;
			}
			var14 = 1
			module_2.Size = UDim2.new(var14, 0, 0, 0)
			module_2.AutomaticSize = Enum.AutomaticSize.Y
			module_2.BackgroundTransparency = 1
			local module_3 = {}
			var14 = React_upvr.createElement
			var14 = var14("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
			})
			module_3.UIListLayout = var14
			var14 = React_upvr.createElement
			var14 = var14("Frame", {
				BackgroundTransparency = 1;
				LayoutOrder = 4;
				Size = UDim2.new(1, 0, 0, useDesignTokens_upvr_result1_upvr.joinEventSpacing);
			})
			module_3.JoinEventSpacing = var14
			if arg1.renderJoinEventButton then
				var14 = arg1.renderJoinEventButton()
			else
				var14 = React_upvr.createElement
				var14 = var14(Button_upvr, {
					buttonType = ButtonType_upvr.PrimaryContextual;
					onActivated = arg1.joinEventOnActivated;
					isLoading = false;
					size = UDim2.new(1, 0, 0, useDesignTokens_upvr_result1_upvr.joinEventButtonHeight);
					text = arg1.joinEventText;
					layoutOrder = 5;
				})
			end
			module_3.JoinButton = var14
			return React_upvr.createElement("Frame", module_2, module_3)
		end
		return nil
	end
	local module = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
		});
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, useDesignTokens_upvr_result1_upvr.padding);
			PaddingBottom = UDim.new(0, useDesignTokens_upvr_result1_upvr.padding);
			PaddingLeft = UDim.new(0, useDesignTokens_upvr_result1_upvr.padding);
			PaddingRight = UDim.new(0, useDesignTokens_upvr_result1_upvr.padding);
		});
	}
	local any_createElement_result1 = React_upvr.createElement(PlayerName_upvr, {
		automaticSize = Enum.AutomaticSize.XY;
		displayNameItem = arg1.displayNameItem;
		layoutOrder = 1;
		userNameItem = arg1.userNameItem;
		vendorNameItem = arg1.vendorNameItem;
	})
	module.PlayerName = any_createElement_result1
	if arg1.contextText then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			Size = UDim2.new(1, 0, 0, useDesignTokens_upvr_result1_upvr.contextTextSpacing);
		})
	else
		any_createElement_result1 = nil
	end
	module.ContextTextSpacing = any_createElement_result1
	if arg1.contextText then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(PlayerContext_upvr, {
			icon = arg1.contextIcon;
			iconColor = arg1.contextIconColor;
			iconTransparency = arg1.contextIconTransparency;
			text = arg1.contextText;
			layoutOrder = 3;
			Selectable = false;
		})
	else
		any_createElement_result1 = nil
	end
	module.PlayerContext = any_createElement_result1
	any_createElement_result1 = _()
	module.JoinButton = any_createElement_result1
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(1, 0, 0, 0);
		BackgroundTransparency = 1;
		[React_upvr.Change.AbsoluteSize] = function(arg1_3) -- Line 88
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.onHeaderHeightChanged(arg1_3.AbsoluteSize.Y)
		end;
	}, module)
end