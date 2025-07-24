-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:42
-- Luau version 6, Types version 3
-- Time taken: 0.000640 seconds

local CorePackages = game:GetService("CorePackages")
local maybeAssert_upvr = require(script.Parent.Parent.Helpers.maybeAssert)
local t_upvr = require(CorePackages.Packages.t)
return require(CorePackages.Packages.Rodux).makeActionCreator(script.Name, function(arg1) -- Line 10
	--[[ Upvalues[2]:
		[1]: maybeAssert_upvr (readonly)
		[2]: t_upvr (readonly)
	]]
	maybeAssert_upvr(t_upvr.table(arg1))
	local module = {}
	module.settings = arg1
	return module
end)