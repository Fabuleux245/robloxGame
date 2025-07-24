-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:45
-- Luau version 6, Types version 3
-- Time taken: 0.000445 seconds

local Parent = script:FindFirstAncestor("Foundation").Parent
local React_upvr = require(Parent.React)
local ReactIs_upvr = require(Parent.ReactIs)
return function(arg1) -- Line 10, Named "useBindable"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ReactIs_upvr (readonly)
	]]
	local any_useBinding_result1, any_useBinding_result2 = React_upvr.useBinding(nil)
	if ReactIs_upvr.isBinding(arg1) then
		return arg1
	end
	any_useBinding_result2(arg1)
	return any_useBinding_result1
end