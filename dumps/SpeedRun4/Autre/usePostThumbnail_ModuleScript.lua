-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:42
-- Luau version 6, Types version 3
-- Time taken: 0.001654 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local React = require(Parent.React)
local CapturesCommonNetworking_upvr = require(Parent_2.Networking).CapturesCommonNetworking
local AssetType_upvr = require(Parent_2.Enums.AssetType)
local ThumbnailState_upvr = require(Parent_2.Enums.ThumbnailState)
local function makeThumbnailRequest_upvr(arg1, arg2, arg3) -- Line 20, Named "makeThumbnailRequest"
	--[[ Upvalues[3]:
		[1]: CapturesCommonNetworking_upvr (readonly)
		[2]: AssetType_upvr (readonly)
		[3]: ThumbnailState_upvr (readonly)
	]]
	local module = {}
	module.assetId = arg2
	module.assetType = AssetType_upvr.Screenshot
	module.size = arg3
	return arg1(CapturesCommonNetworking_upvr.GetThumbnailByAssetId.API(module)):andThen(function(arg1_2) -- Line 26
		--[[ Upvalues[1]:
			[1]: ThumbnailState_upvr (copied, readonly)
		]]
		local _1 = arg1_2.responseBody.data[1]
		if _1.imageUrl and _1.imageUrl ~= "" and _1.state == ThumbnailState_upvr.Completed then
			return _1.imageUrl
		end
		return nil
	end):catch(function(arg1_3) -- Line 38
		return nil
	end):await()
end
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useState_upvr = React.useState
local useEffect_upvr = React.useEffect
local game_DefineFastInt_result1_upvw = game:DefineFastInt("ContentPostsThumbnailsInitialDelayTimeMs", 100)
local game_DefineFastInt_result1_upvw_2 = game:DefineFastInt("ContentPostsThumbnailsMaxRetries", 10)
return function(arg1, arg2, arg3) -- Line 44
	--[[ Upvalues[6]:
		[1]: useDispatch_upvr (readonly)
		[2]: useState_upvr (readonly)
		[3]: useEffect_upvr (readonly)
		[4]: game_DefineFastInt_result1_upvw (readonly)
		[5]: game_DefineFastInt_result1_upvw_2 (readonly)
		[6]: makeThumbnailRequest_upvr (readonly)
	]]
	local var13_result1, useState_upvr_result2_upvr_2 = useState_upvr("")
	local useState_upvr_result1, useState_upvr_result2_upvr = useState_upvr(false)
	local var21_upvr = tostring(arg2)..'x'..tostring(arg3)
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = var21_upvr
	useEffect_upvr(function() -- Line 52
		--[[ Upvalues[8]:
			[1]: game_DefineFastInt_result1_upvw (copied, readonly)
			[2]: game_DefineFastInt_result1_upvw_2 (copied, readonly)
			[3]: useState_upvr_result2_upvr (readonly)
			[4]: useState_upvr_result2_upvr_2 (readonly)
			[5]: arg1 (readonly)
			[6]: makeThumbnailRequest_upvr (copied, readonly)
			[7]: useDispatch_upvr_result1_upvr (readonly)
			[8]: var21_upvr (readonly)
		]]
		local var24_upvw = false
		useState_upvr_result2_upvr(false)
		useState_upvr_result2_upvr_2("")
		if not arg1 then return end
		task.spawn(function() -- Line 64
			--[[ Upvalues[9]:
				[1]: var24_upvw (read and write)
				[2]: game_DefineFastInt_result1_upvw_2 (read and write)
				[3]: makeThumbnailRequest_upvr (copied, readonly)
				[4]: useDispatch_upvr_result1_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
				[6]: var21_upvr (copied, readonly)
				[7]: useState_upvr_result2_upvr_2 (copied, readonly)
				[8]: useState_upvr_result2_upvr (copied, readonly)
				[9]: game_DefineFastInt_result1_upvw (read and write)
			]]
			while not var24_upvw and 0 < game_DefineFastInt_result1_upvw_2 do
				local makeThumbnailRequest_result1, makeThumbnailRequest_upvr_result2 = makeThumbnailRequest_upvr(useDispatch_upvr_result1_upvr, arg1, var21_upvr)
				if var24_upvw then break end
				if makeThumbnailRequest_result1 and makeThumbnailRequest_upvr_result2 then
					useState_upvr_result2_upvr_2(makeThumbnailRequest_upvr_result2)
					useState_upvr_result2_upvr(true)
					return
				end
				task.wait(game_DefineFastInt_result1_upvw / 1000)
				game_DefineFastInt_result1_upvw *= 2
				game_DefineFastInt_result1_upvw_2 -= 1
			end
		end)
		return function() -- Line 84
			--[[ Upvalues[1]:
				[1]: var24_upvw (read and write)
			]]
			var24_upvw = true
		end
	end, tbl)
	return var13_result1, useState_upvr_result1
end