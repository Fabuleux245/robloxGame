-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:16
-- Luau version 6, Types version 3
-- Time taken: 0.000686 seconds

local PaymentPlatform_upvr = require(script.Parent.Parent.Enums.PaymentPlatform)
return function(arg1, arg2, arg3) -- Line 5
	--[[ Upvalues[1]:
		[1]: PaymentPlatform_upvr (readonly)
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
		return PaymentPlatform_upvr.Web
	end
	if arg1 == Enum.Platform.Android then
		if arg2 then
			return PaymentPlatform_upvr.Midas
		end
		if arg3 then
			return PaymentPlatform_upvr.Amazon
		end
		return PaymentPlatform_upvr.Google
	end
	if arg1 == Enum.Platform.UWP then
		return PaymentPlatform_upvr.UWP
	end
	return PaymentPlatform_upvr.None
end