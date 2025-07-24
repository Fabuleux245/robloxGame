-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:32
-- Luau version 6, Types version 3
-- Time taken: 0.001093 seconds

local RobloxComponentProps = require(script.Parent.roblox.RobloxComponentProps)
local module = {
	setInitialProperties = RobloxComponentProps.setInitialProperties;
}
local Object_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Object
function module.diffProperties(arg1, arg2, arg3, arg4, arg5) -- Line 32
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	for i, _ in arg3 do
		if arg4[i] == nil then
			local var12
			if not var12 then
				var12 = table.create(2)
			end
			local var13 = var12
			table.insert(var13, i)
			table.insert(var13, Object_upvr.None)
		end
	end
	local var14
	for i_2, v_2 in arg4 do
		if arg3 ~= nil then
			var14 = arg3[i_2]
		else
			var14 = nil
		end
		if v_2 ~= var14 then
			local var15 = var13
			if not var15 then
				var15 = table.create(2)
			end
			local var16 = var15
			table.insert(var16, i_2)
			table.insert(var16, v_2)
		end
	end
	return var16
end
module.updateProperties = RobloxComponentProps.updateProperties
module.cleanupHostComponent = RobloxComponentProps.cleanupHostComponent
return module