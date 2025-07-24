-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:05
-- Luau version 6, Types version 3
-- Time taken: 0.000935 seconds

local function matchAllRegex_upvr(arg1, arg2) -- Line 2, Named "matchAllRegex"
	--[[ Upvalues[1]:
		[1]: matchAllRegex_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_exec_result1 = arg2:exec(arg1)
	if not any_exec_result1 then
		return {}
	end
	local index = any_exec_result1.index
	local _1 = any_exec_result1[1]
	if 1 < #any_exec_result1 then
		for i = 2, #any_exec_result1 do
			table.insert({}, any_exec_result1[i])
			local var8
		end
	end
	local module = {}
	local tbl = {
		index = index;
	}
	tbl.input = arg1
	tbl.matchedText = _1
	tbl.capturedGroups = var8
	module[1] = tbl
	module[2] = unpack(matchAllRegex_upvr(arg1:sub(index + #_1), arg2))
	return module
end
return matchAllRegex_upvr