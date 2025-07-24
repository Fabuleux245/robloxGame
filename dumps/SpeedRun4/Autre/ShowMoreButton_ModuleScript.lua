-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:23
-- Luau version 6, Types version 3
-- Time taken: 0.001088 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local MenuButton_upvr = require(Parent_2.Components.Common.MenuButton)
return function(arg1) -- Line 19
	--[[ Upvalues[5]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: EventNames_upvr (readonly)
		[5]: MenuButton_upvr (readonly)
	]]
	local var4_result1_upvr = useAnalytics_upvr()
	return React_upvr.createElement(MenuButton_upvr, {
		buttonHeight = arg1.buttonHeight;
		LayoutOrder = arg1.LayoutOrder;
		onActivated = React_upvr.useCallback(function() -- Line 25
			--[[ Upvalues[3]:
				[1]: var4_result1_upvr (readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			var4_result1_upvr.fireEvent(EventNames_upvr.CapturesShowMoreInGameMenu)
			arg1.onActivated()
		end, {arg1.onActivated});
		text = useLocalization_upvr({
			showMore = "Feature.Avatar.Action.ShowMore";
		}).showMore;
	})
end