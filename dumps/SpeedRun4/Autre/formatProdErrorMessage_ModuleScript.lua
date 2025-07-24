-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:23
-- Luau version 6, Types version 3
-- Time taken: 0.000884 seconds

local HttpService_upvr = game:GetService("HttpService")
return function(arg1, ...) -- Line 17, Named "formatProdErrorMessage"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local var4 = "https://reactjs.org/docs/error-decoder.html?invariant="..tostring(arg1)
	for i = 1, select('#', ...) do
		var4 = var4.."&args[]="..HttpService_upvr:UrlEncode(select(i, ...))
	end
	return string.format("Minified React error #%d; visit %s for the full message or ".."use the non-minified dev environment for full errors and additional ".."helpful warnings.", arg1, var4)
end