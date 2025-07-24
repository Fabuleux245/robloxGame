-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:19
-- Luau version 6, Types version 3
-- Time taken: 0.000818 seconds

local Parent = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local FFlagUseMobileRobuxUpsellFlowForPCGDK_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagUseMobileRobuxUpsellFlowForPCGDK
local getAppFeaturePolicies_upvr = require(CorePackages.Workspace.Packages.UniversalAppPolicy).getAppFeaturePolicies
local UpsellFlow_upvr = require(Parent.Enums.UpsellFlow)
local GetFFlagEnablePalisadesPaymentsPlatform_upvr = require(Parent.Flags.GetFFlagEnablePalisadesPaymentsPlatform)
return function(arg1) -- Line 11, Named "getUpsellFlow"
	--[[ Upvalues[4]:
		[1]: FFlagUseMobileRobuxUpsellFlowForPCGDK_upvr (readonly)
		[2]: getAppFeaturePolicies_upvr (readonly)
		[3]: UpsellFlow_upvr (readonly)
		[4]: GetFFlagEnablePalisadesPaymentsPlatform_upvr (readonly)
	]]
	if FFlagUseMobileRobuxUpsellFlowForPCGDK_upvr and getAppFeaturePolicies_upvr().getRobuxUpsellFlowMobile() then
		return UpsellFlow_upvr.Mobile
	end
	if arg1 == Enum.Platform.Windows or arg1 == Enum.Platform.OSX or arg1 == Enum.Platform.Linux then
		return UpsellFlow_upvr.Web
	end
	if arg1 == Enum.Platform.IOS or arg1 == Enum.Platform.Android or arg1 == Enum.Platform.UWP then
		return UpsellFlow_upvr.Mobile
	end
	if arg1 == Enum.Platform.XBoxOne then
		return UpsellFlow_upvr.Xbox
	end
	if GetFFlagEnablePalisadesPaymentsPlatform_upvr() and arg1 == Enum.Platform.PS4 then
		return UpsellFlow_upvr.Mobile
	end
	return UpsellFlow_upvr.None
end