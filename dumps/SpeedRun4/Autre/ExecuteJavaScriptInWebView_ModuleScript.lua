-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:42
-- Luau version 6, Types version 3
-- Time taken: 0.000334 seconds

local module = {}
local BrowserService_upvr = game:GetService("BrowserService")
function module.Execute(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: BrowserService_upvr (readonly)
	]]
	BrowserService_upvr:ExecuteJavaScript("(function() { CoreRobloxUtilities.hybridResponseService.injectNativeResponse("..arg1..", "..arg2.."); })();")
end
return module