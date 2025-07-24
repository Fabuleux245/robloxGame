-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:52
-- Luau version 6, Types version 3
-- Time taken: 0.000666 seconds

if not game:DefineFastFlag("TypeCheckedActionProducer", false) then
	return require(script.Parent.makeActionCreator)(script.Name, "products", "selection", "virtualItemBadgeType")
end
local any_makeActionCreator_result1_upvr = require(game:GetService("CorePackages").Packages.Rodux).makeActionCreator(script.Name, function(arg1, arg2, arg3) -- Line 16
	local module_2 = {}
	module_2.products = arg1
	module_2.selection = arg2
	module_2.virtualItemBadgeType = arg3
	return module_2
end)
local module = {
	name = any_makeActionCreator_result1_upvr.name;
	__call = function(arg1, arg2, arg3, arg4) -- Line 31, Named "__call"
		--[[ Upvalues[1]:
			[1]: any_makeActionCreator_result1_upvr (readonly)
		]]
		return any_makeActionCreator_result1_upvr(arg2, arg3, arg4)
	end;
}
setmetatable(module, module)
return module