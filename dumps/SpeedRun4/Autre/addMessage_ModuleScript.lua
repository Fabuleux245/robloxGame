-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:39
-- Luau version 6, Types version 3
-- Time taken: 0.000632 seconds

local maybeAssert_upvr = require(script.Parent.Parent.Helpers.maybeAssert)
local Types_upvr = require(script.Parent.Parent.Types)
return require(game:GetService("CorePackages").Packages.Rodux).makeActionCreator(script.Name, function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: maybeAssert_upvr (readonly)
		[2]: Types_upvr (readonly)
	]]
	maybeAssert_upvr(Types_upvr.IMessage(arg1))
	local module = {}
	module.message = arg1
	return module
end)