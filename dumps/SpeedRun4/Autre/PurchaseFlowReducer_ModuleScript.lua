-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:42
-- Luau version 6, Types version 3
-- Time taken: 0.000780 seconds

local Parent = script.Parent.Parent
local module = {}
local PurchaseFlow_upvr = require(Parent.Enums.PurchaseFlow)
module[require(Parent.Actions.CompleteRequest).name] = function(arg1, arg2) -- Line 13
	--[[ Upvalues[1]:
		[1]: PurchaseFlow_upvr (readonly)
	]]
	return PurchaseFlow_upvr.None
end
module[require(Parent.Actions.SetPurchaseFlow).name] = function(arg1, arg2) -- Line 16
	return arg2.purchaseFlow
end
return require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Rodux.createReducer(false, module)