-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:01
-- Luau version 6, Types version 3
-- Time taken: 0.000451 seconds

return function(arg1) -- Line 1
	return {
		appsflyer = function(arg1_2) -- Line 4
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.fromString("appsflyer:Ebh5?pid=share&is_retargeting=true&af_dp={mobileUrl}&af_web_dp={webUrl}")({
				mobileUrl = arg1.fromString("mobilenav:event_details?eventid={eventId}")(arg1_2);
				webUrl = arg1.fromString("www:events/{eventId}")(arg1_2);
			})
		end;
	}
end