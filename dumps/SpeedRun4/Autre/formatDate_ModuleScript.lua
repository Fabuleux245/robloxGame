-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:24
-- Luau version 6, Types version 3
-- Time taken: 0.000630 seconds

return function(arg1, arg2) -- Line 1, Named "formatDate"
	local var1
	if DateTime.now():ToLocalTime().Year < arg1:ToLocalTime().Year then
		var1 = "ll"
	else
		var1 = "ddd, MMM DD"
	end
	if arg2 then
		return "%s at %s":format(arg1:FormatLocalTime(var1, "en-us"), arg1:FormatLocalTime("LT", "en-us"))
	end
	return "%s AT %s":format(arg1:FormatLocalTime(var1, "en-us"), arg1:FormatLocalTime("LT", "en-us")):upper()
end