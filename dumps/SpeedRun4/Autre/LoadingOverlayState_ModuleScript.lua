-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:33
-- Luau version 6, Types version 3
-- Time taken: 0.000532 seconds

local Parent = script.Parent.Parent
local tbl = {
	None = "None";
	Loading = "Loading";
	PurchasingItem = "PurchasingItem";
	PurchasingRobux = "PurchasingRobux";
	WaitingForPurchase = "WaitingForPurchase";
	WaitingForRobux = "WaitingForRobux";
}
local var3 = require(Parent.Parent.enumerate)(script.Name, tbl)
require(Parent.Utility.addRawValueMethodToEnum)(var3, tbl)
return var3