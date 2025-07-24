-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:56
-- Luau version 6, Types version 3
-- Time taken: 0.001365 seconds

return function(arg1) -- Line 3
	local module_upvr = {
		info = {
			webbundle = arg1.fromString("www:bundles/{assetId}");
			webasset = arg1.fromString("www:catalog/{assetId}");
			webpage = function(arg1_2) -- Line 10, Named "webpage"
				--[[ Upvalues[1]:
					[1]: module_upvr (readonly)
				]]
				if arg1_2.assetType == "Bundle" then
					return module_upvr.info.webbundle(arg1_2)
				end
				if arg1_2.assetType == "Asset" then
					return module_upvr.info.webasset(arg1_2)
				end
				warn(string.format("%s - unknown assetType of %s", tostring(script.name), tostring(arg1_2.assetType)))
				return nil
			end;
			appsflyer = function(arg1_3) -- Line 20, Named "appsflyer"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: module_upvr (readonly)
				]]
				return arg1.fromString("appsflyer:Ebh5?pid=share&is_retargeting=true&af_dp={mobileUrl}&af_web_dp={webUrl}")({
					mobileUrl = arg1.fromString("mobilenav:item_details?itemId={assetId}&itemType={assetType}")(arg1_3);
					webUrl = module_upvr.info.webpage(arg1_3);
				})
			end;
		};
	}
	return module_upvr
end