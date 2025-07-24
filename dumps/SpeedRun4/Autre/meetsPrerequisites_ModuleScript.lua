-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:21
-- Luau version 6, Types version 3
-- Time taken: 0.011617 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Misc.Constants)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local GetFFlagEnableCreatorStorePurchasingCutover_upvr = require(Parent.Flags.GetFFlagEnableCreatorStorePurchasingCutover)
local Players_upvr = game:GetService("Players")
local Workspace_upvr = game:GetService("Workspace")
local var7_upvr = "AllowThirdPartySales has blocked the purchase".." prompt for %d created by %d. To sell this asset made by a".." different %s, you will need to enable AllowThirdPartySales."
return function(arg1, arg2, arg3, arg4, arg5) -- Line 17, Named "meetsPrerequisites"
	--[[ Upvalues[6]:
		[1]: Constants_upvr (readonly)
		[2]: PurchaseError_upvr (readonly)
		[3]: GetFFlagEnableCreatorStorePurchasingCutover_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: Workspace_upvr (readonly)
		[6]: var7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 99 start (CF ANALYSIS FAILED)
	local var38
	if arg1.ProductType ~= Constants_upvr.ProductType.CollectibleItem then
		var38 = false
	else
		var38 = true
	end
	if arg1.CollectiblesItemDetails then
		-- KONSTANTWARNING: GOTO [20] #14
	end
	-- KONSTANTERROR: [0] 1. Error Block 99 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 13. Error Block 108 start (CF ANALYSIS FAILED)
	local var39
	if var38 then
		if not nil and arg2 then
			var39 = false
			do
				return var39, PurchaseError_upvr.AlreadyOwn
			end
			-- KONSTANTWARNING: GOTO [35] #27
		end
	elseif arg2 then
		var39 = false
		return var39, PurchaseError_upvr.AlreadyOwn
	end
	if arg5 == nil then
		var39 = arg1.IsForSale
		if not var39 then
			var39 = arg1.IsPublicDomain
			if not var39 then
				var39 = false
				return var39, PurchaseError_upvr.NotForSale
			end
		end
	end
	var39 = GetFFlagEnableCreatorStorePurchasingCutover_upvr()
	if var39 then
		var39 = arg1.IsFiatPriced
		if var39 == true then
			var39 = false
			return var39, PurchaseError_upvr.NotForSale
		end
	end
	if arg5 == nil then
		var39 = arg4.GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt()
		if var39 then
			var39 = arg1.CanBeSoldInThisGame
			if var39 == false then
				var39 = false
				return var39, PurchaseError_upvr.NotForSaleHere
			end
		end
	end
	if arg5 == nil then
		local function INLINED_28() -- Internal function, doesn't exist in bytecode
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return nil
		end
		local function INLINED_29() -- Internal function, doesn't exist in bytecode
			var39 = arg1.IsLimited
			return var39
		end
		local function INLINED_30() -- Internal function, doesn't exist in bytecode
			var39 = arg1.IsLimitedUnique
			return var39
		end
		local function INLINED_31() -- Internal function, doesn't exist in bytecode
			var39 = arg1.Remaining
			return var39 == nil
		end
		local function INLINED_32() -- Internal function, doesn't exist in bytecode
			var39 = arg1.Remaining
			return var39 == 0
		end
		if var38 and INLINED_28() or INLINED_29() or INLINED_30() or INLINED_31() or INLINED_32() then
			var39 = false
			return var39, PurchaseError_upvr.Limited
		end
	end
	var39 = arg1.MinimumMembershipLevel
	if var39 == Enum.MembershipType.Premium.Value then
		var39 = Players_upvr.LocalPlayer.MembershipType
		if var39 ~= Enum.MembershipType.Premium then
			var39 = false
			return var39, PurchaseError_upvr.PremiumOnly
		end
	end
	var39 = arg1.ContentRatingTypeId
	if var39 == 1 then
		var39 = Players_upvr.LocalPlayer:GetUnder13()
		if var39 then
			var39 = false
			return var39, PurchaseError_upvr.Under13
		end
	end
	var39 = true
	if arg4.getLuaUseThirdPartyPermissions() then
		var39 = arg4.isThirdPartyPurchaseAllowed()
	else
		var39 = Workspace_upvr.AllowThirdPartySales
	end
	local ProductType_4 = arg1.ProductType
	local function INLINED_33() -- Internal function, doesn't exist in bytecode
		local var41
		return arg3
	end
	local function INLINED_34() -- Internal function, doesn't exist in bytecode
		local var43
		local tonumber_result1_2 = tonumber(arg1.Creator.CreatorTargetId)
		if arg1.Creator.CreatorType ~= "Group" then
			var41 = false
		else
			var41 = true
		end
		if var41 ~= Enum.CreatorType.Group then
			ProductType_4 = false
		else
			ProductType_4 = true
		end
		var41 = game.CreatorType
		return tonumber_result1_2 ~= 1
	end
	if ProductType_4 ~= Constants_upvr.ProductType.DeveloperProduct and INLINED_33() and not var39 and INLINED_34() and (ProductType_4 ~= var41 or tonumber_result1_2 ~= game.CreatorId) then
		if ProductType_4 then
			var43 = "group"
		else
			var43 = "user"
		end
		warn(var7_upvr:format(arg1.AssetId, tonumber_result1_2, var43))
		return false, PurchaseError_upvr.ThirdPartyDisabled
	end
	ProductType_4 = true
	var41 = nil
	do
		return ProductType_4, var41
	end
	-- KONSTANTERROR: [19] 13. Error Block 108 end (CF ANALYSIS FAILED)
end