-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:26
-- Luau version 6, Types version 3
-- Time taken: 0.002509 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.Component:extend("TestContainer")
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local InspectAndBuyReducer_upvr = require(Parent.Reducers.InspectAndBuyReducer)
local Constants_upvr = require(Parent.Constants)
local CompactView_upvr = require(Parent.CompactView)
local WideView_upvr = require(Parent.WideView)
function any_extend_result1.init(arg1) -- Line 23
	--[[ Upvalues[5]:
		[1]: Rodux_upvr (readonly)
		[2]: InspectAndBuyReducer_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: CompactView_upvr (readonly)
		[5]: WideView_upvr (readonly)
	]]
	local overrideStore = arg1.props.overrideStore
	if not overrideStore then
		overrideStore = Rodux_upvr.Store.new
		overrideStore = overrideStore(InspectAndBuyReducer_upvr, {}, {Rodux_upvr.thunkMiddleware})
	end
	arg1.store = overrideStore
	arg1.views = {}
	arg1.views[Constants_upvr.View.Compact] = CompactView_upvr
	arg1.views[Constants_upvr.View.Wide] = WideView_upvr
end
local InspectAndBuyContext_upvr = require(Parent.Components.InspectAndBuyContext)
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local renderWithCoreScriptsStyleProvider_upvr = require(Parent.Parent.Common.renderWithCoreScriptsStyleProvider)
function any_extend_result1.render(arg1) -- Line 33
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: InspectAndBuyContext_upvr (readonly)
		[3]: RoactRodux_upvr (readonly)
		[4]: renderWithCoreScriptsStyleProvider_upvr (readonly)
	]]
	local var19 = 0
	local var20
	for _, _ in arg1.props[Roact_upvr.Children], var20 do
		var19 += 1
	end
	if 0 >= var19 then
		var20 = false
	else
		var20 = true
	end
	assert(var20, "TestContainer: no children provided, nothing will be tested")
	return Roact_upvr.createElement(InspectAndBuyContext_upvr.Provider, {
		value = arg1.views;
	}, {Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = arg1.store;
	}, {
		ThemeProvider = renderWithCoreScriptsStyleProvider_upvr({
			InspectMenu = Roact_upvr.createElement("ScreenGui", {}, arg1.props[Roact_upvr.Children]);
		});
	})})
end
return any_extend_result1