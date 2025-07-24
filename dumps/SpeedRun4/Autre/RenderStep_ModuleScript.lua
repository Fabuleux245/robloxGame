-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:45
-- Luau version 6, Types version 3
-- Time taken: 0.001136 seconds

local RunService_upvr = game:GetService("RunService")
local any_extend_result1 = require(game:GetService("CorePackages").Packages.Roact).Component:extend("RenderStep")
function any_extend_result1.render(arg1) -- Line 23
	return nil
end
function any_extend_result1.didMount(arg1) -- Line 27
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	RunService_upvr:BindToRenderStep(arg1.props.name, arg1.props.priority, arg1.props.callback)
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 31
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1.props.callback ~= arg2.callback or arg1.props.name ~= arg2.name then
		RunService_upvr:UnbindFromRenderStep(arg2.name)
		RunService_upvr:BindToRenderStep(arg1.props.name, arg1.props.priority, arg1.props.callback)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	RunService_upvr:UnbindFromRenderStep(arg1.props.name)
end
return any_extend_result1