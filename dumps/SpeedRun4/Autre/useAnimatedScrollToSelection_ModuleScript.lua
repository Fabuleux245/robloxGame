-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:08
-- Luau version 6, Types version 3
-- Time taken: 0.002962 seconds

local Parent = script:FindFirstAncestor("RobloxAppHooks").Parent
local tbl_upvr = {
	dampingRatio = 1;
	frequency = 3;
}
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 10, Named "calculateTargetScrollOffset"
	local var3
	if arg3 == Enum.ScrollingDirection.X then
		var3 = (arg1.CanvasPosition.X) + (arg2.AbsolutePosition.X - arg1.AbsolutePosition.X)
	else
		var3 = (arg1.CanvasPosition.Y) + (arg2.AbsolutePosition.Y - arg1.AbsolutePosition.Y)
	end
	if var3 < arg5 then
		return 0
	end
	return math.max(var3 - arg4, 0)
end
local ReactOtter_upvr = require(Parent.ReactOtter)
local React_upvr = require(Parent.React)
return function(arg1, arg2, arg3, arg4) -- Line 28, Named "useAnimatedScrollToSelection"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: ReactOtter_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local var6_upvr = arg2 or 0
	local var7_upvr = arg3 or 0
	local var8_upvr
	if arg4 then
		var8_upvr = arg4
	else
		var8_upvr = tbl_upvr
	end
	local any_useAnimatedBinding_result1_upvr, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(0)
	local module = {var6_upvr}
	module[2] = arg1
	module[3] = var7_upvr
	module[4] = var8_upvr
	local module_2 = {}
	module_2[1] = arg1
	return React_upvr.useMemo(function() -- Line 59
		--[[ Upvalues[2]:
			[1]: any_useAnimatedBinding_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		return any_useAnimatedBinding_result1_upvr:map(function(arg1_3) -- Line 60
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			if arg1 == Enum.ScrollingDirection.X then
				return Vector2.new(arg1_3, 0)
			end
			return Vector2.new(0, arg1_3)
		end)
	end, module_2), React_upvr.useCallback(function(arg1_2, arg2_2, arg3_2, arg4_2) -- Line 41
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: var6_upvr (readonly)
			[3]: var7_upvr (readonly)
			[4]: any_useAnimatedBinding_result2_upvr (readonly)
			[5]: ReactOtter_upvr (copied, readonly)
			[6]: var8_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if arg2_2 then
		elseif arg4_2 then
			local var13
			if arg4_2:IsDescendantOf(arg1_2) then
				if arg1 == Enum.ScrollingDirection.X then
					var13 = (arg1_2.CanvasPosition.X) + (arg4_2.AbsolutePosition.X - arg1_2.AbsolutePosition.X)
				else
					var13 = (arg1_2.CanvasPosition.Y) + (arg4_2.AbsolutePosition.Y - arg1_2.AbsolutePosition.Y)
				end
				if var13 < var7_upvr then
				else
				end
				var13 = var8_upvr
				any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(math.max(var13 - var6_upvr, 0), var13))
			end
		end
	end, module)
end