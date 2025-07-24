-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:01
-- Luau version 6, Types version 3
-- Time taken: 0.003697 seconds

function difference(arg1, arg2) -- Line 8
	local tbl = {}
	for _, v in pairs(arg1) do
		tbl[v] = true
	end
	for _, v_2 in pairs(arg2) do
		tbl[v_2] = nil
	end
	for _, v_3 in pairs(arg1) do
		if tbl[v_3] then
			({})[0 + 1] = v_3
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local llama_upvr = require(script:FindFirstAncestor("FriendsRodux").Parent.llama)
local addUser_upvr = require(script.Parent.addUser)
local removeUser_upvr = require(script.Parent.removeUser)
return function(arg1, arg2) -- Line 33
	--[[ Upvalues[3]:
		[1]: llama_upvr (readonly)
		[2]: addUser_upvr (readonly)
		[3]: removeUser_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tostring_result1 = tostring(arg2.namedIds.users)
	local var52 = arg1[tostring_result1]
	if not var52 then
		var52 = {}
	end
	local any_map_result1 = llama_upvr.List.map(llama_upvr.Dictionary.values(arg2.responseBody.data), function(arg1_2) -- Line 37
		return tostring(arg1_2.id)
	end)
	for _, v_4 in pairs(difference(any_map_result1, var52)) do
		local any_join_result1 = llama_upvr.Dictionary.join(arg1, {
			[tostring_result1] = addUser_upvr(arg1[tostring_result1], v_4);
			[v_4] = addUser_upvr(arg1[v_4], tostring_result1);
		})
	end
	for _, v_5 in pairs(difference(var52, any_map_result1)) do
		local any_join_result1_2 = llama_upvr.Dictionary.join(any_join_result1, {
			[tostring_result1] = removeUser_upvr(any_join_result1[tostring_result1], v_5);
			[v_5] = removeUser_upvr(any_join_result1[v_5], tostring_result1);
		})
	end
	for i_6, v_6 in pairs(any_join_result1_2) do
		if llama_upvr.isEmpty(v_6) then
			any_join_result1_2[i_6] = nil
		end
	end
	return any_join_result1_2
end