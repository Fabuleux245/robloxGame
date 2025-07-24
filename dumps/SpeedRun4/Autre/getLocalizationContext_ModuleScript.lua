-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:43
-- Luau version 6, Types version 3
-- Time taken: 0.000465 seconds

local Locales_upvr = script.Parent.Locales
return function(arg1) -- Line 6, Named "getLocalizationContext"
	--[[ Upvalues[1]:
		[1]: Locales_upvr (readonly)
	]]
	local SOME = Locales_upvr:FindFirstChild(arg1)
	if SOME ~= nil then
		local module = {}
		module.locale = arg1
		module.translations = require(SOME)
		module.fallbackTranslations = require(Locales_upvr:FindFirstChild("en-us"))
		return module
	end
	return {
		locale = "en-us";
		translations = require(Locales_upvr:FindFirstChild("en-us"));
	}
end