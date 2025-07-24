-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:37
-- Luau version 6, Types version 3
-- Time taken: 0.000419 seconds

local Parent = script:FindFirstAncestor("RoactUtils").Parent
local React_upvr = require(Parent.React)
local StoreContext_upvr = require(Parent.RoactRodux).StoreContext
return function() -- Line 16, Named "useStore"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: StoreContext_upvr (readonly)
	]]
	local any_useContext_result1 = React_upvr.useContext(StoreContext_upvr)
	assert(any_useContext_result1, "useDispatch and useSelector can only be called from a descendant of the Rodux Store Provider")
	return any_useContext_result1
end