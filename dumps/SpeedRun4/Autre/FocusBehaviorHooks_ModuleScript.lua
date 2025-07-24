-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:39
-- Luau version 6, Types version 3
-- Time taken: 0.000993 seconds

local Parent = script.Parent.Parent
local FocusBehaviors = require(Parent.FocusBehaviors)
local React_upvr = require(Parent.React)
local useContainerFocusBehavior_upvr = require(script.Parent.useContainerFocusBehavior)
local default_upvr = FocusBehaviors.default
local mostRecent_upvr = FocusBehaviors.mostRecent
local mostRecentOrDefault_upvr = FocusBehaviors.mostRecentOrDefault
return {
	useDefaultFocusBehavior = function(arg1) -- Line 15, Named "useDefaultFocusBehavior"
		--[[ Upvalues[3]:
			[1]: React_upvr (readonly)
			[2]: default_upvr (readonly)
			[3]: useContainerFocusBehavior_upvr (readonly)
		]]
		local any_useState_result1_upvr, any_useState_result2_2 = React_upvr.useState(nil)
		return any_useState_result2_2, useContainerFocusBehavior_upvr(React_upvr.useMemo(function() -- Line 20
			--[[ Upvalues[2]:
				[1]: default_upvr (copied, readonly)
				[2]: any_useState_result1_upvr (readonly)
			]]
			return default_upvr(any_useState_result1_upvr)
		end, {any_useState_result1_upvr}), arg1)
	end;
	useMostRecentFocusBehavior = function(arg1) -- Line 29, Named "useMostRecentFocusBehavior"
		--[[ Upvalues[3]:
			[1]: React_upvr (readonly)
			[2]: mostRecent_upvr (readonly)
			[3]: useContainerFocusBehavior_upvr (readonly)
		]]
		return useContainerFocusBehavior_upvr(React_upvr.useMemo(mostRecent_upvr, {}), arg1)
	end;
	useMostRecentOrDefaultFocusBehavior = function(arg1) -- Line 35, Named "useMostRecentOrDefaultFocusBehavior"
		--[[ Upvalues[3]:
			[1]: React_upvr (readonly)
			[2]: mostRecentOrDefault_upvr (readonly)
			[3]: useContainerFocusBehavior_upvr (readonly)
		]]
		local any_useState_result1_upvr_2, any_useState_result2 = React_upvr.useState(nil)
		return any_useState_result2, useContainerFocusBehavior_upvr(React_upvr.useMemo(function() -- Line 40
			--[[ Upvalues[2]:
				[1]: mostRecentOrDefault_upvr (copied, readonly)
				[2]: any_useState_result1_upvr_2 (readonly)
			]]
			return mostRecentOrDefault_upvr(any_useState_result1_upvr_2)
		end, {any_useState_result1_upvr_2}), arg1)
	end;
}