-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:25
-- Luau version 6, Types version 3
-- Time taken: 0.000880 seconds

local LocalizationService_upvr = game:GetService("LocalizationService")
return function(arg1, arg2) -- Line 3, Named "formatDate"
	--[[ Upvalues[1]:
		[1]: LocalizationService_upvr (readonly)
	]]
	local RobloxLocaleId = LocalizationService_upvr.RobloxLocaleId
	local var3
	if DateTime.now():ToLocalTime().Year < arg2:ToLocalTime().Year then
		var3 = "ll"
	else
		var3 = "ddd, MMM DD"
	end
	return arg1:gsub("{date}", arg2:FormatLocalTime(var3, RobloxLocaleId)):gsub("{time}", arg2:FormatLocalTime("LT", RobloxLocaleId))
end