-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:22
-- Luau version 6, Types version 3
-- Time taken: 0.001185 seconds

local PaymentPlatform_upvr = require(script.Parent.Parent.Enums.PaymentPlatform)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: PaymentPlatform_upvr (readonly)
	]]
	if arg1 == PaymentPlatform_upvr.Web then
		return "Web"
	end
	if arg1 == PaymentPlatform_upvr.Apple then
		return "AppleAppStore"
	end
	if arg1 == PaymentPlatform_upvr.Google then
		return "GooglePlayStore"
	end
	if arg1 == PaymentPlatform_upvr.Amazon then
		return "AmazonStore"
	end
	if arg1 == PaymentPlatform_upvr.UWP then
		return "WindowsStore"
	end
	if arg1 == PaymentPlatform_upvr.Xbox then
		return "XboxStore"
	end
	if arg1 == PaymentPlatform_upvr.Maquettes then
		return "MaquettesStore"
	end
	if arg1 == PaymentPlatform_upvr.Palisades then
		return "PalisadesStore"
	end
	if arg1 == PaymentPlatform_upvr.Microsoft then
		return "MicrosoftStore"
	end
	if arg1 == PaymentPlatform_upvr.MilkyWay then
		return "MilkyWayStore"
	end
	return "None"
end