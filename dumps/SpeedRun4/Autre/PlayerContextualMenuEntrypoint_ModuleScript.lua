-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:43
-- Luau version 6, Types version 3
-- Time taken: 0.000601 seconds

local PlayerContextualMenu = script:FindFirstAncestor("PlayerContextualMenu")
local React_upvr = require(PlayerContextualMenu.Parent.React)
local HttpRequestContext_upvr = require(script.Parent.HttpRequest.HttpRequestContext)
local DefaultHttpRequestInstance_upvr = require(script.Parent.HttpRequest.DefaultHttpRequestInstance)
local PlayerContextualMenuContainer_upvr = require(PlayerContextualMenu.Components.PlayerContextualMenuContainer)
return function(arg1) -- Line 17, Named "PlayerContextualMenuEntrypoint"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: HttpRequestContext_upvr (readonly)
		[3]: DefaultHttpRequestInstance_upvr (readonly)
		[4]: PlayerContextualMenuContainer_upvr (readonly)
	]]
	local module = {}
	local httpRequest = arg1.httpRequest
	if not httpRequest then
		httpRequest = DefaultHttpRequestInstance_upvr
	end
	module.value = httpRequest
	return React_upvr.createElement(HttpRequestContext_upvr.Provider, module, {
		app = React_upvr.createElement(PlayerContextualMenuContainer_upvr, arg1);
	})
end