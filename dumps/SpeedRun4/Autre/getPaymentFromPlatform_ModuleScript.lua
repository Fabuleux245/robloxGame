-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:16
-- Luau version 6, Types version 3
-- Time taken: 0.001890 seconds

local Parent = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local PaymentPlatform_upvr = require(Parent.Enums.PaymentPlatform)
local FFlagEnableMicrosoftStorePaymentsPlatform_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableMicrosoftStorePaymentsPlatform
local getAppFeaturePolicies_upvr = require(CorePackages.Workspace.Packages.UniversalAppPolicy).getAppFeaturePolicies
local FFlagEnableMilkyWayPaymentsPlatform_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableMilkyWayPaymentsPlatform
local GetFFlagEnablePalisadesPaymentsPlatform_upvr = require(Parent.Flags.GetFFlagEnablePalisadesPaymentsPlatform)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 15
	--[[ Upvalues[5]:
		[1]: PaymentPlatform_upvr (readonly)
		[2]: FFlagEnableMicrosoftStorePaymentsPlatform_upvr (readonly)
		[3]: getAppFeaturePolicies_upvr (readonly)
		[4]: FFlagEnableMilkyWayPaymentsPlatform_upvr (readonly)
		[5]: GetFFlagEnablePalisadesPaymentsPlatform_upvr (readonly)
	]]
	if arg1 == Enum.Platform.XBoxOne then
		return PaymentPlatform_upvr.Xbox
	end
	if arg1 == Enum.Platform.IOS then
		if arg2 then
			return PaymentPlatform_upvr.Midas
		end
		return PaymentPlatform_upvr.Apple
	end
	if arg1 == Enum.Platform.Windows or arg1 == Enum.Platform.OSX or arg1 == Enum.Platform.Linux then
		if FFlagEnableMicrosoftStorePaymentsPlatform_upvr and getAppFeaturePolicies_upvr().getUsePaymentPlatformMicrosoftStore() then
			return PaymentPlatform_upvr.Microsoft
		end
		return PaymentPlatform_upvr.Web
	end
	if arg1 == Enum.Platform.Android then
		if arg2 then
			return PaymentPlatform_upvr.Midas
		end
		if arg3 then
			return PaymentPlatform_upvr.Amazon
		end
		if arg4 then
			return PaymentPlatform_upvr.Maquettes
		end
		if FFlagEnableMilkyWayPaymentsPlatform_upvr and arg5 then
			return PaymentPlatform_upvr.MilkyWay
		end
		return PaymentPlatform_upvr.Google
	end
	if arg1 == Enum.Platform.UWP then
		return PaymentPlatform_upvr.UWP
	end
	if GetFFlagEnablePalisadesPaymentsPlatform_upvr() and arg1 == Enum.Platform.PS4 then
		return PaymentPlatform_upvr.Palisades
	end
	return PaymentPlatform_upvr.None
end