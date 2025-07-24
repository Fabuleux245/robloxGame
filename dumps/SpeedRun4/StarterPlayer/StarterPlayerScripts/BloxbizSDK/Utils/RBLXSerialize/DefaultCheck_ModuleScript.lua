-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:23
-- Luau version 6, Types version 3
-- Time taken: 0.000730 seconds

local module = {}
local tbl_upvr = {}
function module.isCreatable(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var3 = tbl_upvr[arg1]
	if not var3 then
		tbl_upvr[arg1] = pcall(function() -- Line 8
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			Instance.new(arg1)
		end)
		var3 = tbl_upvr[arg1]
	end
	return var3
end
local tbl_upvr_2 = {}
function module.getDefaults(arg1, arg2) -- Line 15
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var6 = tbl_upvr_2[arg1]
	if not var6 then
		tbl_upvr_2[arg1] = Instance.new(arg1)
		var6 = tbl_upvr_2[arg1]
	end
	return var6[arg2]
end
return module