-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:44
-- Luau version 6, Types version 3
-- Time taken: 0.000904 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local any_extend_result1 = Roact_upvr.Component:extend("App")
any_extend_result1.validateProps = t.strictInterface({
	store = t.table;
})
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local BubbleChatBillboards_upvr = require(script.Parent.BubbleChatBillboards)
function any_extend_result1.render(arg1) -- Line 19
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: RoactRodux_upvr (readonly)
		[3]: BubbleChatBillboards_upvr (readonly)
	]]
	return Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = arg1.props.store;
	}, {
		BubbleChatBillboards = Roact_upvr.createElement(BubbleChatBillboards_upvr);
	})
end
return any_extend_result1