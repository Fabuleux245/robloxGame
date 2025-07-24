-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:11
-- Luau version 6, Types version 3
-- Time taken: 0.001823 seconds

local IXPServiceWrapper_upvr = require(game:GetService("CorePackages").Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("NewUpsellModalDesktop", false)
local game_DefineFastString_result1_upvr = game:DefineFastString("DesktopUpsellIXPLayer", "Payments.Optimization.InExperienceUpsell.Desktop.UI")
local tbl_upvr = {
	Control = "control";
	OpenRobuxStore = "openRobuxStore";
	OpenPaymentsPage = "openPaymentsPage";
}
local function ixpVariantToEnum_upvr(arg1) -- Line 21, Named "ixpVariantToEnum"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1 == 0 then
		return tbl_upvr.Control
	end
	if arg1 == 1 then
		return tbl_upvr.OpenRobuxStore
	end
	if arg1 == 2 then
		return tbl_upvr.OpenPaymentsPage
	end
	error("Invalid variant: "..arg1)
end
local SetABVariation_upvr = require(script.Parent.Parent.Actions.SetABVariation)
return {
	variants = tbl_upvr;
	determineVariant = function(arg1) -- Line 33, Named "determineVariant"
		--[[ Upvalues[5]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
			[2]: IXPServiceWrapper_upvr (readonly)
			[3]: game_DefineFastString_result1_upvr (readonly)
			[4]: SetABVariation_upvr (readonly)
			[5]: ixpVariantToEnum_upvr (readonly)
		]]
		if not game_DefineFastFlag_result1_upvr then
		else
			local any_GetLayerData_result1 = IXPServiceWrapper_upvr:GetLayerData(game_DefineFastString_result1_upvr)
			if not any_GetLayerData_result1 or any_GetLayerData_result1.newUpsellModalVariant == nil then return end
			arg1:dispatch(SetABVariation_upvr("DesktopUpsellExpVariant", ixpVariantToEnum_upvr(any_GetLayerData_result1.newUpsellModalVariant)))
		end
	end;
	logExposure = function() -- Line 49, Named "logExposure"
		--[[ Upvalues[3]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
			[2]: IXPServiceWrapper_upvr (readonly)
			[3]: game_DefineFastString_result1_upvr (readonly)
		]]
		if not game_DefineFastFlag_result1_upvr then
		else
			IXPServiceWrapper_upvr:LogUserLayerExposure(game_DefineFastString_result1_upvr)
		end
	end;
}