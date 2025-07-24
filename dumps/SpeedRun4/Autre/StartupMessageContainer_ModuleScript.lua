-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:19
-- Luau version 6, Types version 3
-- Time taken: 0.000779 seconds

local Parent = script:FindFirstAncestor("AppStartup").Parent
local React_upvr = require(Parent.React)
local useStartupMessageProps_upvr = require(script.Parent.useStartupMessageProps)
local ReactRoblox_upvr = require(Parent.ReactRoblox)
local StartupMessage_upvr = require(script.Parent.StartupMessage)
local CoreGui_upvr = game:GetService("CoreGui")
return React_upvr.memo(function() -- Line 9, Named "StartupMessageContainer"
	--[[ Upvalues[5]:
		[1]: useStartupMessageProps_upvr (readonly)
		[2]: ReactRoblox_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: StartupMessage_upvr (readonly)
		[5]: CoreGui_upvr (readonly)
	]]
	local useStartupMessageProps_upvr_result1 = useStartupMessageProps_upvr()
	local module = {}
	local tbl = {}
	local displayStartupMessage = useStartupMessageProps_upvr_result1.displayStartupMessage
	if displayStartupMessage then
		displayStartupMessage = React_upvr.createElement(StartupMessage_upvr, useStartupMessageProps_upvr_result1)
	end
	tbl.StartupMessage = displayStartupMessage
	module[1] = React_upvr.createElement("ScreenGui", {
		Enabled = true;
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		AutoLocalize = false;
		DisplayOrder = 100;
	}, tbl)
	return ReactRoblox_upvr.createPortal(module, CoreGui_upvr)
end)