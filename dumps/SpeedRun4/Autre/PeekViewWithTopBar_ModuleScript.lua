-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:46
-- Luau version 6, Types version 3
-- Time taken: 0.004506 seconds

local Parent = script:FindFirstAncestor("PeekView").Parent
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local AppEventIngestService_upvr = require(Parent.RoactServiceTags).AppEventIngestService
local useRouteName_upvr = require(Parent.Navigation).useRouteName
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local React_upvr = require(Parent.React)
local PeekViewState_upvr = require(script.Parent.PeekViewState)
local peekViewDismissedEvent_upvr = require(script.Parent.analytics.peekViewDismissedEvent)
local Cryo_upvr = require(Parent.Cryo)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local GetFFlagFixPeekViewBottomInset_upvr = require(Parent.SharedFlags).GetFFlagFixPeekViewBottomInset
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("RemovePeekViewBorder", false)
local PeekView_upvr = require(script.Parent.PeekView)
return function(arg1) -- Line 48, Named "PeekViewWithTopBar"
	--[[ Upvalues[12]:
		[1]: useRoactService_upvr (readonly)
		[2]: AppEventIngestService_upvr (readonly)
		[3]: useRouteName_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: PeekViewState_upvr (readonly)
		[7]: peekViewDismissedEvent_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: useSelector_upvr (readonly)
		[10]: GetFFlagFixPeekViewBottomInset_upvr (readonly)
		[11]: game_DefineFastFlag_result1_upvr (readonly)
		[12]: PeekView_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var2_result1_upvr = useRoactService_upvr(AppEventIngestService_upvr)
	local var4_result1_upvr = useRouteName_upvr()
	local var5_result1 = useStyle_upvr()
	local onClosed_upvr = arg1.onClosed
	local onViewStateChanged_upvr = arg1.onViewStateChanged
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_3) -- Line 78
		--[[ Upvalues[1]:
			[1]: GetFFlagFixPeekViewBottomInset_upvr (copied, readonly)
		]]
		if GetFFlagFixPeekViewBottomInset_upvr() then
			local GlobalGuiInset = arg1_3.GlobalGuiInset
			if not GlobalGuiInset then
				GlobalGuiInset = {}
				GlobalGuiInset.bottom = 0
			end
			return GlobalGuiInset
		end
		return nil
	end)
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	local module = {
		Position = UDim2.fromOffset(0, 0);
	}
	local viewWidth = arg1.viewWidth
	if not viewWidth then
		viewWidth = UDim.new(1, 0)
	end
	module.Size = UDim2.new(viewWidth, UDim.new(1, 0))
	module.BackgroundTransparency = 1
	module.BorderSizePixel = 0
	local module_2 = {}
	local tbl = {
		Position = UDim2.new(0, 0, 0, 0);
		Size = UDim2.new(1, 0, 0, arg1.topBarHeight);
		BackgroundColor3 = var5_result1.Theme.BackgroundDefault.Color;
		Active = false;
		BackgroundTransparency = 0;
		BorderColor3 = var5_result1.Tokens.Semantic.Color.Common.Placeholder.Color3;
	}
	if game_DefineFastFlag_result1_upvr then
	else
	end
	tbl.BorderSizePixel = 1
	local var33
	tbl.GroupTransparency = any_useBinding_result1:map(function(arg1_5) -- Line 108
		return 1 - arg1_5
	end)
	tbl.ZIndex = 2
	var33 = var33("CanvasGroup", tbl, {
		PeekViewTopBarInner = arg1.topBarSlot;
	})
	module_2.PeekViewTopBar = var33
	var33 = React_upvr.createElement
	var33 = var33("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		ClipsDescendants = true;
	}, {
		PeekView = React_upvr.createElement(PeekView_upvr, {
			hasScrim = true;
			fullViewContentHeight = arg1.fullViewContentHeight;
			briefViewContentHeight = arg1.briefViewContentHeight;
			bottomDockedContainerHeight = arg1.bottomDockedContainerHeight;
			bottomDockedContainerContent = {
				PeekViewBottomBar = arg1.bottomBarSlot;
			};
			mountAsFullView = arg1.mountAsFullView;
			mountAnimation = arg1.mountAnimation;
			viewStateChanged = React_upvr.useCallback(function(arg1_2, arg2, arg3) -- Line 55
				--[[ Upvalues[8]:
					[1]: PeekViewState_upvr (copied, readonly)
					[2]: onClosed_upvr (readonly)
					[3]: var2_result1_upvr (readonly)
					[4]: arg1 (readonly)
					[5]: peekViewDismissedEvent_upvr (copied, readonly)
					[6]: Cryo_upvr (copied, readonly)
					[7]: var4_result1_upvr (readonly)
					[8]: onViewStateChanged_upvr (readonly)
				]]
				if arg1_2 == PeekViewState_upvr.Closed then
					if onClosed_upvr then
						onClosed_upvr()
					end
					if arg3.dismissMethod and var2_result1_upvr then
						local viewChangedEventMeta = arg1.viewChangedEventMeta
						if not viewChangedEventMeta then
							viewChangedEventMeta = {}
						end
						peekViewDismissedEvent_upvr.logEvent(var2_result1_upvr, "PeekView", Cryo_upvr.Dictionary.join(viewChangedEventMeta, arg3, {
							page = var4_result1_upvr;
						}))
					end
				end
				if onViewStateChanged_upvr then
					onViewStateChanged_upvr(arg1_2, arg2)
				end
			end, {onClosed_upvr, onViewStateChanged_upvr, arg1.viewChangedEventMeta, var2_result1_upvr, var4_result1_upvr});
			briefToFullTransitionPercent = function(arg1_4) -- Line 87
				--[[ Upvalues[2]:
					[1]: any_useBinding_result2_upvr (readonly)
					[2]: arg1 (readonly)
				]]
				any_useBinding_result2_upvr(arg1_4)
				if arg1.transitionPercentCallback then
					arg1.transitionPercentCallback(arg1_4)
				end
			end;
		}, {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				Padding = UDim.new(0, 0);
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Top;
			});
			Content = arg1.contentSlot;
		});
	})
	module_2.PeekViewContainer = var33
	if GetFFlagFixPeekViewBottomInset_upvr() and 0 < useSelector_upvr_result1.bottom then
		var33 = React_upvr.createElement
		var33 = var33("Frame", {
			BackgroundColor3 = var5_result1.Theme.BackgroundDefault.Color;
			BackgroundTransparency = var5_result1.Theme.BackgroundDefault.Transparency;
			BorderSizePixel = 0;
			Position = UDim2.new(0, 0, 1, 0);
			Size = UDim2.new(1, 0, 0, useSelector_upvr_result1.bottom);
			ZIndex = 3;
		})
	else
		var33 = nil
	end
	module_2.BottomInsetBackground = var33
	return React_upvr.createElement("Frame", module, module_2)
end