-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:44
-- Luau version 6, Types version 3
-- Time taken: 0.001443 seconds

local Parent = script:FindFirstAncestor("Navigation").Parent
local useNavigation_upvr = require(script.Parent.useNavigation)
local React_upvr = require(Parent.React)
local RoactNavigation_upvr = require(Parent.RoactNavigation)
return function() -- Line 15, Named "useEarlyIsFocused"
	--[[ Upvalues[3]:
		[1]: useNavigation_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: RoactNavigation_upvr (readonly)
	]]
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(useNavigation_upvr_result1_upvr.isFocused())
	React_upvr.useEffect(function() -- Line 20
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: useNavigation_upvr_result1_upvr (readonly)
			[3]: RoactNavigation_upvr (copied, readonly)
		]]
		any_useState_result2_upvr(useNavigation_upvr_result1_upvr.isFocused())
		local any_addListener_result1_upvr_2 = useNavigation_upvr_result1_upvr.addListener(RoactNavigation_upvr.Events.WillFocus, function() -- Line 24
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(true)
		end)
		local any_addListener_result1_upvr = useNavigation_upvr_result1_upvr.addListener(RoactNavigation_upvr.Events.WillBlur, function() -- Line 28
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(false)
		end)
		return function() -- Line 32
			--[[ Upvalues[2]:
				[1]: any_addListener_result1_upvr_2 (readonly)
				[2]: any_addListener_result1_upvr (readonly)
			]]
			any_addListener_result1_upvr_2.remove()
			any_addListener_result1_upvr.remove()
		end
	end, {useNavigation_upvr_result1_upvr})
	return any_useState_result1
end