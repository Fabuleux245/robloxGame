-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:03
-- Luau version 6, Types version 3
-- Time taken: 0.001533 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React_upvr = require(Songbird.Parent.React)
local Foundation_upvr = require(Songbird.Parent.Foundation)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local GetFFlagSongDetailsGamepadSupport_upvr = require(Songbird.Parent.SharedFlags).GetFFlagSongDetailsGamepadSupport
local useCallback_upvr = React_upvr.useCallback
return function(arg1) -- Line 18, Named "RoundIconButton"
	--[[ Upvalues[5]:
		[1]: useTokens_upvr (readonly)
		[2]: GetFFlagSongDetailsGamepadSupport_upvr (readonly)
		[3]: useCallback_upvr (readonly)
		[4]: Foundation_upvr (readonly)
		[5]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7
	if GetFFlagSongDetailsGamepadSupport_upvr() then
		var7 = nil
	else
		var7 = useCallback_upvr
		var7 = var7(function(arg1_2) -- Line 24
			--[[ Upvalues[2]:
				[1]: Foundation_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			if arg1_2 == Foundation_upvr.Enums.ControlState.Pressed and arg1.onActivated then
				arg1.onActivated()
			end
		end, {arg1.onActivated})
	end
	local module = {
		tag = "auto-xy bg-action-emphasis radius-circle padding-small";
	}
	if GetFFlagSongDetailsGamepadSupport_upvr() then
	else
	end
	module.onStateChanged = var7
	if GetFFlagSongDetailsGamepadSupport_upvr() then
	else
	end
	module.onActivated = nil
	module.aspectRatio = 1
	module.LayoutOrder = arg1.LayoutOrder
	return React_upvr.createElement(Foundation_upvr.View, module, {
		Icon = React_upvr.createElement(Foundation_upvr.Icon, {
			Position = arg1.iconOffset;
			name = arg1.icon;
			size = Foundation_upvr.Enums.IconSize.Medium;
			style = useTokens_upvr().Color.ActionEmphasis.Foreground;
		});
	})
end