-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:46
-- Luau version 6, Types version 3
-- Time taken: 0.001590 seconds

local Number_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Number
local null_upvr = require(script.Parent.null)
local function deepContains_upvr(arg1, arg2) -- Line 4, Named "deepContains"
	--[[ Upvalues[3]:
		[1]: Number_upvr (readonly)
		[2]: null_upvr (readonly)
		[3]: deepContains_upvr (readonly)
	]]
	if typeof(arg1) ~= typeof(arg2) then
		return false, "{1}: value of type '%s'\n{2}: value of type '%s'":format(typeof(arg1), typeof(arg2))
	end
	if Number_upvr.isNaN(arg1) and Number_upvr.isNaN(arg2) then
		return true
	end
	if arg1 == arg2 then
		return true
	end
	if arg1 == null_upvr or arg2 == null_upvr or typeof(arg1) ~= "table" then
		return false, string.format("{1} (%s) ~= {2} (%s)", tostring(arg1), tostring(arg2))
	end
	for i, v in pairs(arg2) do
		local deepContains_result1, deepContains_upvr_result2 = deepContains_upvr(arg1[i], v)
		if not deepContains_result1 then
			return false, deepContains_upvr_result2:gsub("{1}", "{1}[%s]":format(tostring(i))):gsub("{2}", "{2}[%s]":format(tostring(i)))
		end
	end
	return true
end
return deepContains_upvr