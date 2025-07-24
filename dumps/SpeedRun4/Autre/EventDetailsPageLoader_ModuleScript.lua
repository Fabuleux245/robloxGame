-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:39
-- Luau version 6, Types version 3
-- Time taken: 0.003234 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useQuery_upvr = require(VirtualEvents.Parent.ApolloClient).useQuery
local requests_upvr = require(VirtualEvents.requests)
local getRetrievalStatusFromApolloQuery_upvr = require(VirtualEvents.Common.getRetrievalStatusFromApolloQuery)
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local FFlagLuaAppLogCreatorSuccessVirtualEventsLayerExposure_upvr = require(VirtualEvents.Flags.FFlagLuaAppLogCreatorSuccessVirtualEventsLayerExposure)
local FFlagLuaAppCreatorSuccessVirtualEventsLayerUseRoactExperiment_upvr = require(VirtualEvents.Flags.FFlagLuaAppCreatorSuccessVirtualEventsLayerUseRoactExperiment)
local React_upvr = require(VirtualEvents.Parent.React)
local IXPService_upvr = game:GetService("IXPService")
local AppUserLayers_upvr = require(VirtualEvents.Parent.ExperimentLayers).AppUserLayers
local useUserExperiment_upvr = require(VirtualEvents.Parent.RoactAppExperiment).useUserExperiment
local EventDetailsNewModalIXP_upvr = require(VirtualEvents.Experiments.EventDetailsNewModalIXP)
local LoadingStateContainer_upvr = UIBlox.App.Container.LoadingStateContainer
local RetrievalStatus_upvr = UIBlox.App.Loading.Enum.RetrievalStatus
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
local Foundation_upvr = require(VirtualEvents.Parent.Foundation)
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local EventDetailsVerticalPage_upvr = require(VirtualEvents.Components.EventDetailsVerticalPage)
local EventDetailsPage_upvr = require(VirtualEvents.Components.EventDetailsPage)
local EmptyState_upvr = UIBlox.App.Indicator.EmptyState
return function(arg1) -- Line 36, Named "EventDetailsPageLoader"
	--[[ Upvalues[19]:
		[1]: useQuery_upvr (readonly)
		[2]: requests_upvr (readonly)
		[3]: getRetrievalStatusFromApolloQuery_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: FFlagLuaAppLogCreatorSuccessVirtualEventsLayerExposure_upvr (readonly)
		[6]: FFlagLuaAppCreatorSuccessVirtualEventsLayerUseRoactExperiment_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: IXPService_upvr (readonly)
		[9]: AppUserLayers_upvr (readonly)
		[10]: useUserExperiment_upvr (readonly)
		[11]: EventDetailsNewModalIXP_upvr (readonly)
		[12]: LoadingStateContainer_upvr (readonly)
		[13]: RetrievalStatus_upvr (readonly)
		[14]: Cryo_upvr (readonly)
		[15]: Foundation_upvr (readonly)
		[16]: AppStyleProvider_upvr (readonly)
		[17]: EventDetailsVerticalPage_upvr (readonly)
		[18]: EventDetailsPage_upvr (readonly)
		[19]: EmptyState_upvr (readonly)
	]]
	local useQuery_upvr_result1_upvr = useQuery_upvr(requests_upvr.GET_VIRTUAL_EVENT, {
		variables = {
			virtualEventId = arg1.virtualEventId;
		};
	})
	local var26
	if arg1.mockNetworkStatus then
		var26 = arg1.mockNetworkStatus
	end
	if FFlagLuaAppLogCreatorSuccessVirtualEventsLayerExposure_upvr and not FFlagLuaAppCreatorSuccessVirtualEventsLayerUseRoactExperiment_upvr then
		local function var27() -- Line 57
			--[[ Upvalues[2]:
				[1]: IXPService_upvr (copied, readonly)
				[2]: AppUserLayers_upvr (copied, readonly)
			]]
			IXPService_upvr:LogUserLayerExposure(AppUserLayers_upvr.CreatorSuccessVirtualEvents)
		end
		React_upvr.useEffect(var27, {})
	end
	local var28_upvw
	var27 = nil
	local var29_upvw = var27
	if FFlagLuaAppCreatorSuccessVirtualEventsLayerUseRoactExperiment_upvr then
		local var12_result1, var12_result2 = useUserExperiment_upvr({AppUserLayers_upvr.CreatorSuccessVirtualEvents}, function(arg1_2) -- Line 66
			--[[ Upvalues[1]:
				[1]: AppUserLayers_upvr (copied, readonly)
			]]
			local var32 = arg1_2[AppUserLayers_upvr.CreatorSuccessVirtualEvents]
			if not var32 then
				var32 = {}
			end
			return var32.EnableEventDetailsNewModal, var32.NotifyMeUseEmphasisVariant
		end, true)
		var28_upvw = var12_result1
		var29_upvw = var12_result2
	else
		var28_upvw = EventDetailsNewModalIXP_upvr.EnableEventDetailsNewModal()
		var29_upvw = false
	end
	local module = {
		dataStatus = RetrievalStatus_upvr.fromRawValue(var26);
		renderOnLoaded = function() -- Line 79, Named "renderOnLoaded"
			--[[ Upvalues[12]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: useQuery_upvr_result1_upvr (readonly)
				[4]: FFlagLuaAppCreatorSuccessVirtualEventsLayerUseRoactExperiment_upvr (copied, readonly)
				[5]: var29_upvw (read and write)
				[6]: var28_upvw (read and write)
				[7]: EventDetailsNewModalIXP_upvr (copied, readonly)
				[8]: React_upvr (copied, readonly)
				[9]: Foundation_upvr (copied, readonly)
				[10]: AppStyleProvider_upvr (copied, readonly)
				[11]: EventDetailsVerticalPage_upvr (copied, readonly)
				[12]: EventDetailsPage_upvr (copied, readonly)
			]]
			local tbl = {
				virtualEvent = useQuery_upvr_result1_upvr.data.virtualEvent;
			}
			local None = Cryo_upvr.None
			tbl.virtualEventId = None
			local var38
			if FFlagLuaAppCreatorSuccessVirtualEventsLayerUseRoactExperiment_upvr then
				None = var29_upvw
			else
				None = false
			end
			tbl.notifyMeUseEmphasisVariant = None
			local any_join_result1 = Cryo_upvr.Dictionary.join(var38, tbl)
			if FFlagLuaAppCreatorSuccessVirtualEventsLayerUseRoactExperiment_upvr then
				var38 = var28_upvw
			else
				var38 = EventDetailsNewModalIXP_upvr.EnableEventDetailsNewModal()
			end
			if var38 then
				return React_upvr.createElement(React_upvr.Fragment, nil, {
					FoundationProvider = React_upvr.createElement(Foundation_upvr.FoundationProvider, {
						theme = Foundation_upvr.Enums.Theme.Dark;
					}, {
						AppStyleProvider = React_upvr.createElement(AppStyleProvider_upvr, {
							style = {
								themeName = "dark";
							};
						}, {
							EventDetailsPage = React_upvr.createElement(EventDetailsVerticalPage_upvr, any_join_result1);
						});
					});
				})
			end
			return React_upvr.createElement(React_upvr.Fragment, nil, {
				EventDetailsPage = React_upvr.createElement(EventDetailsPage_upvr, any_join_result1);
			})
		end;
	}
	local var6_result1_upvr = useLocalization_upvr({
		notFound = "Feature.VirtualEvents.EventNotFound";
	})
	function module.renderOnFailed() -- Line 113
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: EmptyState_upvr (copied, readonly)
			[3]: var6_result1_upvr (readonly)
		]]
		return React_upvr.createElement(React_upvr.Fragment, nil, {
			EventNotFound = React_upvr.createElement(EmptyState_upvr, {
				text = var6_result1_upvr.notFound;
			});
		})
	end
	return React_upvr.createElement(LoadingStateContainer_upvr, module)
end