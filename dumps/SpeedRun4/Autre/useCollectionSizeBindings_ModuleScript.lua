-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:48
-- Luau version 6, Types version 3
-- Time taken: 0.002592 seconds

local CollectionViews = script:FindFirstAncestor("CollectionViews")
local Parent = CollectionViews.Parent
local calculateItemWidth_upvr = require(CollectionViews.calculateItemWidth)
local function getItemSize_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 10, Named "getItemSize"
	--[[ Upvalues[1]:
		[1]: calculateItemWidth_upvr (readonly)
	]]
	local var3_result1 = calculateItemWidth_upvr(arg1, arg2, arg3, arg4, arg5)
	return Vector2.new(var3_result1, arg6(var3_result1))
end
local useStore_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useStore
local React_upvr = require(Parent.React)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 27, Named "useCollectionSizeBindings"
	--[[ Upvalues[4]:
		[1]: useStore_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: getItemSize_upvr (readonly)
		[4]: calculateItemWidth_upvr (readonly)
	]]
	local any_useBinding_result1, any_useBinding_result2_upvr_2 = React_upvr.useBinding(Vector2.zero)
	local var14
	if any_useBinding_result1:getValue() == Vector2.zero then
		any_useBinding_result2_upvr_2(useStore_upvr():getState().ScreenSize)
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var14 = any_useBinding_result1:getValue().X
		return var14
	end
	if not any_useBinding_result1:getValue() or not INLINED() then
		var14 = 0
	end
	local any_useBinding_result1_2, any_useBinding_result2_upvr = React_upvr.useBinding(getItemSize_upvr(arg1, arg2, arg3, var14, arg4, arg5))
	local any_useState_result1_upvr, any_useState_result2 = React_upvr.useState(nil)
	var14 = React_upvr
	function var14(arg1_2) -- Line 53
		--[[ Upvalues[9]:
			[1]: arg6 (readonly)
			[2]: any_useBinding_result2_upvr_2 (readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: arg3 (readonly)
			[6]: arg4 (readonly)
			[7]: arg5 (readonly)
			[8]: calculateItemWidth_upvr (copied, readonly)
			[9]: any_useBinding_result2_upvr (readonly)
		]]
		local AbsoluteSize = arg1_2.AbsoluteSize
		local var16
		if arg6 then
			arg6(AbsoluteSize)
		end
		any_useBinding_result2_upvr_2(AbsoluteSize)
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var16 = AbsoluteSize.X
			return var16
		end
		if not AbsoluteSize or not INLINED_2() then
			var16 = 0
		end
		local calculateItemWidth_upvr_result1 = calculateItemWidth_upvr(arg1, arg2, arg3, var16, arg4)
		any_useBinding_result2_upvr(Vector2.new(calculateItemWidth_upvr_result1, arg5(calculateItemWidth_upvr_result1)))
	end
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg2
	tbl[3] = arg3
	tbl[4] = arg4
	tbl[5] = arg5
	tbl[6] = arg6
	local any_useCallback_result1_upvr = var14.useCallback(var14, tbl)
	var14 = React_upvr.useEffect
	var14(function() -- Line 71
		--[[ Upvalues[2]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: any_useCallback_result1_upvr (readonly)
		]]
		if any_useState_result1_upvr then
			any_useCallback_result1_upvr(any_useState_result1_upvr)
		end
	end, {any_useCallback_result1_upvr, any_useState_result1_upvr})
	var14 = any_useBinding_result1_2
	return var14, any_useBinding_result1, any_useCallback_result1_upvr, any_useState_result2
end