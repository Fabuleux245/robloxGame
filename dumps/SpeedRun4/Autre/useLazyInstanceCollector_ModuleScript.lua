-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:42
-- Luau version 6, Types version 3
-- Time taken: 0.001884 seconds

local ReactSceneUnderstanding = script:FindFirstAncestor("ReactSceneUnderstanding")
local React = require(ReactSceneUnderstanding.Parent.React)
local SceneUnderstanding_upvr = require(ReactSceneUnderstanding.Parent.SceneUnderstanding)
local DataModelTraversalOptions_upvr = SceneUnderstanding_upvr.DataModelTraversalOptions
local usePrevious_upvr = require(ReactSceneUnderstanding.Parent.ReactUtils).usePrevious
local useMemo_upvr = React.useMemo
local Cryo_upvr = require(ReactSceneUnderstanding.Parent.Cryo)
local useState_upvr = React.useState
local useEffect_upvr = React.useEffect
return function(arg1, arg2, arg3) -- Line 17, Named "useLazyInstanceCollector"
	--[[ Upvalues[7]:
		[1]: DataModelTraversalOptions_upvr (readonly)
		[2]: usePrevious_upvr (readonly)
		[3]: useMemo_upvr (readonly)
		[4]: SceneUnderstanding_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: useState_upvr (readonly)
		[7]: useEffect_upvr (readonly)
	]]
	local var5_result1 = usePrevious_upvr(arg3)
	local tbl = {}
	tbl[1] = arg2
	local var6_result1_upvr = useMemo_upvr(function() -- Line 26
		--[[ Upvalues[4]:
			[1]: SceneUnderstanding_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
		]]
		return SceneUnderstanding_upvr.createLazyInstanceCollector(arg1, arg2, arg3)
	end, Cryo_upvr.List.join(arg1, tbl))
	local useState_upvr_result1, useState_upvr_result2_upvr = useState_upvr({})
	if arg3 and var5_result1 and arg3.instanceProcessingLimit ~= var5_result1.instanceProcessingLimit then
		var6_result1_upvr.setInstancesProcessedPerFrame(DataModelTraversalOptions_upvr.new(arg3).instanceProcessingLimit)
	end
	useEffect_upvr(function() -- Line 38
		--[[ Upvalues[2]:
			[1]: var6_result1_upvr (readonly)
			[2]: useState_upvr_result2_upvr (readonly)
		]]
		var6_result1_upvr.onStepped(function(arg1_2) -- Line 39
			--[[ Upvalues[1]:
				[1]: useState_upvr_result2_upvr (copied, readonly)
			]]
			useState_upvr_result2_upvr(table.clone(arg1_2))
		end)
		var6_result1_upvr.listen()
		return function() -- Line 47
			--[[ Upvalues[1]:
				[1]: var6_result1_upvr (copied, readonly)
			]]
			var6_result1_upvr.destroy()
		end
	end, {var6_result1_upvr})
	return useState_upvr_result1
end