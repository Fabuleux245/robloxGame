-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:42
-- Luau version 6, Types version 3
-- Time taken: 0.006025 seconds

local Parent = script.Parent
local Constants_upvr = require(Parent.Constants)
local module_upvr = {
	getBundleId = function(arg1) -- Line 9, Named "getBundleId"
		if arg1.parentBundleId ~= nil then
			return arg1.parentBundleId
		end
		return nil
	end;
	isCollectibles = function(arg1) -- Line 17, Named "isCollectibles"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		local var5 = arg1
		if var5 then
			var5 = arg1.productType
			if var5 then
				if arg1.productType ~= Constants_upvr.ProductType.CollectibleItem then
					var5 = false
				else
					var5 = true
				end
			end
		end
		return var5
	end;
}
local GetFFlagIBEnableCollectiblesSystemSupport_upvr = require(Parent.Flags.GetFFlagIBEnableCollectiblesSystemSupport)
function module_upvr.hasLimitedQuantity(arg1) -- Line 21
	--[[ Upvalues[1]:
		[1]: GetFFlagIBEnableCollectiblesSystemSupport_upvr (readonly)
	]]
	if not arg1 then
		return nil
	end
	if GetFFlagIBEnableCollectiblesSystemSupport_upvr() then
	else
	end
	local isLimited = arg1.isLimited
	if not isLimited then
		isLimited = nil
		if not isLimited then
			isLimited = arg1.collectibleIsLimited
		end
	end
	return isLimited
end
function module_upvr.isLimited1Point0(arg1) -- Line 34
	if not arg1 then
		return nil
	end
	local isLimited_2 = arg1.isLimited
	if not isLimited_2 then
		isLimited_2 = arg1.isLimitedUnique
	end
	return isLimited_2
end
function module_upvr.isLimited1Point0_LimitedUnique(arg1) -- Line 43
	if not arg1 then
		return nil
	end
	return arg1.isLimitedUnique
end
function module_upvr.isLimited2Point0_Or_LimitedCollectible(arg1) -- Line 52
	if not arg1 then
		return nil
	end
	return arg1.collectibleIsLimited
end
function module_upvr.isUnlimitedCollectibleAsset(arg1, arg2) -- Line 61
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	if not arg1 or not arg2 then
		return nil
	end
	if arg2.productType ~= Constants_upvr.ProductType.CollectibleItem then
	else
	end
	if arg1 ~= Constants_upvr.ItemType.Asset then
	else
	end
	if not module_upvr.hasLimitedQuantity(arg2) then
		if true then
		end
	end
	return true
end
function module_upvr.isLimitedBundle(arg1, arg2) -- Line 73
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if not arg1 or not arg2 then
		return nil
	end
	if arg1 ~= Constants_upvr.ItemType.Bundle then
	else
	end
	return arg2.collectibleIsLimited and true
end
function module_upvr.isUnlimitedCollectibleBundle(arg1, arg2) -- Line 84
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if not arg1 or not arg2 then
		return nil
	end
	if arg2.productType ~= Constants_upvr.ProductType.CollectibleItem then
	else
	end
	if arg1 ~= Constants_upvr.ItemType.Bundle then
	else
	end
	if not arg2.collectibleIsLimited then
		if true then
		end
	end
	return true
end
function module_upvr.isLimitedCollectible(arg1) -- Line 96
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	if not arg1 then
		return nil
	end
	local var12 = arg1
	if arg1.productType ~= Constants_upvr.ProductType.CollectibleItem then
		var12 = false
	else
		var12 = true
	end
	return module_upvr.hasLimitedQuantity(var12) and var12
end
return module_upvr