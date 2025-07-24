-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:11
-- Luau version 6, Types version 3
-- Time taken: 0.001816 seconds

local ContextActionService_upvr = game:GetService("ContextActionService")
local any_extend_result1 = require(game:GetService("CorePackages").Packages.Roact).Component:extend("ContextActionEvent")
function any_extend_result1.render(arg1) -- Line 29
	return nil
end
function any_extend_result1.didMount(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	if arg1.props.actionPriority then
		ContextActionService_upvr:BindCoreActionAtPriority(arg1.props.name, arg1.props.callback, false, 2000 + arg1.props.actionPriority, unpack(arg1.props.binds))
	else
		ContextActionService_upvr:BindCoreAction(arg1.props.name, arg1.props.callback, false, unpack(arg1.props.binds))
	end
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 41
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	if arg1.props.callback ~= arg2.callback or arg1.props.name ~= arg2.name then
		ContextActionService_upvr:UnbindCoreAction(arg2.name)
		if arg1.props.actionPriority then
			ContextActionService_upvr:BindCoreActionAtPriority(arg1.props.name, arg1.props.callback, false, 2000 + arg1.props.actionPriority, unpack(arg1.props.binds))
			return
		end
		ContextActionService_upvr:BindCoreAction(arg1.props.name, arg1.props.callback, false, unpack(arg1.props.binds))
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 52
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction(arg1.props.name)
end
return any_extend_result1