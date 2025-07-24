-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:13
-- Luau version 6, Types version 3
-- Time taken: 0.001152 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("ClientLog")
function any_extend_result1.init(arg1) -- Line 9
	function arg1.initClientLogData() -- Line 10
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.props.ClientLogData:getLogData()
	end
end
local LogOutput_upvr = require(script.Parent.LogOutput)
function any_extend_result1.render(arg1) -- Line 14
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LogOutput_upvr (readonly)
	]]
	return Roact_upvr.createElement(LogOutput_upvr, {
		layoutOrder = arg1.props.layoutOrder;
		size = arg1.props.size;
		initLogOutput = arg1.initClientLogData;
		targetSignal = arg1.props.ClientLogData:Signal();
	})
end
return require(script.Parent.Parent.DataConsumer)(any_extend_result1, "ClientLogData")