-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:52
-- Luau version 6, Types version 3
-- Time taken: 0.006404 seconds

local AssetFavorites = script:FindFirstAncestor("AssetFavorites")
local React = require(AssetFavorites.Parent.React)
local HttpRequest = require(AssetFavorites.Parent.HttpRequest)
local tbl = {}
local RequestInternal = HttpRequest.requestFunctions.RequestInternal
tbl.requestFunction = RequestInternal
if require(AssetFavorites.Parent.SharedFlags).FFlagLuaAppDefaultHttpRetry then
	RequestInternal = game:DefineFastInt("UseAssetFavoritingHttpRetryCount", 4)
else
	RequestInternal = nil
end
tbl.maxRetryCount = RequestInternal
local useLocalUserId_upvr = require(AssetFavorites.Hooks.useLocalUserId)
local useState_upvr = React.useState
local useRef_upvr = React.useRef
local useCallback_upvr = React.useCallback
local logger_upvr = require(AssetFavorites.logger)
local Promise_upvr = require(AssetFavorites.Parent.Promise)
local DeleteFavoriteForAsset_upvr = require(AssetFavorites.Requests.DeleteFavoriteForAsset)
local any_config_result1_upvr = HttpRequest.config(tbl)
local PostFavoriteForAsset_upvr = require(AssetFavorites.Requests.PostFavoriteForAsset)
local useMemo_upvr = React.useMemo
local Cryo_upvr = require(AssetFavorites.Parent.Cryo)
local useEffect_upvr = React.useEffect
local GetFavoriteForAsset_upvr = require(AssetFavorites.Requests.GetFavoriteForAsset)
local StatusCodes_upvr = require(AssetFavorites.Parent.Http).StatusCodes
return function(arg1) -- Line 32, Named "useAssetFavoriting"
	--[[ Upvalues[14]:
		[1]: useLocalUserId_upvr (readonly)
		[2]: useState_upvr (readonly)
		[3]: useRef_upvr (readonly)
		[4]: useCallback_upvr (readonly)
		[5]: logger_upvr (readonly)
		[6]: Promise_upvr (readonly)
		[7]: DeleteFavoriteForAsset_upvr (readonly)
		[8]: any_config_result1_upvr (readonly)
		[9]: PostFavoriteForAsset_upvr (readonly)
		[10]: useMemo_upvr (readonly)
		[11]: Cryo_upvr (readonly)
		[12]: useEffect_upvr (readonly)
		[13]: GetFavoriteForAsset_upvr (readonly)
		[14]: StatusCodes_upvr (readonly)
	]]
	local useLocalUserId_upvr_result1_upvr = useLocalUserId_upvr()
	local var7_result1_upvr, var7_result2_upvr = useState_upvr({})
	local var8_result1_upvr = useRef_upvr({})
	local var9_result1_upvr = useCallback_upvr(function(arg1_2) -- Line 42
		--[[ Upvalues[2]:
			[1]: logger_upvr (copied, readonly)
			[2]: useLocalUserId_upvr_result1_upvr (readonly)
		]]
		if not arg1_2 then
			return false
		end
		if arg1_2 <= 0 or arg1_2 % 1 ~= 0 then
			logger_upvr:warning(`validation failed (assetId must be a positive int, got {arg1_2})`)
			return false
		end
		if not useLocalUserId_upvr_result1_upvr or useLocalUserId_upvr_result1_upvr <= 0 then
			logger_upvr:warning(`validation failed (userId must be a positive int, got {useLocalUserId_upvr_result1_upvr})`)
			return false
		end
		return true
	end, {useLocalUserId_upvr_result1_upvr})
	local useCallback_upvr_result1_upvr_4 = useCallback_upvr(function(arg1_3) -- Line 66
		--[[ Upvalues[1]:
			[1]: var7_result1_upvr (readonly)
		]]
		local var30 = var7_result1_upvr[tostring(arg1_3)]
		if var30 ~= nil then
			return var30
		end
		return false
	end, {var7_result1_upvr})
	local useCallback_upvr_result1_upvr_2 = useCallback_upvr(function(arg1_4) -- Line 71
		--[[ Upvalues[1]:
			[1]: var7_result1_upvr (readonly)
		]]
		local var34
		if var7_result1_upvr[tostring(arg1_4)] == nil then
			var34 = false
		else
			var34 = true
		end
		return var34
	end, {var7_result1_upvr})
	local useCallback_upvr_result1_upvr_3 = useCallback_upvr(function(arg1_5) -- Line 75
		--[[ Upvalues[1]:
			[1]: var8_result1_upvr (readonly)
		]]
		local var38
		if var8_result1_upvr.current[tostring(arg1_5)] == nil then
			var38 = false
		else
			var38 = true
		end
		return var38
	end, {})
	local useCallback_upvr_result1_upvr = useCallback_upvr(function(arg1_6, arg2) -- Line 79
		--[[ Upvalues[1]:
			[1]: var7_result2_upvr (readonly)
		]]
		var7_result2_upvr(function(arg1_7) -- Line 80
			--[[ Upvalues[2]:
				[1]: arg1_6 (readonly)
				[2]: arg2 (readonly)
			]]
			local clone = table.clone(arg1_7)
			clone[tostring(arg1_6)] = arg2
			return clone
		end)
	end, {})
	local var15_result1_upvr = useMemo_upvr(function() -- Line 114
		--[[ Upvalues[5]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var9_result1_upvr (readonly)
			[4]: useCallback_upvr_result1_upvr_2 (readonly)
			[5]: useCallback_upvr_result1_upvr_3 (readonly)
		]]
		return Cryo_upvr.List.filter(arg1, function(arg1_10) -- Line 115
			--[[ Upvalues[3]:
				[1]: var9_result1_upvr (copied, readonly)
				[2]: useCallback_upvr_result1_upvr_2 (copied, readonly)
				[3]: useCallback_upvr_result1_upvr_3 (copied, readonly)
			]]
			local var9_result1_upvr_result1 = var9_result1_upvr(arg1_10)
			if var9_result1_upvr_result1 then
				var9_result1_upvr_result1 = not useCallback_upvr_result1_upvr_2(arg1_10)
				if var9_result1_upvr_result1 then
					var9_result1_upvr_result1 = not useCallback_upvr_result1_upvr_3(arg1_10)
				end
			end
			return var9_result1_upvr_result1
		end)
	end, Cryo_upvr.List.join(arg1, {useCallback_upvr_result1_upvr_2, useCallback_upvr_result1_upvr_3, var9_result1_upvr}))
	useEffect_upvr(function() -- Line 120
		--[[ Upvalues[8]:
			[1]: var15_result1_upvr (readonly)
			[2]: var8_result1_upvr (readonly)
			[3]: useCallback_upvr_result1_upvr (readonly)
			[4]: logger_upvr (copied, readonly)
			[5]: GetFavoriteForAsset_upvr (copied, readonly)
			[6]: any_config_result1_upvr (copied, readonly)
			[7]: useLocalUserId_upvr_result1_upvr (readonly)
			[8]: StatusCodes_upvr (copied, readonly)
		]]
		for _, v_upvr in var15_result1_upvr do
			local tostring_result1_upvr = tostring(v_upvr)
			var8_result1_upvr.current[tostring_result1_upvr] = true
			useCallback_upvr_result1_upvr(v_upvr, false)
			logger_upvr:debug(`fetching initial favorite status for asset {v_upvr}`)
			GetFavoriteForAsset_upvr(any_config_result1_upvr, tostring(useLocalUserId_upvr_result1_upvr), tostring_result1_upvr):andThen(function(arg1_11) -- Line 129
				--[[ Upvalues[3]:
					[1]: StatusCodes_upvr (copied, readonly)
					[2]: useCallback_upvr_result1_upvr (copied, readonly)
					[3]: v_upvr (readonly)
				]]
				if arg1_11.responseCode == StatusCodes_upvr.OK then
					if arg1_11.responseBody then
						useCallback_upvr_result1_upvr(v_upvr, true)
					end
				end
			end):catch(function(arg1_12) -- Line 138
				--[[ Upvalues[1]:
					[1]: logger_upvr (copied, readonly)
				]]
				logger_upvr:warning(arg1_12.StatusMessage)
			end):finally(function() -- Line 141
				--[[ Upvalues[2]:
					[1]: var8_result1_upvr (copied, readonly)
					[2]: tostring_result1_upvr (readonly)
				]]
				var8_result1_upvr.current[tostring_result1_upvr] = nil
			end)
		end
	end, {var15_result1_upvr, useLocalUserId_upvr_result1_upvr})
	return {
		getAll = useCallback_upvr(function() -- Line 62
			--[[ Upvalues[1]:
				[1]: var7_result1_upvr (readonly)
			]]
			return var7_result1_upvr
		end, {var7_result1_upvr});
		getByAssetId = useCallback_upvr_result1_upvr_4;
		toggleFavorite = useCallback_upvr(function(arg1_8) -- Line 87
			--[[ Upvalues[9]:
				[1]: var9_result1_upvr (readonly)
				[2]: Promise_upvr (copied, readonly)
				[3]: useCallback_upvr_result1_upvr_4 (readonly)
				[4]: useCallback_upvr_result1_upvr (readonly)
				[5]: DeleteFavoriteForAsset_upvr (copied, readonly)
				[6]: any_config_result1_upvr (copied, readonly)
				[7]: useLocalUserId_upvr_result1_upvr (readonly)
				[8]: PostFavoriteForAsset_upvr (copied, readonly)
				[9]: logger_upvr (copied, readonly)
			]]
			if not var9_result1_upvr(arg1_8) then
				return Promise_upvr.resolve(nil)
			end
			local var32_result1_upvr = useCallback_upvr_result1_upvr_4(arg1_8)
			local var46
			useCallback_upvr_result1_upvr(arg1_8, not var32_result1_upvr)
			if var32_result1_upvr then
				var46 = DeleteFavoriteForAsset_upvr(any_config_result1_upvr, tostring(useLocalUserId_upvr_result1_upvr), tostring(arg1_8))
			else
				var46 = PostFavoriteForAsset_upvr(any_config_result1_upvr, tostring(useLocalUserId_upvr_result1_upvr), tostring(arg1_8))
			end
			return var46:catch(function(arg1_9) -- Line 106
				--[[ Upvalues[4]:
					[1]: useCallback_upvr_result1_upvr (copied, readonly)
					[2]: arg1_8 (readonly)
					[3]: var32_result1_upvr (readonly)
					[4]: logger_upvr (copied, readonly)
				]]
				useCallback_upvr_result1_upvr(arg1_8, var32_result1_upvr)
				logger_upvr:warning(arg1_9.StatusMessage)
			end):andThenReturn(not var32_result1_upvr)
		end, {useLocalUserId_upvr_result1_upvr, var9_result1_upvr, useCallback_upvr_result1_upvr_4});
		isLoading = useCallback_upvr_result1_upvr_3;
	}
end