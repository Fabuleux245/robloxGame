-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:04
-- Luau version 6, Types version 3
-- Time taken: 0.000526 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local BackBehavior_upvr = require(Parent.BackBehavior)
local Object_upvr = require(Parent.Parent.LuauPolyfill).Object
local SwitchRouter_upvr = require(Parent_2.SwitchRouter)
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[3]:
		[1]: BackBehavior_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: SwitchRouter_upvr (readonly)
	]]
	local module = {
		resetOnBlur = false;
		backBehavior = BackBehavior_upvr.InitialRoute;
	}
	if arg2 then
		module = Object_upvr.assign(module, arg2)
	end
	return SwitchRouter_upvr(arg1, module)
end