-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:07
-- Luau version 6, Types version 3
-- Time taken: 0.001250 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React = require(Songbird.Parent.React)
local useState_upvr = React.useState
local useAsync_upvr = require(Songbird.Parent.ReactUtils).useAsync
local getAudioMetadataAsync_upvr = require(Songbird.Requests.getAudioMetadataAsync)
local useCallback_upvr = React.useCallback
local useEffect_upvr = React.useEffect
return function(arg1) -- Line 17, Named "useAudioMetadata"
	--[[ Upvalues[5]:
		[1]: useState_upvr (readonly)
		[2]: useAsync_upvr (readonly)
		[3]: getAudioMetadataAsync_upvr (readonly)
		[4]: useCallback_upvr (readonly)
		[5]: useEffect_upvr (readonly)
	]]
	local var3_result1_upvr, useState_upvr_result2_upvr = useState_upvr({})
	local useAsync_upvr_result1_upvr = useAsync_upvr(function() -- Line 23
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: getAudioMetadataAsync_upvr (copied, readonly)
		]]
		if 0 < #arg1 then
			return getAudioMetadataAsync_upvr(arg1)
		end
		return {}
	end, {table.unpack(arg1)})
	useEffect_upvr(function() -- Line 39
		--[[ Upvalues[2]:
			[1]: useAsync_upvr_result1_upvr (readonly)
			[2]: useState_upvr_result2_upvr (readonly)
		]]
		if useAsync_upvr_result1_upvr.status == "ok" and 0 < #useAsync_upvr_result1_upvr.value then
			useState_upvr_result2_upvr(function(arg1_3) -- Line 41
				--[[ Upvalues[1]:
					[1]: useAsync_upvr_result1_upvr (copied, readonly)
				]]
				local clone = table.clone(arg1_3)
				for _, v in useAsync_upvr_result1_upvr.value do
					clone[v.AssetId] = v
				end
				return clone
			end)
		end
	end, {useAsync_upvr_result1_upvr})
	return {
		getAll = useCallback_upvr(function() -- Line 31
			--[[ Upvalues[1]:
				[1]: var3_result1_upvr (readonly)
			]]
			return var3_result1_upvr
		end, {var3_result1_upvr});
		getByAssetId = useCallback_upvr(function(arg1_2) -- Line 35
			--[[ Upvalues[1]:
				[1]: var3_result1_upvr (readonly)
			]]
			return var3_result1_upvr[tostring(arg1_2)]
		end, {var3_result1_upvr});
	}
end