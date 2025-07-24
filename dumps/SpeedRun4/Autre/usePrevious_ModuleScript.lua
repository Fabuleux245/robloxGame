-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:41
-- Luau version 6, Types version 3
-- Time taken: 0.000489 seconds

local Parent = script:FindFirstAncestor("RoactUtils").Parent
if require(Parent.SharedFlags).GetFFlagMigrateRoactUtilsToReactUtils() then
	return require(Parent.ReactUtils).usePrevious
end
local React_upvr = require(Parent.React)
return function(arg1) -- Line 16, Named "usePrevious"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 18
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		any_useRef_result1_upvr.current = arg1
	end)
	return any_useRef_result1_upvr.current
end