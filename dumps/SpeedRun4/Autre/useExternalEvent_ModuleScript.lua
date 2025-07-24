-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:39
-- Luau version 6, Types version 3
-- Time taken: 0.001006 seconds

local Parent = script:FindFirstAncestor("RoactUtils").Parent
if require(Parent.SharedFlags).GetFFlagMigrateRoactUtilsToReactUtils() then
	return require(Parent.ReactUtils).useEventConnection
end
local React_upvr = require(Parent.React)
local dependencyArray_upvr = require(script.Parent.dependencyArray)
return function(arg1, arg2) -- Line 17, Named "useExternalEvent"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: dependencyArray_upvr (readonly)
	]]
	React_upvr.useEffect(function() -- Line 18
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		if arg1 == nil then
			return nil
		end
		local any_Connect_result1_upvr = arg1:Connect(arg2)
		return function() -- Line 24
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, dependencyArray_upvr(arg1, arg2))
end