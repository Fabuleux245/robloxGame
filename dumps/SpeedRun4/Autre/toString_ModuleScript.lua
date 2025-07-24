-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:52
-- Luau version 6, Types version 3
-- Time taken: 0.001034 seconds

local checkListConsistency_upvr = require(script.Parent.checkListConsistency)
local function recursiveToString_upvr(arg1, arg2) -- Line 6, Named "recursiveToString"
	--[[ Upvalues[2]:
		[1]: checkListConsistency_upvr (readonly)
		[2]: recursiveToString_upvr (readonly)
	]]
	local var6 = arg2 or ""
	local var7
	if var7 == "table" then
		var7 = ""
		if not checkListConsistency_upvr(arg1) then
			var7 = var7.."-- WARNING: this table fails the list consistency test\n"
		end
		for i, v in pairs(arg1) do
			if type(i) == "string" then
			end
			if type(i) == "number" then
			end
		end
		return var7.."{\n".."  "..var6..tostring(i).." = "..recursiveToString_upvr(v, "  "..var6)..";\n".."  "..var6..recursiveToString_upvr(v, "  "..var6)..",\n"..var6..'}'
	end
	return tostring(arg1)
end
return recursiveToString_upvr