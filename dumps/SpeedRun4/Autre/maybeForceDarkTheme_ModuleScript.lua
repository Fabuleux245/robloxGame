-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:45
-- Luau version 6, Types version 3
-- Time taken: 0.000897 seconds

local Parent = script:FindFirstAncestor("CollectionViews").Parent
local Style = require(Parent.Style)
local React_upvr = require(Parent.React)
local UiModeStyleProvider_upvr = Style.UiModeStyleProvider
local DesignTokenProvider_upvr = Style.DesignTokenProvider
return function(arg1, arg2) -- Line 9, Named "maybeForceDarkTheme"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: UiModeStyleProvider_upvr (readonly)
		[3]: DesignTokenProvider_upvr (readonly)
	]]
	if arg2 then
		local module = {}
		local tbl = {}
		tbl.Content = arg1
		module.DesignTokenProvider = React_upvr.createElement(DesignTokenProvider_upvr, {
			tokenMappers = {};
		}, tbl)
		return React_upvr.createElement(UiModeStyleProvider_upvr, {
			style = {
				themeName = "Dark";
				fontName = nil;
			};
		}, module)
	end
	return arg1
end