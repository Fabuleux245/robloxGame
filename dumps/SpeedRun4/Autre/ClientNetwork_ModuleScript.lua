-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:27
-- Luau version 6, Types version 3
-- Time taken: 0.000992 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("ClientNetwork")
function any_extend_result1.init(arg1, arg2) -- Line 10
	arg1.state = {
		targetNetworkData = arg1.props.ClientNetworkData;
	}
end
local NetworkView_upvr = require(script.Parent.NetworkView)
function any_extend_result1.render(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: NetworkView_upvr (readonly)
	]]
	return Roact_upvr.createElement(NetworkView_upvr, {
		size = arg1.props.size;
		searchTerm = arg1.props.searchTerm;
		layoutOrder = arg1.props.layoutOrder;
		targetNetworkData = arg1.state.targetNetworkData;
	})
end
return require(script.Parent.Parent.Parent.Components.DataConsumer)(any_extend_result1, "ClientNetworkData")