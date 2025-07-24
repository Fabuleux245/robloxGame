-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:32
-- Luau version 6, Types version 3
-- Time taken: 0.005375 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local context = Parent.context
local dependencies = require(Parent.dependencies)
local UIBlox = dependencies.UIBlox
local constants_upvr = require(Parent.constants)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useNotificationCardData_upvr = require(context.useNotificationCardData)
local useNotificationCardState_upvr = require(context.useNotificationCardState)
local React_upvr = dependencies.React
local DefaultContentPadding_upvr = constants_upvr.DefaultContentPadding
local vector2_upvr = Vector2.new(36, 36)
local NotificationThumbnail_upvr = require(Parent_2.NotificationThumbnail)
local DefaultTextContentPadding_upvr = constants_upvr.DefaultTextContentPadding
local NotificationStyledText_upvr = require(Parent_2.NotificationStyledText)
local Interactable_upvr = UIBlox.Core.Control.Interactable
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local type_upvr = require(Parent.type)
return function() -- Line 21
	--[[ Upvalues[13]:
		[1]: useStyle_upvr (readonly)
		[2]: useNotificationCardData_upvr (readonly)
		[3]: constants_upvr (readonly)
		[4]: useNotificationCardState_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: DefaultContentPadding_upvr (readonly)
		[7]: vector2_upvr (readonly)
		[8]: NotificationThumbnail_upvr (readonly)
		[9]: DefaultTextContentPadding_upvr (readonly)
		[10]: NotificationStyledText_upvr (readonly)
		[11]: Interactable_upvr (readonly)
		[12]: ImageSetLabel_upvr (readonly)
		[13]: type_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useStyle_upvr_result1 = useStyle_upvr()
	local var21 = useStyle_upvr_result1.Font.BaseSize * useStyle_upvr_result1.Font.CaptionHeader.RelativeSize
	local var22 = useStyle_upvr_result1.Font.BaseSize * useStyle_upvr_result1.Font.CaptionBody.RelativeSize
	local cardSize = useNotificationCardData_upvr().cardSize
	local var24
	if not cardSize or not cardSize.thumbnail then
		var24 = constants_upvr
		local thumbnail = var24.CardSizeDefault.thumbnail
	end
	var24 = "textBody"
	local var10_result1 = useNotificationCardState_upvr(var24)
	var24 = var10_result1
	if var24 then
		var24 = var10_result1[1]
	end
	if var24 and var24.title then
		local tbl_4 = {
			Text = var24.title;
			MaxSize = Vector2.new(math.huge, var21 * 2);
			Size = UDim2.new(1, 0, 0, 0);
			TextSize = var21;
			AutomaticSize = Enum.AutomaticSize.Y;
			TextXAlignment = Enum.TextXAlignment.Left;
			LayoutOrder = 1;
			Font = useStyle_upvr_result1.Font.CaptionHeader.Font;
			TextColor3 = useStyle_upvr_result1.Theme.TextEmphasis.Color;
		}
	end
	local var28_upvr
	if var24 and var24.label then
		local tbl = {
			Text = var24.label;
			MaxSize = Vector2.new(math.huge, var22 * 2);
		}
		var28_upvr = 0
		tbl.Size = UDim2.new(1, 0, var28_upvr, 0)
		tbl.TextSize = var22
		tbl.AutomaticSize = Enum.AutomaticSize.Y
		tbl.TextXAlignment = Enum.TextXAlignment.Left
		tbl.LayoutOrder = 2
		tbl.Font = useStyle_upvr_result1.Font.CaptionBody.Font
	end
	var28_upvr = "singleMetaAction"
	local useNotificationCardState_upvr_result1 = useNotificationCardState_upvr(var28_upvr)
	var28_upvr = useNotificationCardState_upvr_result1
	if var28_upvr then
		var28_upvr = useNotificationCardState_upvr_result1[1]
	end
	local module = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, DefaultContentPadding_upvr);
		});
	}
	local tbl_3 = {
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = 1;
	}
	local var36 = 1
	tbl_3.BackgroundTransparency = var36
	if var28_upvr then
		var36 = UDim2.new(1, -(DefaultContentPadding_upvr + vector2_upvr.X), 0, 0)
	else
		var36 = UDim2.new(1, 0, 0, 0)
	end
	tbl_3.Size = var36
	local tbl_5 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			Padding = UDim.new(0, DefaultContentPadding_upvr);
		});
		NotificationThumbnailFrame = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.new(0, thumbnail, 0, thumbnail);
		}, {
			NotificationThumbnail = React_upvr.createElement(NotificationThumbnail_upvr);
		});
	}
	local tbl_2 = {
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 2);
		});
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			Padding = UDim.new(0, DefaultTextContentPadding_upvr);
		});
	}
	local var45 = tbl_4
	if var45 then
		var45 = React_upvr.createElement(NotificationStyledText_upvr, tbl_4)
	end
	tbl_2.ToastTitle = var45
	var45 = tbl
	local var46 = var45
	if var46 then
		var46 = React_upvr.createElement(NotificationStyledText_upvr, tbl)
	end
	tbl_2.ToastSubtitle = var46
	tbl_5.ToastTextFrame = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(1, -(thumbnail + DefaultContentPadding_upvr), 0, 0);
	}, tbl_2)
	local any_createElement_result1 = React_upvr.createElement("Frame", tbl_3, tbl_5)
	module.ThumbnailTextContainer = any_createElement_result1
	if var28_upvr then
		any_createElement_result1 = React_upvr.createElement
		local tbl_6 = {
			AutoButtonColor = false;
			BackgroundColor3 = useStyle_upvr_result1.Theme.UIMuted.Color;
			BackgroundTransparency = 0.9;
			LayoutOrder = 2;
			onStateChanged = function() -- Line 122, Named "onStateChanged"
			end;
		}
		local handleActions_upvr = useNotificationCardData_upvr().handleActions
		tbl_6[React_upvr.Event.Activated] = function() -- Line 123
			--[[ Upvalues[2]:
				[1]: handleActions_upvr (readonly)
				[2]: var28_upvr (readonly)
			]]
			if handleActions_upvr then
				handleActions_upvr(var28_upvr)
			end
		end
		tbl_6.Size = UDim2.fromOffset(vector2_upvr.X, vector2_upvr.Y)
		any_createElement_result1 = any_createElement_result1(Interactable_upvr, tbl_6, {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0);
			});
			Icon = React_upvr.createElement(ImageSetLabel_upvr, {
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				Image = type_upvr.MetaActionIcons[var28_upvr.actionIcon];
				ImageColor3 = useStyle_upvr_result1.Theme.IconEmphasis.Color;
				Position = UDim2.fromScale(0.5, 0.5);
				Size = UDim2.fromOffset(28, 28);
			});
		})
	else
		any_createElement_result1 = nil
	end
	module.SingleMetaAction = any_createElement_result1
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = 1;
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 0);
	}, module)
end