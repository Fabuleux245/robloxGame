-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:52
-- Luau version 6, Types version 3
-- Time taken: 0.000676 seconds

local Parent = script.Parent.Parent
local sharedState_upvr = require(Parent.Dependencies.sharedState)
local var3_upvw = 0
local initialisedStack_upvr = sharedState_upvr.initialisedStack
local parseError_upvr = require(Parent.Logging.parseError)
return function(arg1, arg2, ...) -- Line 25, Named "captureDependencies"
	--[[ Upvalues[4]:
		[1]: sharedState_upvr (readonly)
		[2]: var3_upvw (read and write)
		[3]: initialisedStack_upvr (readonly)
		[4]: parseError_upvr (readonly)
	]]
	sharedState_upvr.dependencySet = arg1
	local var6 = sharedState_upvr
	var6.initialisedStackSize += 1
	local initialisedStackSize = sharedState_upvr.initialisedStackSize
	if var3_upvw < initialisedStackSize then
		initialisedStack_upvr[initialisedStackSize] = {}
		var3_upvw = initialisedStackSize
	else
		table.clear(initialisedStack_upvr[initialisedStackSize])
	end
	local packed = table.pack(xpcall(arg2, parseError_upvr, ...))
	sharedState_upvr.dependencySet = sharedState_upvr.dependencySet
	local var9 = sharedState_upvr
	var9.initialisedStackSize -= 1
	return table.unpack(packed, 1, packed.n)
end