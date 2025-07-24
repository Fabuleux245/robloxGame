-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:31
-- Luau version 6, Types version 3
-- Time taken: 0.002926 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local constants_upvr = require(Parent.constants)
local dependencies = require(Parent.dependencies)
local context = Parent.context
local UIBlox = dependencies.UIBlox
local useNotificationCardData_upvr = require(context.useNotificationCardData)
local DefaultCardPadding_upvr = constants_upvr.Padding.DefaultCardPadding
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useNotificationCardState_upvr = require(context.useNotificationCardState)
local React_upvr = dependencies.React
local Interactable_upvr = UIBlox.Core.Control.Interactable
local DefaultCardCornerRadius_upvr = constants_upvr.DefaultCardCornerRadius
local DefaultContentPadding_upvr = constants_upvr.DefaultContentPadding
local NotificationContentFrame_upvr = require(Parent_2.NotificationContentFrame)
local NotificationActionsFrame_upvr = require(Parent_2.NotificationActionsFrame)
return function(arg1) -- Line 27
	--[[ Upvalues[11]:
		[1]: useNotificationCardData_upvr (readonly)
		[2]: constants_upvr (readonly)
		[3]: DefaultCardPadding_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useNotificationCardState_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: Interactable_upvr (readonly)
		[8]: DefaultCardCornerRadius_upvr (readonly)
		[9]: DefaultContentPadding_upvr (readonly)
		[10]: NotificationContentFrame_upvr (readonly)
		[11]: NotificationActionsFrame_upvr (readonly)
	]]
	local useNotificationCardData_upvr_result1 = useNotificationCardData_upvr()
	local cardSize = useNotificationCardData_upvr_result1.cardSize
	local var20
	if useNotificationCardData_upvr_result1.cardTransparency then
		var20 = useNotificationCardData_upvr_result1.cardTransparency
	else
		var20 = constants_upvr.CardTransparency.Default
		local var21
	end
	if cardSize and cardSize.cardPadding then
		var21 = cardSize.cardPadding
	else
		var21 = DefaultCardPadding_upvr
	end
	local var11_result1 = useNotificationCardState_upvr("textBody")
	local var23_upvr = var11_result1
	if var23_upvr then
		var23_upvr = var11_result1[1]
	end
	local module = {
		AutoButtonColor = false;
		BackgroundColor3 = useStyle_upvr().Theme.BackgroundUIDefault.Color;
		BackgroundTransparency = var20;
		BorderSizePixel = 0;
		AutomaticSize = Enum.AutomaticSize.Y;
		onStateChanged = function() -- Line 45, Named "onStateChanged"
		end;
		Size = UDim2.new(1, 0, 0, 0);
	}
	local handleActions_upvr = useNotificationCardData_upvr_result1.handleActions
	module[React_upvr.Event.Activated] = function() -- Line 47
		--[[ Upvalues[2]:
			[1]: handleActions_upvr (readonly)
			[2]: var23_upvr (readonly)
		]]
		if handleActions_upvr and var23_upvr then
			handleActions_upvr(var23_upvr)
		end
	end
	return React_upvr.createElement(Interactable_upvr, module, {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = DefaultCardCornerRadius_upvr;
		});
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			Padding = UDim.new(0, DefaultContentPadding_upvr);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, var21);
			PaddingLeft = UDim.new(0, var21);
			PaddingRight = UDim.new(0, var21);
			PaddingTop = UDim.new(0, var21);
		});
		NotificationContentFrame = React_upvr.createElement(NotificationContentFrame_upvr);
		NotificationActionsFrame = React_upvr.createElement(NotificationActionsFrame_upvr);
	})
end