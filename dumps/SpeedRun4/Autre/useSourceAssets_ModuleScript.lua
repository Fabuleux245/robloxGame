-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:46
-- Luau version 6, Types version 3
-- Time taken: 0.002088 seconds

local ReactSceneUnderstanding = script:FindFirstAncestor("ReactSceneUnderstanding")
local React = require(ReactSceneUnderstanding.Parent.React)
local SceneUnderstanding_upvr = require(ReactSceneUnderstanding.Parent.SceneUnderstanding)
local useCurrentCamera_upvr = require(ReactSceneUnderstanding.useCurrentCamera)
local SceneAnalysisContext_upvr = require(ReactSceneUnderstanding.SceneAnalysisContext)
local useCameraState_upvr = require(ReactSceneUnderstanding.useCameraState)
local useCallback_upvr = React.useCallback
local getSourceAssetsInView_upvr = SceneUnderstanding_upvr.getSourceAssetsInView
local getSourceAssetsInRange_upvr = SceneUnderstanding_upvr.getSourceAssetsInRange
local useEffect_upvr = React.useEffect
local enums_upvr = require(ReactSceneUnderstanding.enums)
return function(arg1) -- Line 18, Named "useSourceAssets"
	--[[ Upvalues[9]:
		[1]: useCurrentCamera_upvr (readonly)
		[2]: SceneAnalysisContext_upvr (readonly)
		[3]: useCameraState_upvr (readonly)
		[4]: useCallback_upvr (readonly)
		[5]: getSourceAssetsInView_upvr (readonly)
		[6]: getSourceAssetsInRange_upvr (readonly)
		[7]: useEffect_upvr (readonly)
		[8]: SceneUnderstanding_upvr (readonly)
		[9]: enums_upvr (readonly)
	]]
	local useCurrentCamera_upvr_result1_upvr = useCurrentCamera_upvr()
	local any_use_result1_upvr = SceneAnalysisContext_upvr.use()
	local var6_result1_upvr = useCameraState_upvr(useCurrentCamera_upvr_result1_upvr)
	local var7_result1_upvr = useCallback_upvr(function(arg1_2, arg2) -- Line 27
		if #arg2 == #arg1_2 then
			for _, v in arg1_2 do
				if not table.find(arg2, v) then
					return true
				end
			end
			return false
		end
		return true
	end, {})
	local tbl = {useCurrentCamera_upvr_result1_upvr}
	tbl[2] = arg1
	tbl[3] = any_use_result1_upvr
	local useCallback_upvr_result1_upvr = useCallback_upvr(function() -- Line 41
		--[[ Upvalues[6]:
			[1]: getSourceAssetsInView_upvr (copied, readonly)
			[2]: useCurrentCamera_upvr_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: any_use_result1_upvr (readonly)
			[5]: var7_result1_upvr (readonly)
			[6]: getSourceAssetsInRange_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var21
		if arg1 then
			var21 = arg1.viewportQueryOptions
		else
			var21 = nil
		end
		var21 = any_use_result1_upvr
		local var8_result1_upvr = getSourceAssetsInView_upvr(useCurrentCamera_upvr_result1_upvr, var21)
		function var21(arg1_3) -- Line 43
			--[[ Upvalues[2]:
				[1]: var7_result1_upvr (copied, readonly)
				[2]: var8_result1_upvr (readonly)
			]]
			if var7_result1_upvr(arg1_3, var8_result1_upvr) then
				return var8_result1_upvr
			end
			return arg1_3
		end
		var21.setAssetsInView(var21)
		var21 = useCurrentCamera_upvr_result1_upvr.CFrame.Position
		if arg1 then
		else
		end
		var21 = any_use_result1_upvr.setAssetsInRange
		local var9_result1_upvr = getSourceAssetsInRange_upvr(var21, nil)
		var21(function(arg1_4) -- Line 49
			--[[ Upvalues[2]:
				[1]: var7_result1_upvr (copied, readonly)
				[2]: var9_result1_upvr (readonly)
			]]
			if var7_result1_upvr(arg1_4, var9_result1_upvr) then
				return var9_result1_upvr
			end
			return arg1_4
		end)
	end, tbl)
	useEffect_upvr(function() -- Line 54
		--[[ Upvalues[2]:
			[1]: SceneUnderstanding_upvr (copied, readonly)
			[2]: useCallback_upvr_result1_upvr (readonly)
		]]
		useCallback_upvr_result1_upvr()
		local any_Connect_result1_upvr = workspace.DescendantAdded:Connect(function(arg1_5) -- Line 55
			--[[ Upvalues[2]:
				[1]: SceneUnderstanding_upvr (copied, readonly)
				[2]: useCallback_upvr_result1_upvr (copied, readonly)
			]]
			if SceneUnderstanding_upvr.isSourceAsset(arg1_5) then
				useCallback_upvr_result1_upvr()
			end
		end)
		return function() -- Line 63
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {useCallback_upvr_result1_upvr})
	useEffect_upvr(function() -- Line 68
		--[[ Upvalues[3]:
			[1]: var6_result1_upvr (readonly)
			[2]: enums_upvr (copied, readonly)
			[3]: useCallback_upvr_result1_upvr (readonly)
		]]
		if var6_result1_upvr == enums_upvr.CameraState.Idle then
			useCallback_upvr_result1_upvr()
		end
	end, {var6_result1_upvr})
	return {
		assetsInRange = any_use_result1_upvr.assetsInRange;
		assetsInView = any_use_result1_upvr.assetsInView;
	}
end