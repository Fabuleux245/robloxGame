-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:37
-- Luau version 6, Types version 3
-- Time taken: 0.004355 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local Foundation = require(VirtualEvents.Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(VirtualEvents.Parent.React)
local Text_upvr = require(VirtualEvents.Parent.AppCommonLib).Text
local getEventCategory_upvr = require(VirtualEvents.Common.getEventCategory)
local getVirtualEventDates_upvr = require(VirtualEvents.Common.getVirtualEventDates)
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local AttendanceChip_upvr = require(VirtualEvents.Components.AttendanceChip)
local Text_upvr_2 = Foundation.Text
local DescriptionExpander_upvr = require(VirtualEvents.Components.DescriptionExpander)
local Icon_upvr = Foundation.Icon
local IconSize_upvr = Foundation.Enums.IconSize
local formatDate_upvr = require(VirtualEvents.Common.formatDate)
return function(arg1) -- Line 36, Named "EventDetailsBody"
	--[[ Upvalues[12]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Text_upvr (readonly)
		[4]: getEventCategory_upvr (readonly)
		[5]: getVirtualEventDates_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: AttendanceChip_upvr (readonly)
		[8]: Text_upvr_2 (readonly)
		[9]: DescriptionExpander_upvr (readonly)
		[10]: Icon_upvr (readonly)
		[11]: IconSize_upvr (readonly)
		[12]: formatDate_upvr (readonly)
	]]
	local useTokens_upvr_result1 = useTokens_upvr()
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 39
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Text_upvr (copied, readonly)
		]]
		if arg1.virtualEvent.description == nil then
			return nil
		end
		return Text_upvr.Trim(arg1.virtualEvent.description)
	end, {arg1.virtualEvent.description})
	local any_useMemo_result1_2 = React_upvr.useMemo(function() -- Line 46
		--[[ Upvalues[2]:
			[1]: getEventCategory_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return getEventCategory_upvr(arg1.virtualEvent)
	end, {arg1.virtualEvent})
	local useLocalization_upvr_result1 = useLocalization_upvr({
		interested = "Feature.VirtualEvents.AttendanceBeforeEvent";
		newContent = "Feature.VirtualEvents.Label.NewContent";
		itemDrop = "Feature.VirtualEvents.Label.ItemDrop";
		newSeason = "Feature.VirtualEvents.Label.NewSeason";
		newLocation = "Feature.VirtualEvents.Label.NewLocation";
		newMap = "Feature.VirtualEvents.Label.NewMap";
		moreLevels = "Feature.VirtualEvents.Label.MoreLevels";
		newFeature = "Feature.VirtualEvents.Label.NewFeature";
		earlyAccess = "Feature.VirtualEvents.Label.EarlyAccess";
		expansion = "Feature.VirtualEvents.Label.Expansion";
		challenge = "Feature.VirtualEvents.Label.Challenge";
		quest = "Feature.VirtualEvents.Label.Quest";
		festival = "Feature.VirtualEvents.Label.Festival";
	})
	local module = {}
	local tbl = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 8);
		});
		EventAttendace = React_upvr.createElement(AttendanceChip_upvr, {
			LayoutOrder = 1;
			virtualEvent = arg1.virtualEvent;
			eventStatus = arg1.eventStatus;
		});
		EventTitle = React_upvr.createElement(Text_upvr_2, {
			LayoutOrder = 2;
			Size = UDim2.new(1, 0, 0, 0);
			Text = arg1.virtualEvent.title;
			TextTruncate = Enum.TextTruncate.None;
			AutomaticSize = Enum.AutomaticSize.Y;
			RichText = true;
			textStyle = useTokens_upvr_result1.Color.Content.Emphasis;
			fontStyle = useTokens_upvr_result1.Typography.TitleLarge;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextWrapped = false;
		});
	}
	local var33
	if any_useMemo_result1 and any_useMemo_result1 ~= "" then
		var33 = React_upvr.createElement
		var33 = var33(DescriptionExpander_upvr, {
			layoutOrder = 3;
			description = any_useMemo_result1;
			width = arg1.containerSize.X - 32 - 16;
			maxHeight = arg1.containerSize.Y * 0.3;
			isExpanded = arg1.isExpanded;
			setIsExpanded = arg1.setIsExpanded;
		})
	else
		var33 = nil
	end
	tbl.Description = var33
	if any_useMemo_result1_2 and useLocalization_upvr_result1[any_useMemo_result1_2] then
		var33 = React_upvr.createElement
		var33 = var33("Frame", {
			LayoutOrder = 4;
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 6);
			});
			Icon = React_upvr.createElement(Icon_upvr, {
				LayoutOrder = 1;
				name = "icons/common/poi_small";
				size = IconSize_upvr.Small;
				style = useTokens_upvr_result1.Color.Content.Emphasis;
			});
			Label = React_upvr.createElement(Text_upvr_2, {
				LayoutOrder = 2;
				Text = useLocalization_upvr_result1[any_useMemo_result1_2];
				TextTruncate = Enum.TextTruncate.None;
				textStyle = useTokens_upvr_result1.Color.Content.Emphasis;
				fontStyle = useTokens_upvr_result1.Typography.BodyLarge;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextWrapped = false;
			});
		})
	else
		var33 = nil
	end
	tbl.EventCategory = var33
	if arg1.eventStatus == "Upcoming" then
		var33 = React_upvr.createElement
		var33 = var33("Frame", {
			LayoutOrder = 5;
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 6);
			});
			Icon = React_upvr.createElement(Icon_upvr, {
				LayoutOrder = 1;
				name = "icons/actions/calendar_small";
				size = IconSize_upvr.Small;
				style = useTokens_upvr_result1.Color.Content.Emphasis;
			});
			Label = React_upvr.createElement(Text_upvr_2, {
				LayoutOrder = 2;
				Text = formatDate_upvr(React_upvr.useMemo(function() -- Line 50
					--[[ Upvalues[2]:
						[1]: getVirtualEventDates_upvr (copied, readonly)
						[2]: arg1 (readonly)
					]]
					return getVirtualEventDates_upvr(arg1.virtualEvent)
				end, {arg1.virtualEvent}).startDate, true);
				TextTruncate = Enum.TextTruncate.None;
				textStyle = useTokens_upvr_result1.Color.Content.Emphasis;
				fontStyle = useTokens_upvr_result1.Typography.BodyLarge;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextWrapped = false;
			});
		})
	else
		var33 = nil
	end
	tbl.EventTime = var33
	module.BodyContainer = React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
		ZIndex = 1;
	}, tbl)
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 0);
	}, module)
end