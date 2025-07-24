-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:43
-- Luau version 6, Types version 3
-- Time taken: 0.004849 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local tbl_upvr = {
	initialEventsShown = 1;
	extraEventsShownOnLoad = 3;
	isDesktopGrid = false;
}
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
local getFFlagRemoveVirtualEventsExperiment_upvr = require(VirtualEvents.Parent.SharedFlags).getFFlagRemoveVirtualEventsExperiment
local useUserExperiment_upvr = require(VirtualEvents.Parent.RoactAppExperiment).useUserExperiment
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local React_upvr = require(VirtualEvents.Parent.React)
local sortEventsByStartDate_upvr = require(VirtualEvents.Common.sortEventsByStartDate)
local EventRow_upvr = require(script.Parent.EventRow)
local udim_upvr = UDim.new(0, 12)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local PaginatedVerticalList_upvr = require(script.Parent.PaginatedVerticalList)
local ExposureLogger_upvr = require(script.Parent.ExposureLogger)
return function(arg1) -- Line 47, Named "EventsList"
	--[[ Upvalues[13]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: getFFlagRemoveVirtualEventsExperiment_upvr (readonly)
		[4]: useUserExperiment_upvr (readonly)
		[5]: useStyle_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: sortEventsByStartDate_upvr (readonly)
		[9]: EventRow_upvr (readonly)
		[10]: udim_upvr (readonly)
		[11]: StyledTextLabel_upvr (readonly)
		[12]: PaginatedVerticalList_upvr (readonly)
		[13]: ExposureLogger_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var25
	if getFFlagRemoveVirtualEventsExperiment_upvr() then
		var25 = nil
	else
		var25 = useUserExperiment_upvr
		var25 = var25({"Ecosystems.EventsOnExperienceDetailsPage"}, function(arg1_2) -- Line 54
			local Ecosystems_EventsOnExperienceDetailsPage = arg1_2["Ecosystems.EventsOnExperienceDetailsPage"]
			if Ecosystems_EventsOnExperienceDetailsPage then
				return Ecosystems_EventsOnExperienceDetailsPage.virtualEventsMVPEnabled
			end
			return nil
		end, false)
	end
	if any_join_result1_upvr.mockVirtualEventsMVPEnabled ~= nil then
		var25 = any_join_result1_upvr.mockVirtualEventsMVPEnabled
	end
	local var7_result1 = useStyle_upvr()
	local useLocalization_upvr_result1 = useLocalization_upvr({
		title = "Feature.VirtualEvents.EventsListTitle";
	})
	if #any_join_result1_upvr.virtualEvents == 0 then
		return nil
	end
	local tbl = {}
	for i, v_upvr in sortEventsByStartDate_upvr(any_join_result1_upvr.virtualEvents), nil do
		local tbl_2 = {
			virtualEvent = v_upvr;
		}
		local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function(arg1_3, arg2) -- Line 68
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvr (readonly)
			]]
			if any_join_result1_upvr.onRsvpChanged then
				any_join_result1_upvr.onRsvpChanged(arg1_3, arg2)
			end
		end, {any_join_result1_upvr.onRsvpChanged})
		function tbl_2.onRsvpChanged(...) -- Line 102
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr_3 (readonly)
				[2]: v_upvr (readonly)
			]]
			any_useCallback_result1_upvr_3(v_upvr, ...)
		end
		local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function(arg1_4) -- Line 74
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvr (readonly)
			]]
			if any_join_result1_upvr.onJoinEvent then
				any_join_result1_upvr.onJoinEvent(arg1_4)
			end
		end, {})
		function tbl_2.onJoinEvent() -- Line 105
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr_4 (readonly)
				[2]: v_upvr (readonly)
			]]
			any_useCallback_result1_upvr_4(v_upvr)
		end
		local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_5) -- Line 80
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvr (readonly)
			]]
			if any_join_result1_upvr.onTileActivated then
				any_join_result1_upvr.onTileActivated(arg1_5)
			end
		end, {})
		function tbl_2.onTileActivated() -- Line 108
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr (readonly)
				[2]: v_upvr (readonly)
			]]
			any_useCallback_result1_upvr(v_upvr)
		end
		local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_6) -- Line 86
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvr (readonly)
			]]
			if any_join_result1_upvr.onEventImpression then
				any_join_result1_upvr.onEventImpression(arg1_6)
			end
		end, {any_join_result1_upvr.onEventImpression})
		function tbl_2.onImpression() -- Line 111
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr_2 (readonly)
				[2]: v_upvr (readonly)
			]]
			any_useCallback_result1_upvr_2(v_upvr)
		end
		table.insert(tbl, React_upvr.createElement(EventRow_upvr, tbl_2))
		local _
	end
	if getFFlagRemoveVirtualEventsExperiment_upvr() then
		local module = {}
		i = any_join_result1_upvr.layoutOrder
		module.LayoutOrder = i
		i = UDim2.fromScale
		v_upvr = 1
		i = i(v_upvr, 0)
		module.Size = i
		i = Enum.AutomaticSize.Y
		module.AutomaticSize = i
		i = 1
		module.BackgroundTransparency = i
		i = {}
		v_upvr = React_upvr.createElement
		v_upvr = v_upvr("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = udim_upvr;
		})
		i.Layout = v_upvr
		v_upvr = React_upvr.createElement
		v_upvr = v_upvr(StyledTextLabel_upvr, {
			layoutOrder = 1;
			text = useLocalization_upvr_result1.title;
			colorStyle = var7_result1.Theme.TextEmphasis;
			fontStyle = var7_result1.Font.Header1;
		})
		i.Title = v_upvr
		v_upvr = React_upvr.createElement
		v_upvr = v_upvr(PaginatedVerticalList_upvr, {
			layoutOrder = 2;
			initialItemsShown = any_join_result1_upvr.initialEventsShown;
			extraItemsShownOnLoad = any_join_result1_upvr.extraEventsShownOnLoad;
			items = tbl;
			isDesktopGrid = any_join_result1_upvr.isDesktopGrid;
		})
		i.PaginatedList = v_upvr
		return React_upvr.createElement("Frame", module, i)
	end
	local module_2 = {}
	local any_createElement_result1 = React_upvr.createElement(ExposureLogger_upvr, {
		exposureLayer = "Ecosystems.EventsOnExperienceDetailsPage";
	})
	module_2.ExposureLogger = any_createElement_result1
	if var25 then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("Frame", {
			Size = UDim2.fromScale(1, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = udim_upvr;
			});
			Title = React_upvr.createElement(StyledTextLabel_upvr, {
				layoutOrder = 1;
				text = useLocalization_upvr_result1.title;
				colorStyle = var7_result1.Theme.TextEmphasis;
				fontStyle = var7_result1.Font.Header1;
			});
			PaginatedList = React_upvr.createElement(PaginatedVerticalList_upvr, {
				layoutOrder = 2;
				initialItemsShown = any_join_result1_upvr.initialEventsShown;
				extraItemsShownOnLoad = any_join_result1_upvr.extraEventsShownOnLoad;
				items = tbl;
				isDesktopGrid = any_join_result1_upvr.isDesktopGrid;
			});
		})
	else
		any_createElement_result1 = nil
	end
	module_2.Wrapper = any_createElement_result1
	return React_upvr.createElement("Frame", {
		LayoutOrder = any_join_result1_upvr.layoutOrder;
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
	}, module_2)
end