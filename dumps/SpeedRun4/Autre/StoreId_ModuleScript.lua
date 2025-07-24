-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:19
-- Luau version 6, Types version 3
-- Time taken: 0.000395 seconds

local module = {}
local var3_upvw = 0
module[require(script.Parent.Parent.Actions.UpdateStoreId).name] = function(arg1, arg2) -- Line 11
	--[[ Upvalues[1]:
		[1]: var3_upvw (read and write)
	]]
	var3_upvw += 1
	return tostring(var3_upvw)
end
return require(game:GetService("CorePackages").Packages.Rodux).createReducer('0', module)