-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:38
-- Luau version 6, Types version 3
-- Time taken: 0.001478 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.InGameMenuDependencies).Roact
local any_extend_result1 = Roact_upvr.Component:extend("ExternalEventConnection")
function any_extend_result1.init(arg1) -- Line 12
	arg1.connection = nil
end
function any_extend_result1.render(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.oneChild(arg1.props[Roact_upvr.Children])
end
function any_extend_result1.didMount(arg1) -- Line 33
	arg1.connection = arg1.props.event:Connect(arg1.props.callback)
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 40
	if arg1.props.event ~= arg2.event or arg1.props.callback ~= arg2.callback then
		arg1.connection:Disconnect()
		arg1.connection = arg1.props.event:Connect(arg1.props.callback)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 48
	if arg1.connection then
		arg1.connection:Disconnect()
		arg1.connection = nil
	end
end
return any_extend_result1