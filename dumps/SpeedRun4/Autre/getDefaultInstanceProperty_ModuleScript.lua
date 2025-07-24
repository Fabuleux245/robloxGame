-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:35
-- Luau version 6, Types version 3
-- Time taken: 0.000877 seconds

local function tryPropertyName_upvr(arg1, arg2) -- Line 33, Named "tryPropertyName"
	return arg1[arg2]
end
local tbl_upvr = {}
local any_named_result1_upvr = require(script.Parent.Parent.Parent.Parent.Shared).Symbol.named("Nil")
return function(arg1, arg2) -- Line 37, Named "getDefaultInstanceProperty"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: any_named_result1_upvr (readonly)
		[3]: tryPropertyName_upvr (readonly)
	]]
	local var3
	if var3 then
		local var4 = var3[arg2]
		if var4 == any_named_result1_upvr then
			return true, nil
		end
		if var4 ~= nil then
			do
				return true, var4
			end
			-- KONSTANTWARNING: GOTO [20] #18
		end
	else
		var3 = {}
		tbl_upvr[arg1] = var3
	end
	local any = Instance.new(arg1)
	local pcall_result1, pcall_result2 = pcall(tryPropertyName_upvr, any, arg2)
	any:Destroy()
	if pcall_result1 then
		if pcall_result2 == nil then
			var3[arg2] = any_named_result1_upvr
			return pcall_result1, pcall_result2
		end
		var3[arg2] = pcall_result2
	end
	return pcall_result1, pcall_result2
end