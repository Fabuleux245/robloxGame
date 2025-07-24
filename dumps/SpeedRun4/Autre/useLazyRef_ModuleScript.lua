-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:01
-- Luau version 6, Types version 3
-- Time taken: 0.000785 seconds

local React_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.React)
return function(arg1) -- Line 21, Named "useLazyRef"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1 = React_upvr.useRef(nil)
	local var3
	if any_useRef_result1.current == nil then
		any_useRef_result1.current = arg1()
	end
	if any_useRef_result1.current == nil then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "Ref must be defined after initialization function is called")
	return any_useRef_result1
end