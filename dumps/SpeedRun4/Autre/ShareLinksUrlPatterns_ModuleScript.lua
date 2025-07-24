-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:58
-- Luau version 6, Types version 3
-- Time taken: 0.000601 seconds

return function(arg1) -- Line 7
	return {
		appsflyer = function(arg1_2, arg2) -- Line 10
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local tbl = {}
			tbl.linkId = arg1_2
			tbl.linkType = arg2
			return arg1.fromString("appsflyer:Ebh5?pid=share&is_retargeting=true&af_dp={mobileUrl}&af_web_dp={webUrl}")({
				mobileUrl = arg1.fromString("mobilenav:share_links?code={linkId}&type={linkType}")(tbl);
				webUrl = arg1.fromString("www:share-links?code={linkId}&type={linkType}")(tbl);
			})
		end;
		shortUrl = function(arg1_3) -- Line 25
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.fromString("www:share?code={linkId}&type={type}&stamp={stamp|}")(arg1_3)
		end;
	}
end