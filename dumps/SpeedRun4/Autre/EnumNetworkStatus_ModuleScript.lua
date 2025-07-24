-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:31
-- Luau version 6, Types version 3
-- Time taken: 0.000591 seconds

local module = {}
local tbl_upvr = {
	NotStarted = "NotStarted";
	Fetching = "Fetching";
	Done = "Done";
	Failed = "Failed";
}
setmetatable(module, {
	__newindex = function(arg1, arg2, arg3) -- Line 12, Named "__newindex"
	end;
	__index = function(arg1, arg2) -- Line 14, Named "__index"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local var4
		if tbl_upvr[arg2] == nil then
			var4 = false
		else
			var4 = true
		end
		assert(var4, "EnumNetworkStatus has no value: "..tostring(arg2))
		var4 = tbl_upvr
		return var4[arg2]
	end;
})
return module