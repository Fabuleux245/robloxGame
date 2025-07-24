-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:57
-- Luau version 6, Types version 3
-- Time taken: 0.001355 seconds

local FocusNavigationUtils = script:FindFirstAncestor("FocusNavigationUtils")
local FocusNavigableSurfaceRegistry = require(FocusNavigationUtils.FocusNavigableSurfaceRegistry)
local useRegisterFocusNavigableSurface_upvr = FocusNavigableSurfaceRegistry.useRegisterFocusNavigableSurface
local useDeRegisterFocusNavigableSurface_upvr = FocusNavigableSurfaceRegistry.useDeRegisterFocusNavigableSurface
local React_upvr = require(FocusNavigationUtils.Parent.React)
return function(arg1, arg2, arg3) -- Line 17
	--[[ Upvalues[3]:
		[1]: useRegisterFocusNavigableSurface_upvr (readonly)
		[2]: useDeRegisterFocusNavigableSurface_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local var7_upvr = false
	if arg1 ~= nil then
		if arg3 == nil then
			var7_upvr = true
		else
			var7_upvr = arg3
		end
	end
	local useRegisterFocusNavigableSurface_upvr_result1_upvr = useRegisterFocusNavigableSurface_upvr()
	local var5_result1_upvr = useDeRegisterFocusNavigableSurface_upvr()
	local tbl = {var7_upvr}
	tbl[2] = arg2
	React_upvr.useEffect(function() -- Line 26
		--[[ Upvalues[5]:
			[1]: var7_upvr (readonly)
			[2]: useRegisterFocusNavigableSurface_upvr_result1_upvr (readonly)
			[3]: arg2 (readonly)
			[4]: arg1 (readonly)
			[5]: var5_result1_upvr (readonly)
		]]
		if var7_upvr then
			useRegisterFocusNavigableSurface_upvr_result1_upvr(arg2, arg1)
		else
			var5_result1_upvr(arg2, arg1)
		end
		return function() -- Line 33
			--[[ Upvalues[3]:
				[1]: var5_result1_upvr (copied, readonly)
				[2]: arg2 (copied, readonly)
				[3]: arg1 (copied, readonly)
			]]
			var5_result1_upvr(arg2, arg1)
		end
	end, tbl)
end