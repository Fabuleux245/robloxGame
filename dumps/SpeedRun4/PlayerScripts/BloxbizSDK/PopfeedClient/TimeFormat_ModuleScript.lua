-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:23
-- Luau version 6, Types version 3
-- Time taken: 0.001202 seconds

return {
	GetDate = function(arg1) -- Line 7, Named "GetDate"
		return DateTime.fromUnixTimestamp(arg1):FormatUniversalTime("ll", "en-us")
	end;
	GetTime = function(arg1) -- Line 14, Named "GetTime"
		return DateTime.fromUnixTimestamp(arg1):FormatUniversalTime("LT", "en-us")
	end;
	Format = function(arg1) -- Line 21, Named "Format"
		local var2 = os.time() - arg1
		if 86400 <= var2 then
			return DateTime.fromUnixTimestamp(arg1):FormatUniversalTime("ll", "en-us")
		end
		if 3600 <= var2 then
			return math.floor(var2 / 3600)..'h'
		end
		if 60 <= var2 then
			return math.floor(var2 / 60)..'m'
		end
		return "Now"
	end;
}