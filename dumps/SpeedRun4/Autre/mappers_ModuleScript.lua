-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:06
-- Luau version 6, Types version 3
-- Time taken: 0.001910 seconds

local Cryo_upvr = require(script.Parent.Parent.Parent.Parent.Parent.Cryo)
local function getOnHoverColor_upvr(arg1, arg2) -- Line 17, Named "getOnHoverColor"
	local Color = arg2.Component.StateLayer.Standard.Hover.Color
	if Color.Transparency == 1 then
		return {
			Color3 = arg1.Color3;
			Transparency = arg1.Transparency;
		}
	end
	if arg1.Color3 == nil or arg1.Transparency == 1 then
		return {
			Color3 = Color.Color3;
			Transparency = Color.Transparency;
		}
	end
	return {
		Color3 = arg1.Color3:Lerp(Color.Color3, 1 - Color.Transparency);
		Transparency = arg1.Transparency;
	}
end
return {
	mapColorTokensToFoundation = function(arg1, arg2) -- Line 9, Named "mapColorTokensToFoundation"
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		arg1.Semantic.Color = Cryo_upvr.Dictionary.join(arg1.Semantic.Color, arg2.Semantic.Color)
		arg1.Global.Color = Cryo_upvr.Dictionary.join(arg1.Global.Color, arg2.Global.Color)
		arg1.Component = Cryo_upvr.Dictionary.join(arg1.Component, arg2.Component)
		return arg1
	end;
	mapThemeToFoundation = function(arg1, arg2) -- Line 38, Named "mapThemeToFoundation"
		--[[ Upvalues[2]:
			[1]: getOnHoverColor_upvr (readonly)
			[2]: Cryo_upvr (readonly)
		]]
		local module = {
			BackgroundDefault = arg2.Semantic.Color.Background.Default;
			BackgroundContrast = arg2.Semantic.Color.Background.Contrast;
			BackgroundMuted = arg2.Semantic.Color.Background.Muted;
			BackgroundUIDefault = arg2.Semantic.Color.BackgroundUi.Default;
			BackgroundUIContrast = arg2.Semantic.Color.BackgroundUi.Contrast;
			BackgroundOnHover = arg2.Semantic.Color.Background.OnHover;
			BackgroundOnPress = arg2.Semantic.Color.Background.OnPress;
			UIDefault = arg2.Semantic.Color.Ui.Default;
			UIMuted = arg2.Semantic.Color.Ui.Muted;
			UIEmphasis = arg2.Semantic.Color.Ui.Emphasis;
			ContextualPrimaryDefault = arg2.Semantic.Color.Action.PrimaryBrand.Background;
			ContextualPrimaryOnHover = getOnHoverColor_upvr(module.ContextualPrimaryDefault, arg2);
			ContextualPrimaryContent = arg2.Semantic.Color.Action.PrimaryBrand.Content;
			SystemPrimaryDefault = arg2.Semantic.Color.Action.Primary.Background;
			SystemPrimaryOnHover = getOnHoverColor_upvr(module.SystemPrimaryDefault, arg2);
			SystemPrimaryContent = arg2.Semantic.Color.Action.Primary.Content;
			IconDefault = arg2.Semantic.Color.Icon.Default;
			IconEmphasis = arg2.Semantic.Color.Icon.Emphasis;
			IconOnHover = arg2.Semantic.Color.Icon.OnHover;
			TextEmphasis = arg2.Semantic.Color.Text.Emphasis;
			TextDefault = arg2.Semantic.Color.Text.Default;
			TextMuted = arg2.Semantic.Color.Text.Muted;
			TextLink = arg2.Semantic.Color.Text.Link;
			Divider = arg2.Semantic.Color.Common.Divider;
			Overlay = arg2.Semantic.Color.Common.Overlay;
			DropShadow = arg2.Semantic.Color.Common.DropShadow;
			NavigationBar = arg2.Semantic.Color.Common.NavigationBar;
			PlaceHolder = arg2.Semantic.Color.Common.Placeholder;
			OnlineStatus = arg2.Semantic.Color.Common.Online;
			OfflineStatus = arg2.Semantic.Color.Common.Offline;
			Success = arg2.Semantic.Color.Common.Success;
			Alert = arg2.Semantic.Color.Common.Alert;
			Badge = arg2.Semantic.Color.Common.Badge;
			BadgeContent = arg2.Semantic.Color.Common.BadgeContent;
		}
		return Cryo_upvr.Dictionary.join(arg1, Cryo_upvr.Dictionary.map(module, function(arg1_2) -- Line 77
			return {
				Color = arg1_2.Color3;
				Transparency = arg1_2.Transparency;
			}
		end))
	end;
}