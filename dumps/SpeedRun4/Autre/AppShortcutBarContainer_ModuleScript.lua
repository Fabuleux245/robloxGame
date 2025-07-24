-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:04
-- Luau version 6, Types version 3
-- Time taken: 0.000400 seconds

local AppShortcutBar = script:FindFirstAncestor("AppShortcutBar")
local useAppShortcutBarProps_upvr = require(script.Parent.useAppShortcutBarProps)
local React_upvr = require(AppShortcutBar.Parent.React)
local AppShortcutBar_2_upvr = require(AppShortcutBar.Components.AppShortcutBar)
function AppShortcutBarContainer() -- Line 7
	--[[ Upvalues[3]:
		[1]: useAppShortcutBarProps_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: AppShortcutBar_2_upvr (readonly)
	]]
	return React_upvr.createElement(AppShortcutBar_2_upvr, useAppShortcutBarProps_upvr())
end
return AppShortcutBarContainer