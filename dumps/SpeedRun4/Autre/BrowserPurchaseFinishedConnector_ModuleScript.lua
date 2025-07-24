-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:04
-- Luau version 6, Types version 3
-- Time taken: 0.001118 seconds

local Parent = script.Parent.Parent.Parent
local Roact_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Roact
local ExternalEventConnection_upvr = require(script.Parent.ExternalEventConnection)
local GuiService_upvr = game:GetService("GuiService")
local retryAfterUpsell_upvr = require(Parent.Thunks.retryAfterUpsell)
return require(Parent.connectToStore)(nil, function(arg1) -- Line 31, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: retryAfterUpsell_upvr (readonly)
	]]
	return {
		onBrowserWindowClosed = function() -- Line 33, Named "onBrowserWindowClosed"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: retryAfterUpsell_upvr (copied, readonly)
			]]
			arg1(retryAfterUpsell_upvr())
		end;
	}
end)(function(arg1) -- Line 17, Named "BrowserPurchaseFinishedConnector"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	return Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = GuiService_upvr.BrowserWindowClosed;
		callback = arg1.onBrowserWindowClosed;
	})
end)