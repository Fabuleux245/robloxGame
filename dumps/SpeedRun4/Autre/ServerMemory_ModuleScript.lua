-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:24
-- Luau version 6, Types version 3
-- Time taken: 0.000556 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local any_extend_result1 = Roact_upvr.Component:extend("ServerMemory")
local MemoryView_upvr = require(Components.Memory.MemoryView)
function any_extend_result1.render(arg1) -- Line 10
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: MemoryView_upvr (readonly)
	]]
	return Roact_upvr.createElement(MemoryView_upvr, {
		layoutOrder = arg1.props.layoutOrder;
		size = arg1.props.size;
		searchTerm = arg1.props.searchTerm;
		targetMemoryData = arg1.props.ServerMemoryData;
	})
end
return require(Components.DataConsumer)(any_extend_result1, "ServerMemoryData")