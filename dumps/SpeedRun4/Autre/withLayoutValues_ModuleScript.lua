-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:13
-- Luau version 6, Types version 3
-- Time taken: 0.000541 seconds

local Roact_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Roact
local LayoutValuesContext_upvr = require(script.Parent.LayoutValuesContext)
return function(arg1) -- Line 11
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LayoutValuesContext_upvr (readonly)
	]]
	local var4
	if type(arg1) ~= "function" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "Expect withLayoutValues callback to be a function.")
	var4 = Roact_upvr
	var4 = LayoutValuesContext_upvr.Consumer
	local module = {}
	module.render = arg1
	return var4.createElement(var4, module)
end