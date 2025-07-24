-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:23
-- Luau version 6, Types version 3
-- Time taken: 0.000677 seconds

local React_upvr = require(script:FindFirstAncestor("SplashScreenManager").Parent.React)
local SplashScreenManager_upvr = require(script.Parent.SplashScreenManager)
return function() -- Line 9, Named "useIsFPSAtTarget"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: SplashScreenManager_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(SplashScreenManager_upvr.isFPSAtTarget())
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1) -- Line 11
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1)
	end, {any_useState_result2_upvr})
	React_upvr.useEffect(function() -- Line 15
		--[[ Upvalues[2]:
			[1]: SplashScreenManager_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr (readonly)
		]]
		SplashScreenManager_upvr.addStatusChangeListener(any_useCallback_result1_upvr)
		return function() -- Line 17
			--[[ Upvalues[2]:
				[1]: SplashScreenManager_upvr (copied, readonly)
				[2]: any_useCallback_result1_upvr (copied, readonly)
			]]
			SplashScreenManager_upvr.removeStatusChangeListener(any_useCallback_result1_upvr)
		end
	end, {})
	return any_useState_result1
end