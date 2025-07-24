-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:36
-- Luau version 6, Types version 3
-- Time taken: 0.001347 seconds

local Parent = script.Parent
local module = require(Parent:WaitForChild("Symbol"))
local module_2_upvr = {
	Nil = module.new("nil");
	Required = module.new("required");
	Callback = module.new("callback");
}
local Value_upvr = require(Parent:WaitForChild("Fusion")).Value
function module_2_upvr.GetValues(arg1, arg2) -- Line 12
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: Value_upvr (readonly)
	]]
	local var13 = arg1
	if not var13 then
		var13 = {}
	end
	local var14 = var13
	for i, v in pairs(arg2) do
		if var14[i] == nil then
			if v == module_2_upvr.Required then
				error(string.format("Prop %q is required", i))
			else
				var14[i] = v
			end
		end
	end
	for i_2, v_2 in pairs(var14) do
		if v_2 == module_2_upvr.Nil then
			v_2 = nil
		end
		if type(v_2) == "table" and v_2.type == "State" then
			({})[i_2] = v_2
		elseif v_2 == module_2_upvr.Callback then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[i_2] = Value_upvr(function() -- Line 43
			end)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[i_2] = Value_upvr(v_2)
		end
		if not arg2[i_2] then
			({})[i_2] = v_2
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	return {}, {}
end
return module_2_upvr