-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:15
-- Luau version 6, Types version 3
-- Time taken: 0.003024 seconds

local Parent = script.Parent
local function getDefaultCycles_upvr() -- Line 24, Named "getDefaultCycles"
	return {
		visited = {};
		refs = {};
		nextRef = 1;
		omit = {};
	}
end
local keys_upvr = require(Parent.keys)
local sort_upvr = table.sort
local includes_upvr = require(Parent.includes)
local function cycles_upvr(arg1, arg2, arg3) -- Line 35, Named "cycles"
	--[[ Upvalues[5]:
		[1]: getDefaultCycles_upvr (readonly)
		[2]: keys_upvr (readonly)
		[3]: sort_upvr (readonly)
		[4]: includes_upvr (readonly)
		[5]: cycles_upvr (readonly)
	]]
	if arg2 == -1 then
		return arg3
	end
	local var10
	if var10 == "table" then
		var10 = arg3
		if not var10 then
			var10 = getDefaultCycles_upvr()
		end
		if var10.visited[arg1] then
			if not var10.refs[arg1] then
				var10.refs[arg1] = var10.nextRef
				var10.nextRef += 1
			end
			return nil
		end
		var10.visited[arg1] = true
		local var3_result1 = keys_upvr(arg1)
		sort_upvr(var3_result1, function(arg1_2, arg2_2) -- Line 56
			local var14
			if var14 == "number" then
				var14 = typeof(arg2_2)
				if var14 == "number" then
					if arg1_2 >= arg2_2 then
						var14 = false
					else
						var14 = true
					end
					return var14
				end
			end
			if tostring(arg1_2) >= tostring(arg2_2) then
				var14 = false
			else
			end
			return true
		end)
		for _, v in ipairs(var3_result1) do
			if not includes_upvr(var10.omit, v) then
				if arg2 then
					cycles_upvr(v, arg2 - 1, var10)
					cycles_upvr(arg1[v], arg2 - 1, var10)
				else
					cycles_upvr(v, nil, var10)
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					cycles_upvr(arg1[v], nil, var10)
				end
			end
		end
		return var10
	end
	return nil
end
return cycles_upvr