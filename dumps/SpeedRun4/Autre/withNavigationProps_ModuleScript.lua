-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:01
-- Luau version 6, Types version 3
-- Time taken: 0.000855 seconds

local Parent = script:FindFirstAncestor("RobloxAppNavigation").Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local useNavigationProps_upvr = require(script.Parent.useNavigationProps)
return function(arg1) -- Line 12, Named "withNavigationProps"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: useNavigationProps_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: useNavigationProps_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		return function(arg1_3) -- Line 14
			--[[ Upvalues[5]:
				[1]: React_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: Cryo_upvr (copied, readonly)
				[4]: useNavigationProps_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
			]]
			return React_upvr.createElement(arg1_2, Cryo_upvr.Dictionary.join(arg1_3, useNavigationProps_upvr(arg1)))
		end
	end
end