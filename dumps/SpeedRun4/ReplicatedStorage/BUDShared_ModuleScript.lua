-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:48
-- Luau version 6, Types version 3
-- Time taken: 0.000698 seconds

return {
	DonationOptionsRefreshCooldown = 60;
	DonationOptionKind = {
		clothing = 1;
		gamepass = 2;
	};
	FormatDNPlayer = function(arg1, arg2, arg3) -- Line 36, Named "FormatDNPlayer"
		if arg1 then
			return arg1
		end
		if arg2 then
			return '@'..arg2
		end
		if arg3 then
			return "User #"..arg3
		end
		return "<Unknown Player>"
	end;
}