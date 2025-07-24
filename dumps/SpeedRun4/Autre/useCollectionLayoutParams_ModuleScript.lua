-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:47
-- Luau version 6, Types version 3
-- Time taken: 0.006402 seconds

local CollectionViews = script:FindFirstAncestor("CollectionViews")
local Parent = CollectionViews.Parent
local useStore_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useStore
local CollectionLayoutCalculators_upvr = require(CollectionViews.CollectionLayoutCalculators)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local usePreferredInput_upvr = require(Parent.Responsive).usePreferredInput
local React_upvr = require(Parent.React)
local calculateItemWidth_upvr = require(CollectionViews.calculateItemWidth)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 27, Named "useCollectionLayoutParams"
	--[[ Upvalues[6]:
		[1]: useStore_upvr (readonly)
		[2]: CollectionLayoutCalculators_upvr (readonly)
		[3]: useDesignTokens_upvr (readonly)
		[4]: usePreferredInput_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: calculateItemWidth_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useStore_upvr_result1_upvr = useStore_upvr()
	local var10_upvr = arg5
	if not var10_upvr then
		var10_upvr = CollectionLayoutCalculators_upvr
	end
	if not arg4 or not arg4.sideMargin then
		local var11_upvr
	end
	if not arg4 or not arg4.columnGap then
		local var12_upvr
	end
	if not arg4 or not arg4.numColumns then
		local var13_upvr
	end
	if not arg4 or not arg4.fractionalItemAmount then
		local var14_upvr
	end
	if not arg4 or not arg4.loadMoreThreshold then
		local var15_upvr
	end
	local var5_result1_upvr = useDesignTokens_upvr()
	local var6_result1_upvr = usePreferredInput_upvr()
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	if any_useRef_result1_upvr.current == nil then
		any_useRef_result1_upvr.current = useStore_upvr_result1_upvr:getState().ScreenSize
	end
	local X_3_upvr = any_useRef_result1_upvr.current.X
	local any_useState_result1_2_upvr, any_useState_result2_upvr_6 = React_upvr.useState(function() -- Line 60
		--[[ Upvalues[5]:
			[1]: var11_upvr (readonly)
			[2]: var10_upvr (readonly)
			[3]: X_3_upvr (readonly)
			[4]: var5_result1_upvr (readonly)
			[5]: useStore_upvr_result1_upvr (readonly)
		]]
		local var21 = var11_upvr
		if not var21 then
			var21 = var10_upvr.calculateSideMargin(X_3_upvr, var5_result1_upvr, useStore_upvr_result1_upvr:getState().ScreenSize.X)
		end
		return var21
	end)
	local any_useState_result1_upvr, any_useState_result2_upvr_2 = React_upvr.useState(function() -- Line 64
		--[[ Upvalues[5]:
			[1]: var12_upvr (readonly)
			[2]: var10_upvr (readonly)
			[3]: X_3_upvr (readonly)
			[4]: var5_result1_upvr (readonly)
			[5]: useStore_upvr_result1_upvr (readonly)
		]]
		local var25 = var12_upvr
		if not var25 then
			var25 = var10_upvr.calculateColumnGap(X_3_upvr, var5_result1_upvr, useStore_upvr_result1_upvr:getState().ScreenSize.X)
		end
		return var25
	end)
	local any_useState_result1_4_upvr, any_useState_result2_upvr_3 = React_upvr.useState(function() -- Line 68
		--[[ Upvalues[4]:
			[1]: var14_upvr (readonly)
			[2]: var10_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: var6_result1_upvr (readonly)
		]]
		local var29 = var14_upvr
		if not var29 then
			var29 = var10_upvr.calculateFractionalItemAmount(arg1, var6_result1_upvr)
		end
		return var29
	end)
	local any_useState_result1_3_upvr, any_useState_result2_upvr_5 = React_upvr.useState(function() -- Line 72
		--[[ Upvalues[7]:
			[1]: var13_upvr (readonly)
			[2]: var10_upvr (readonly)
			[3]: X_3_upvr (readonly)
			[4]: any_useState_result1_2_upvr (readonly)
			[5]: any_useState_result1_upvr (readonly)
			[6]: arg1 (readonly)
			[7]: var5_result1_upvr (readonly)
		]]
		local var33 = var13_upvr
		if not var33 then
			var33 = var10_upvr.calculateNumColumns(X_3_upvr, any_useState_result1_2_upvr, any_useState_result1_upvr, arg1, var5_result1_upvr)
		end
		return var33
	end)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(function() -- Line 76
		--[[ Upvalues[3]:
			[1]: var15_upvr (readonly)
			[2]: var10_upvr (readonly)
			[3]: X_3_upvr (readonly)
		]]
		local var37 = var15_upvr
		if not var37 then
			var37 = var10_upvr.calculateLoadMoreThreshold(X_3_upvr)
		end
		return var37
	end)
	local any_useState_result1_5, any_useState_result2_upvr_4 = React_upvr.useState(function() -- Line 81
		--[[ Upvalues[7]:
			[1]: arg3 (readonly)
			[2]: calculateItemWidth_upvr (copied, readonly)
			[3]: any_useState_result1_3_upvr (readonly)
			[4]: any_useState_result1_upvr (readonly)
			[5]: any_useState_result1_2_upvr (readonly)
			[6]: X_3_upvr (readonly)
			[7]: any_useState_result1_4_upvr (readonly)
		]]
		if arg3 then
			return calculateItemWidth_upvr(any_useState_result1_3_upvr, any_useState_result1_upvr, any_useState_result1_2_upvr, X_3_upvr, any_useState_result1_4_upvr)
		end
		return 1
	end)
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg3
	tbl[3] = var12_upvr
	tbl[4] = var11_upvr
	tbl[5] = var13_upvr
	tbl[6] = var14_upvr
	tbl[7] = var15_upvr
	tbl[8] = var5_result1_upvr
	tbl[9] = useStore_upvr_result1_upvr
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 90
		--[[ Upvalues[19]:
			[1]: useStore_upvr_result1_upvr (readonly)
			[2]: var11_upvr (readonly)
			[3]: var10_upvr (readonly)
			[4]: var5_result1_upvr (readonly)
			[5]: any_useState_result2_upvr_6 (readonly)
			[6]: var12_upvr (readonly)
			[7]: any_useState_result2_upvr_2 (readonly)
			[8]: var13_upvr (readonly)
			[9]: arg1 (readonly)
			[10]: any_useState_result2_upvr_5 (readonly)
			[11]: var14_upvr (readonly)
			[12]: var6_result1_upvr (readonly)
			[13]: any_useState_result2_upvr_3 (readonly)
			[14]: var15_upvr (readonly)
			[15]: any_useState_result2_upvr (readonly)
			[16]: any_useRef_result1_upvr (readonly)
			[17]: arg3 (readonly)
			[18]: calculateItemWidth_upvr (copied, readonly)
			[19]: any_useState_result2_upvr_4 (readonly)
		]]
		local X = arg1_2.X
		local X_2 = useStore_upvr_result1_upvr:getState().ScreenSize.X
		local var46 = var11_upvr
		if not var46 then
			var46 = var10_upvr.calculateSideMargin(X, var5_result1_upvr, X_2)
		end
		any_useState_result2_upvr_6(var46)
		local var47 = var12_upvr
		if not var47 then
			var47 = var10_upvr.calculateColumnGap(X, var5_result1_upvr, X_2)
		end
		any_useState_result2_upvr_2(var47)
		local var48 = var13_upvr
		if not var48 then
			var48 = var10_upvr.calculateNumColumns(X, var46, var47, arg1, var5_result1_upvr)
		end
		any_useState_result2_upvr_5(var48)
		local var49 = var14_upvr
		if not var49 then
			var49 = var10_upvr.calculateFractionalItemAmount(arg1, var6_result1_upvr)
		end
		any_useState_result2_upvr_3(var49)
		local var50 = var15_upvr
		if not var50 then
			var50 = var10_upvr.calculateLoadMoreThreshold(X)
		end
		any_useState_result2_upvr(var50)
		any_useRef_result1_upvr.current = arg1_2
		if arg3 then
			any_useState_result2_upvr_4(calculateItemWidth_upvr(var48, var47, var46, X, var49))
		end
	end, tbl)
	local tbl_2 = {any_useCallback_result1_upvr}
	tbl_2[2] = arg2
	React_upvr.useEffect(function() -- Line 147
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: any_useCallback_result1_upvr (readonly)
		]]
		local var54_upvw
		if arg2 then
			any_useCallback_result1_upvr(arg2.AbsoluteSize)
			var54_upvw = arg2:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 151
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
				]]
				any_useCallback_result1_upvr(arg2.AbsoluteSize)
			end)
		end
		return function() -- Line 155
			--[[ Upvalues[1]:
				[1]: var54_upvw (read and write)
			]]
			if var54_upvw then
				var54_upvw:Disconnect()
			end
		end
	end, tbl_2)
	return {
		numColumns = any_useState_result1_3_upvr;
		fractionalItemAmount = any_useState_result1_4_upvr;
		columnGap = any_useState_result1_upvr;
		sideMargin = any_useState_result1_2_upvr;
		verticalPadding = var10_upvr.calculateVerticalPadding(var5_result1_upvr, arg1);
		maxTilesToShow = var10_upvr.calculateMaxTilesToShow(var6_result1_upvr);
		itemWidth = any_useState_result1_5;
		loadMoreThreshold = any_useState_result1;
	}
end