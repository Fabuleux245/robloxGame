-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:13
-- Luau version 6, Types version 3
-- Time taken: 0.002524 seconds

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
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local var13 = arg1
	if not var13 then
		var13 = {}
	end
	local var14 = var13
	for i, v in pairs(arg2) do
		if var14[i] == nil then
			if v == module_2_upvr.Required then
				local error = error
				local formatted = string.format("Prop %q is required", i)
				error(formatted)
			else
				var14[i] = v
			end
		end
	end
	local pairs_result1, pairs_result2, pairs_result3 = pairs(var14)
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [58] 42. Error Block 35 start (CF ANALYSIS FAILED)
	if formatted == module_2_upvr.Callback then
		({})[error] = Value_upvr(function() -- Line 43
		end)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({})[error] = Value_upvr(formatted)
	end
	if not arg2[error] then
		({})[error] = formatted
	end
	-- KONSTANTERROR: [58] 42. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 29. Error Block 34 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if formatted == arg2[error] then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	if arg2[error] == "table" and arg2[error] == "State" then
		-- KONSTANTWARNING: GOTO [72] #54
	end
	-- KONSTANTERROR: [39] 29. Error Block 34 end (CF ANALYSIS FAILED)
end
return module_2_upvr