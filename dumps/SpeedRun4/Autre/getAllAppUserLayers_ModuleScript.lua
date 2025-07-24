-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:40
-- Luau version 6, Types version 3
-- Time taken: 0.001403 seconds

local function findNextKey_upvr(arg1, arg2) -- Line 21, Named "findNextKey"
	if not arg1[arg2] then
		arg1[arg2] = true
		return arg2
	end
	for i = 2, 100 do
		local var2 = arg2..'_'..i
		if not arg1[var2] then
			arg1[var2] = true
			return var2
		end
	end
	error("Exceeded max index for next key search: "..arg2)
end
local game_DefineFastString_result1_upvr = game:DefineFastString("IxpNewLayersForRegistration", "")
local AppUserLayers_upvr = require(script.Parent.AppUserLayers)
local Dash_upvr = require(script:FindFirstAncestor("ExperimentLayers").Parent.Dash)
return function(arg1) -- Line 37, Named "getAllAppUserLayers"
	--[[ Upvalues[4]:
		[1]: game_DefineFastString_result1_upvr (readonly)
		[2]: AppUserLayers_upvr (readonly)
		[3]: Dash_upvr (readonly)
		[4]: findNextKey_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var22 = arg1
	if not var22 then
		var22 = game_DefineFastString_result1_upvr
	end
	if #var22 == 0 then
		return AppUserLayers_upvr
	end
	local any_copy_result1 = Dash_upvr.copy(AppUserLayers_upvr)
	local tbl = {}
	for i_2, v in any_copy_result1 do
		({})[i_2] = true
		tbl[v] = true
		local var25
	end
	for _, v_2 in Dash_upvr.map(string.split(var22, ','), Dash_upvr.trim), nil do
		if not tbl[v_2] then
			tbl[v_2] = true
			any_copy_result1[findNextKey_upvr(var25, v_2)] = v_2
		end
	end
	return any_copy_result1
end