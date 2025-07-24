-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:08
-- Luau version 6, Types version 3
-- Time taken: 0.001217 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local LocalizationRoactContext_upvr = require(Parent.Localization).LocalizationRoactContext
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local RobloxTranslator_upvr = require(Parent.RobloxTranslator)
return {
	getLocalizedStrings = function(arg1) -- Line 13
		--[[ Upvalues[4]:
			[1]: React_upvr (readonly)
			[2]: LocalizationRoactContext_upvr (readonly)
			[3]: useLocalization_upvr (readonly)
			[4]: RobloxTranslator_upvr (readonly)
		]]
		if React_upvr.useContext(LocalizationRoactContext_upvr) ~= nil then
			return useLocalization_upvr(arg1)
		end
		for i, v_upvr in pairs(arg1) do
			local pcall_result1, pcall_result2 = pcall(function() -- Line 24
				--[[ Upvalues[2]:
					[1]: RobloxTranslator_upvr (copied, readonly)
					[2]: v_upvr (readonly)
				]]
				return RobloxTranslator_upvr:FormatByKey(v_upvr)
			end)
			if pcall_result1 then
				({})[i] = pcall_result2
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({})[i] = v_upvr
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
}