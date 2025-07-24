-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:42
-- Luau version 6, Types version 3
-- Time taken: 0.000528 seconds

local CorePackages = game:GetService("CorePackages")
local t = require(CorePackages.Packages.t)
local maybeAssert_upvr = require(script.Parent.Parent.Helpers.maybeAssert)
local any_tuple_result1_upvr = t.tuple(t.string, t.string)
local ExpChat_upvr = require(CorePackages.Workspace.Packages.ExpChat)
return require(CorePackages.Packages.Rodux).makeActionCreator(script.Name, function(arg1, arg2) -- Line 10
	--[[ Upvalues[3]:
		[1]: maybeAssert_upvr (readonly)
		[2]: any_tuple_result1_upvr (readonly)
		[3]: ExpChat_upvr (readonly)
	]]
	maybeAssert_upvr(any_tuple_result1_upvr(arg1, arg2))
	ExpChat_upvr.Events.LegacyBubbleTextUpdated(arg1, arg2)
	local module = {}
	module.messageId = arg1
	module.newText = arg2
	return module
end)