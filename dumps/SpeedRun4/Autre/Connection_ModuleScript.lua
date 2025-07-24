-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:51
-- Luau version 6, Types version 3
-- Time taken: 0.000612 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("Connection")
local ContextActionsBinder_upvr = require(script.ContextActionsBinder)
function any_extend_result1.render(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ContextActionsBinder_upvr (readonly)
	]]
	return Roact_upvr.createFragment({
		ContextActionsBinder = Roact_upvr.createElement(ContextActionsBinder_upvr);
	})
end
return any_extend_result1