-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:24
-- Luau version 6, Types version 3
-- Time taken: 0.001344 seconds

local function serializeTable_upvr(arg1, arg2, arg3, arg4) -- Line 3, Named "serializeTable"
	--[[ Upvalues[1]:
		[1]: serializeTable_upvr (readonly)
	]]
	local var5 = arg3 or false
	local var6 = arg4 or 0
	local var7
	if arg2 then
		var7 = var7..arg2.." = "
	end
	local var8
	if type(arg1) == "table" then
		if not var5 then
			var8 = '\n'
		else
			var8 = ""
		end
		var7 = var7..'{'..var8
		local pairs_result1, pairs_result2, pairs_result3 = pairs(arg1)
		for i, v in pairs_result1, pairs_result2, pairs_result3 do
			local var12
			if not var5 then
				var12 = '\n'
			else
				var12 = ""
			end
			var7 = var7..serializeTable_upvr(v, i, var5, var6 + 1)..','..var12
		end
		pairs_result3 = '}'
		var7 = var7..string.rep(' ', var6)..pairs_result3
		return var7
	end
	if type(arg1) == "number" then
		pairs_result3 = arg1
		var7 = var7..tostring(pairs_result3)
		return var7
	end
	if type(arg1) == "string" then
		pairs_result3 = "%q"
		var7 = var7..string.format(pairs_result3, arg1)
		return var7
	end
	local var13 = arg1
	if type(var13) == "boolean" then
		if arg1 then
			var13 = "true"
		else
			var13 = "false"
		end
		var7 = var7..var13
		return var7
	end
	var7 = var7.."\"[inserializeable datatype:"..type(arg1).."]\""
	return var7
end
return serializeTable_upvr