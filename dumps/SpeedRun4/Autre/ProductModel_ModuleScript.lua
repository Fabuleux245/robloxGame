-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:19
-- Luau version 6, Types version 3
-- Time taken: 0.000965 seconds

local t = require(script:FindFirstAncestor("RoduxGames").Parent.t)
local module_upvr = {}
function module_upvr.new(arg1) -- Line 13
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(module_upvr.isValid(arg1))
	module_upvr.__index = module_upvr
	setmetatable(arg1, module_upvr)
	return arg1
end
function module_upvr.mock(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var3 = arg1
	if not var3 then
		var3 = {}
	end
	return module_upvr.new({
		productId = var3.productId or "productId";
		sellerId = var3.sellerId or "sellerId";
		price = var3.price or 666;
		isForSale = var3.isForSale or true;
	})
end
function module_upvr.format(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.new({
		productId = tostring(arg1.productId);
		sellerId = tostring(arg1.sellerId);
		isForSale = arg1.isForSale or false;
		price = arg1.price or 0;
	})
end
module_upvr.isValid = t.strictInterface({
	productId = t.string;
	sellerId = t.string;
	price = t.number;
	isForSale = t.boolean;
})
return module_upvr