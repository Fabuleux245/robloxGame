-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:24
-- Luau version 6, Types version 3
-- Time taken: 0.000346 seconds

local tbl = {
	None = "None";
	Product = "Product";
	RobuxUpsell = "RobuxUpsell";
	RobuxUpsellV2 = "RobuxUpsellV2";
	LargeRobuxUpsell = "LargeRobuxUpsell";
	PremiumUpsell = "PremiumUpsell";
}
local any_enumerate_result1 = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).enumerate(script.Name, tbl)
require(script.Parent.Parent.Utils.addRawValueMethodToEnum)(any_enumerate_result1, tbl)
return any_enumerate_result1