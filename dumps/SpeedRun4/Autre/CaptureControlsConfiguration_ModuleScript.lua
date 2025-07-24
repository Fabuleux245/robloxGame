-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:16
-- Luau version 6, Types version 3
-- Time taken: 0.002090 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local AppStorageService_upvr = game:GetService("AppStorageService")
local HttpService_upvr = game:GetService("HttpService")
local Constants_upvr = require(Parent_2.Constants)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("CaptureControlsAppStorageEnabled")
local module = {}
local tbl_2_upvw = {}
local tostring_result1_upvr = tostring(game.GameId)
local var10_upvr = require(Parent_2.Utils.getLocalUserId)(game:GetService("Players"))
local vector2_upvr = Vector2.new(1, 0.5)
local getDeepValue_upvr = require(Parent.LuaSocialLibrariesDeps).SocialLibraries.config({}).Dictionary.getDeepValue
function module.getStoredSnapAnchorPoint() -- Line 28
	--[[ Upvalues[9]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: var10_upvr (readonly)
		[3]: vector2_upvr (readonly)
		[4]: AppStorageService_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: HttpService_upvr (readonly)
		[7]: tbl_2_upvw (read and write)
		[8]: getDeepValue_upvr (readonly)
		[9]: tostring_result1_upvr (readonly)
	]]
	if not game_GetEngineFeature_result1_upvr or not var10_upvr then
		return vector2_upvr
	end
	local pcall_result1_2, pcall_result2_upvr = pcall(function() -- Line 33
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		return AppStorageService_upvr:GetItem(Constants_upvr.CaptureControlsPositionStorageKey)
	end)
	if not pcall_result1_2 then
		return vector2_upvr
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 41
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_upvr)
	end)
	if not pcall_result1 then
		return vector2_upvr
	end
	tbl_2_upvw = pcall_result2
	local getDeepValue_upvr_result1 = getDeepValue_upvr(pcall_result2, string.format("%s.%s", var10_upvr, tostring_result1_upvr))
	if not getDeepValue_upvr_result1 then
		return vector2_upvr
	end
	return Vector2.new(getDeepValue_upvr_result1.X, getDeepValue_upvr_result1.Y)
end
local Cryo_upvr = require(Parent.Cryo)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("CaptureControlsStoredAnchorPoints", 100)
function module.setStoredSnapAnchorPoint(arg1) -- Line 62
	--[[ Upvalues[9]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: var10_upvr (readonly)
		[3]: tbl_2_upvw (read and write)
		[4]: tostring_result1_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: game_DefineFastInt_result1_upvr (readonly)
		[7]: AppStorageService_upvr (readonly)
		[8]: Constants_upvr (readonly)
		[9]: HttpService_upvr (readonly)
	]]
	local var24_upvw
	if not game_GetEngineFeature_result1_upvr or not var10_upvr then
	else
		local tbl = {}
		var24_upvw = arg1.X
		tbl.X = var24_upvw
		var24_upvw = arg1.Y
		tbl.Y = var24_upvw
		var24_upvw = os.time()
		tbl.timestamp = var24_upvw
		var24_upvw = tbl_2_upvw[var10_upvr]
		if not var24_upvw then
			var24_upvw = {}
		end
		var24_upvw[tostring_result1_upvr] = tbl
		local any_keys_result1 = Cryo_upvr.Dictionary.keys(var24_upvw)
		if game_DefineFastInt_result1_upvr < #any_keys_result1 then
			local any_sort_result1 = Cryo_upvr.List.sort(any_keys_result1, function(arg1_2, arg2) -- Line 79
				--[[ Upvalues[1]:
					[1]: var24_upvw (read and write)
				]]
				local var28
				if var24_upvw[arg2].timestamp >= var24_upvw[arg1_2].timestamp then
					var28 = false
				else
					var28 = true
				end
				return var28
			end)
			local any_toSet_result1_upvr = Cryo_upvr.List.toSet(Cryo_upvr.List.removeRange(any_sort_result1, game_DefineFastInt_result1_upvr + 1, #any_sort_result1))
			var24_upvw = Cryo_upvr.Dictionary.filter(var24_upvw, function(arg1_3, arg2) -- Line 86
				--[[ Upvalues[1]:
					[1]: any_toSet_result1_upvr (readonly)
				]]
				return any_toSet_result1_upvr[arg2]
			end)
		end
		any_toSet_result1_upvr = Cryo_upvr.Dictionary
		any_toSet_result1_upvr = tbl_2_upvw
		local any_union_result1 = any_toSet_result1_upvr.union(any_toSet_result1_upvr, {
			[var10_upvr] = var24_upvw;
		})
		any_toSet_result1_upvr = AppStorageService_upvr:SetItem
		any_toSet_result1_upvr(Constants_upvr.CaptureControlsPositionStorageKey, HttpService_upvr:JSONEncode(any_union_result1))
		tbl_2_upvw = any_union_result1
	end
end
return module