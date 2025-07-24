-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:26
-- Luau version 6, Types version 3
-- Time taken: 0.001473 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("EventConnection")
function any_extend_result1.init(arg1) -- Line 11
	arg1.connection = nil
end
function any_extend_result1.render(arg1) -- Line 28
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.oneChild(arg1.props[Roact_upvr.Children])
end
function any_extend_result1.didMount(arg1) -- Line 32
	arg1.connection = arg1.props.event:Connect(arg1.props.callback)
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 39
	if arg1.props.event ~= arg2.event or arg1.props.callback ~= arg2.callback then
		arg1.connection:Disconnect()
		arg1.connection = arg1.props.event:Connect(arg1.props.callback)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 47
	if arg1.connection then
		arg1.connection:Disconnect()
		arg1.connection = nil
	end
end
return any_extend_result1