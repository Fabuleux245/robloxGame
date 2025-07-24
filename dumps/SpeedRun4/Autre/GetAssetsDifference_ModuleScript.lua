-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:02
-- Luau version 6, Types version 3
-- Time taken: 0.002675 seconds

local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
local GetCurrentHumanoidDescription_upvr = require(script.Parent.GetCurrentHumanoidDescription)
local GetAssetIdsFromDescription_upvr = require(script.Parent.GetAssetIdsFromDescription)
local GetAssetNamesForIds_upvr = require(script.Parent.GetAssetNamesForIds)
return function(arg1) -- Line 10
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: GetCurrentHumanoidDescription_upvr (readonly)
		[3]: GetAssetIdsFromDescription_upvr (readonly)
		[4]: GetAssetNamesForIds_upvr (readonly)
	]]
	local function getAddedAndRemovedIds_upvr(arg1_2, arg2) -- Line 11, Named "getAddedAndRemovedIds"
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (copied, readonly)
		]]
		local any_toSet_result1_upvr_2 = Cryo_upvr.List.toSet(arg1_2)
		local any_toSet_result1_upvr = Cryo_upvr.List.toSet(arg2)
		return Cryo_upvr.List.filter(arg2, function(arg1_3) -- Line 15
			--[[ Upvalues[1]:
				[1]: any_toSet_result1_upvr_2 (readonly)
			]]
			local var9
			if any_toSet_result1_upvr_2[arg1_3] ~= nil then
				var9 = false
			else
				var9 = true
			end
			return var9
		end), Cryo_upvr.List.filter(arg1_2, function(arg1_4) -- Line 19
			--[[ Upvalues[1]:
				[1]: any_toSet_result1_upvr (readonly)
			]]
			local var12
			if any_toSet_result1_upvr[arg1_4] ~= nil then
				var12 = false
			else
				var12 = true
			end
			return var12
		end)
	end
	return GetCurrentHumanoidDescription_upvr():andThen(function(arg1_5) -- Line 26
		--[[ Upvalues[5]:
			[1]: GetAssetIdsFromDescription_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: getAddedAndRemovedIds_upvr (readonly)
			[4]: Cryo_upvr (copied, readonly)
			[5]: GetAssetNamesForIds_upvr (copied, readonly)
		]]
		local getAddedAndRemovedIds_upvr_result1_upvr, getAddedAndRemovedIds_upvr_result2_upvr = getAddedAndRemovedIds_upvr(GetAssetIdsFromDescription_upvr(arg1_5), GetAssetIdsFromDescription_upvr(arg1))
		return GetAssetNamesForIds_upvr(Cryo_upvr.List.join(getAddedAndRemovedIds_upvr_result1_upvr, getAddedAndRemovedIds_upvr_result2_upvr)):andThen(function(arg1_6) -- Line 33
			--[[ Upvalues[2]:
				[1]: getAddedAndRemovedIds_upvr_result1_upvr (readonly)
				[2]: getAddedAndRemovedIds_upvr_result2_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local tbl = {}
			for _, v in ipairs(getAddedAndRemovedIds_upvr_result1_upvr) do
				table.insert(tbl, arg1_6[v])
			end
			for _, v_2 in ipairs(getAddedAndRemovedIds_upvr_result2_upvr) do
				table.insert({}, arg1_6[v_2])
				local var41
			end
			return {
				addedNames = tbl;
				removedNames = var41;
				addedAssetIds = getAddedAndRemovedIds_upvr_result1_upvr;
				removedAssetIds = getAddedAndRemovedIds_upvr_result2_upvr;
			}
		end)
	end)
end