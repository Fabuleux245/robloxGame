-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:07
-- Luau version 6, Types version 3
-- Time taken: 0.001756 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local React_upvr = require(Parent.React)
local ReactOtter_upvr = require(Parent.ReactOtter)
return function(arg1, arg2, arg3) -- Line 7, Named "useAnimateFullscreen"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ReactOtter_upvr (readonly)
	]]
	if arg2 == nil then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
		local var5_upvr
	end
	if arg1 and true then
		var5_upvr = 0
	else
		var5_upvr = 1
	end
	local any_useState_result1_2_upvr, any_useState_result2_upvr = React_upvr.useState(var5_upvr)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(var5_upvr, React_upvr.useCallback(function() -- Line 17
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_2 (readonly)
		]]
		any_useState_result2_upvr_2(false)
	end, {}))
	local tbl = {var5_upvr, any_useState_result1_2_upvr}
	tbl[3] = arg3
	React_upvr.useEffect(function() -- Line 23
		--[[ Upvalues[7]:
			[1]: var5_upvr (readonly)
			[2]: any_useState_result1_2_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
			[5]: any_useAnimatedBinding_result2_upvr (readonly)
			[6]: ReactOtter_upvr (copied, readonly)
			[7]: arg3 (readonly)
		]]
		if var5_upvr == any_useState_result1_2_upvr then
			return nil
		end
		any_useState_result2_upvr(var5_upvr)
		any_useState_result2_upvr_2(true)
		any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(var5_upvr, arg3))
		return nil
	end, tbl)
	if any_useState_result1 or arg1 then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return true, any_useAnimatedBinding_result1
end