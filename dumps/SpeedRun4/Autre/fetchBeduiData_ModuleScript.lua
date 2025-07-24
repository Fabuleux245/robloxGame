-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:14
-- Luau version 6, Types version 3
-- Time taken: 0.000767 seconds

local Parent = script:FindFirstAncestor("GenericAbuseReporting").Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
local LocalizationService_upvr = game:GetService("LocalizationService")
local Url_upvr = require(Parent.Http).Url
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[3]:
		[1]: ArgCheck_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
		[3]: Url_upvr (readonly)
	]]
	ArgCheck_upvr.assert(arg2, "abuseVector is required")
	ArgCheck_upvr.isType(arg2, "string", "fetchBeduiData expects abuseVector as a string")
	return arg1(`{Url_upvr.APIS_URL}abuse-reporting/v1/dynamic-dialog-sequential?context={arg2}&locale={LocalizationService_upvr.RobloxLocaleId}&surface={"ua"}&version={"v1"}`, "GET")
end