-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:11
-- Luau version 6, Types version 3
-- Time taken: 0.000900 seconds

local Parent = script.Parent.Parent
local React_upvr = require(Parent.Parent.Parent.React)
local PreferencesProvider_upvr = require(Parent.Preferences.PreferencesProvider)
local StyleProvider_upvr = require(Parent.Style.StyleProvider)
local Overlay_upvr = require(Parent.Overlay)
local Cursor_upvr = require(Parent.Cursor)
return function(arg1) -- Line 20, Named "FoundationProvider"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: PreferencesProvider_upvr (readonly)
		[3]: StyleProvider_upvr (readonly)
		[4]: Overlay_upvr (readonly)
		[5]: Cursor_upvr (readonly)
	]]
	local var7
	if arg1.preferences then
		var7 = arg1.preferences
	else
		var7 = {}
	end
	return React_upvr.createElement(PreferencesProvider_upvr, var7, {
		StyleProvider = React_upvr.createElement(StyleProvider_upvr, {
			theme = arg1.theme;
			device = arg1.device;
			derives = arg1.derives;
		}, {
			OverlayProvider = React_upvr.createElement(Overlay_upvr, {
				gui = arg1.overlayGui;
			}, {
				CursorProvider = React_upvr.createElement(Cursor_upvr, nil, arg1.children);
			});
		});
	})
end