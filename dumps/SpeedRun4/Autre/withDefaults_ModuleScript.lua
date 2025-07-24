-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:52
-- Luau version 6, Types version 3
-- Time taken: 0.002029 seconds

local Parent = script:FindFirstAncestor("Foundation").Parent
local ReactIs_upvr = require(Parent.ReactIs)
local function _(arg1) -- Line 7, Named "isTableNotBinding"
	--[[ Upvalues[1]:
		[1]: ReactIs_upvr (readonly)
	]]
	local var3 = false
	if type(arg1) == "table" then
		var3 = not ReactIs_upvr.isBinding(arg1)
	end
	return var3
end
local function deepJoin_upvr(arg1, arg2) -- Line 11, Named "deepJoin"
	--[[ Upvalues[2]:
		[1]: ReactIs_upvr (readonly)
		[2]: deepJoin_upvr (readonly)
	]]
	local clone = table.clone(arg1)
	local var5 = false
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [10.7]
	if type(nil) == "table" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var5 = not ReactIs_upvr.isBinding(nil)
	end
	if var5 then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [23.6]
		local var6 = clone[nil]
		var5 = false
		local var7 = var5
		if type(var6) == "table" then
			var7 = not ReactIs_upvr.isBinding(var6)
		end
		if var7 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
			clone[nil] = deepJoin_upvr(clone[nil], nil)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			clone[nil] = nil
		end
		-- KONSTANTWARNING: GOTO [8] #8
	end
end
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2) -- Line 23, Named "withDefaults"
	--[[ Upvalues[2]:
		[1]: deepJoin_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local module = {}
	if type(arg1) == "table" and type(arg2) == "table" then
		for i, _ in arg2 do
			module[i] = arg1[i]
		end
	end
	return Cryo_upvr.Dictionary.union(arg1, deepJoin_upvr(arg2, module))
end