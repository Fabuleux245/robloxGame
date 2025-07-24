-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:04
-- Luau version 6, Types version 3
-- Time taken: 0.001395 seconds

local Parent = script.Parent.Parent.Parent
local getUpsellFlow_upvr = require(Parent.NativeUpsell.getUpsellFlow)
local UserInputService_upvr = game:GetService("UserInputService")
local UpsellFlow_upvr = require(Parent.Enums.UpsellFlow)
local Roact_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Roact
local BrowserPurchaseFinishedConnector_upvr = require(script.Parent.BrowserPurchaseFinishedConnector)
local NativePurchaseFinishedConnector_upvr = require(script.Parent.NativePurchaseFinishedConnector)
local MarketplaceServiceEventConnector_upvr = require(script.Parent.MarketplaceServiceEventConnector)
local InputTypeManager_upvr = require(script.Parent.InputTypeManager)
return function() -- Line 20, Named "EventConnections"
	--[[ Upvalues[8]:
		[1]: getUpsellFlow_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: UpsellFlow_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: BrowserPurchaseFinishedConnector_upvr (readonly)
		[6]: NativePurchaseFinishedConnector_upvr (readonly)
		[7]: MarketplaceServiceEventConnector_upvr (readonly)
		[8]: InputTypeManager_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var10
	local var2_result1 = getUpsellFlow_upvr(UserInputService_upvr:GetPlatform())
	local var12
	if var2_result1 == var12 then
		var12 = Roact_upvr.createElement(BrowserPurchaseFinishedConnector_upvr)
		var10 = var12
	else
		var12 = UpsellFlow_upvr.Mobile
		if var2_result1 == var12 then
			var12 = Roact_upvr.createElement(NativePurchaseFinishedConnector_upvr)
			var10 = var12
		end
	end
	if UserInputService_upvr:GetPlatform() == Enum.Platform.XBoxOne then
		var12 = false
	else
		var12 = true
	end
	local module = {
		MarketPlaceServiceEventConnector = Roact_upvr.createElement(MarketplaceServiceEventConnector_upvr);
	}
	if not var12 or not Roact_upvr.createElement(InputTypeManager_upvr) then
	end
	module.InputTypeManager = nil
	module.UpsellFinishedConnector = var10
	return Roact_upvr.createElement("Folder", {}, module)
end