-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:52
-- Luau version 6, Types version 3
-- Time taken: 0.001367 seconds

local Parent = script.Parent.Parent
local module = {}
local PurchaseFlow_upvr = require(Parent.Enums.PurchaseFlow)
function module.getMockPurchaseFlow(arg1) -- Line 17
	--[[ Upvalues[1]:
		[1]: PurchaseFlow_upvr (readonly)
	]]
	local var4 = arg1
	if not var4 then
		var4 = PurchaseFlow_upvr.Product
	end
	return var4
end
function module.getMockNativeUpsell(arg1, arg2, arg3) -- Line 21
	return {
		robuxProductId = "testRobuxProductId";
		productId = "testProductId";
		robuxPurchaseAmount = 500;
	}
end
function module.getMockRobuxUpsellSuggestions(arg1) -- Line 29
	local module_2 = {}
	local var7 = arg1
	if not var7 then
		var7 = {}
		var7[1] = {
			providerId = "testRobuxProductId";
			productId = "testProductId";
			robuxAmount = 500;
			robuxAmountBeforeBonus = 450;
			price = "4.99";
		}
	end
	module_2.products = var7
	module_2.selection = 1
	return module_2
end
local ABTest_upvr = require(Parent.Services.ABTest)
local Network_upvr = require(Parent.Services.Network)
local Analytics_upvr = require(Parent.Services.Analytics)
local PlatformInterface_upvr = require(Parent.Services.PlatformInterface)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local Rodux_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Rodux
local Reducer_upvr = require(Parent.Reducers.Reducer)
local Thunk_upvr = require(Parent.Thunk)
function module.getMockStore() -- Line 44
	--[[ Upvalues[8]:
		[1]: ABTest_upvr (readonly)
		[2]: Network_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: PlatformInterface_upvr (readonly)
		[5]: ExternalSettings_upvr (readonly)
		[6]: Rodux_upvr (readonly)
		[7]: Reducer_upvr (readonly)
		[8]: Thunk_upvr (readonly)
	]]
	return Rodux_upvr.Store.new(Reducer_upvr, {}, {Thunk_upvr.middleware({
		[ABTest_upvr] = ABTest_upvr.new();
		[Network_upvr] = Network_upvr.new();
		[Analytics_upvr] = Analytics_upvr.new();
		[PlatformInterface_upvr] = PlatformInterface_upvr.new();
		[ExternalSettings_upvr] = ExternalSettings_upvr.new();
	})})
end
return module