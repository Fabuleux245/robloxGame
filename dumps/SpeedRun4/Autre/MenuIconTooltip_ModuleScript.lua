-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:41
-- Luau version 6, Types version 3
-- Time taken: 0.001569 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local Constants = require(Parent.Parent.TopBar.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("MenuIconTooltip")
any_extend_result1.validateProps = t.strictInterface({
	isTooltipOpen = t.boolean;
	onDismiss = t.callback;
})
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local CoreGui_upvr = game:GetService("CoreGui")
local Tooltip_upvr = InGameMenuDependencies.UIBlox.App.Dialog.Tooltip
local vector2_upvr = Vector2.new(Constants.ScreenSideOffset, Constants.TopBarHeight - 32)
function any_extend_result1.render(arg1) -- Line 26
	--[[ Upvalues[5]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: CoreGui_upvr (readonly)
		[4]: Tooltip_upvr (readonly)
		[5]: vector2_upvr (readonly)
	]]
	return withLocalization_upvr({
		bodyText = "CoreScripts.InGameMenu.EducationalPopup.MenuIconTooltip";
	})(function(arg1_2) -- Line 29
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: CoreGui_upvr (copied, readonly)
			[4]: Tooltip_upvr (copied, readonly)
			[5]: vector2_upvr (copied, readonly)
		]]
		local isTooltipOpen = arg1.props.isTooltipOpen
		if isTooltipOpen then
			isTooltipOpen = Roact_upvr.createElement
			isTooltipOpen = isTooltipOpen(Roact_upvr.Portal, {
				target = CoreGui_upvr;
			}, {
				TooltipScreenGui = Roact_upvr.createElement("ScreenGui", {
					IgnoreGuiInset = true;
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
				}, {
					Tooltip = Roact_upvr.createElement(Tooltip_upvr, {
						triggerPosition = vector2_upvr;
						triggerSize = Vector2.new(32, 32);
						bodyText = arg1_2.bodyText;
						onDismiss = arg1.props.onDismiss;
						forceClickTriggerPoint = true;
					});
				});
			})
		end
		return isTooltipOpen
	end)
end
local SetMenuIconTooltipOpen_upvr = require(Parent.Actions.SetMenuIconTooltipOpen)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 51
	return {
		isTooltipOpen = arg1.nativeClosePrompt.menuIconTooltipOpen;
	}
end, function(arg1) -- Line 55
	--[[ Upvalues[1]:
		[1]: SetMenuIconTooltipOpen_upvr (readonly)
	]]
	return {
		onDismiss = function() -- Line 57, Named "onDismiss"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetMenuIconTooltipOpen_upvr (copied, readonly)
			]]
			arg1(SetMenuIconTooltipOpen_upvr(false))
		end;
	}
end)(any_extend_result1)