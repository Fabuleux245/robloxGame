-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:18
-- Luau version 6, Types version 3
-- Time taken: 0.000606 seconds

local module_3_upvr = {
	new = function(arg1) -- Line 17, Named "new"
		local module_2 = {}
		module_2.products = arg1
		return module_2
	end;
}
local RobuxUpsell_upvr = require(script.Parent.Parent.Models.RobuxUpsell)
function module_3_upvr.fromJson(arg1) -- Line 27
	--[[ Upvalues[2]:
		[1]: RobuxUpsell_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	local module = {}
	for i, v in pairs(arg1.products) do
		module[i] = RobuxUpsell_upvr.fromJson(v)
	end
	return module_3_upvr.new(module)
end
return module_3_upvr