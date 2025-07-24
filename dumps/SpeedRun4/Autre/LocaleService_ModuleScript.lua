-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:56
-- Luau version 6, Types version 3
-- Time taken: 0.002126 seconds

local any_named_result1_upvr = require(script.Parent.Parent.Symbols.Symbol).named("FormattedParam")
local function _(arg1) -- Line 13, Named "isFormattedParam"
	--[[ Upvalues[1]:
		[1]: any_named_result1_upvr (readonly)
	]]
	local var2 = false
	if typeof(arg1) == "table" then
		if arg1[any_named_result1_upvr] ~= true then
			var2 = false
		else
			var2 = true
		end
	end
	return var2
end
local function _(arg1) -- Line 17, Named "createFormattedParam"
	--[[ Upvalues[1]:
		[1]: any_named_result1_upvr (readonly)
	]]
	local module = {
		[any_named_result1_upvr] = true;
	}
	module.format = arg1
	return module
end
local function _(arg1, arg2) -- Line 27, Named "getLocalizedString"
	local translations = arg1.translations
	local fallbackTranslations_3 = arg1.fallbackTranslations
	if fallbackTranslations_3 ~= nil and translations[arg2] == nil then
		return fallbackTranslations_3[arg2]
	end
	return translations[arg2]
end
return {
	nestedKeyParam = function(arg1) -- Line 48, Named "nestedKeyParam"
		--[[ Upvalues[1]:
			[1]: any_named_result1_upvr (readonly)
		]]
		return {
			[any_named_result1_upvr] = true;
			format = function(arg1_2) -- Line 49
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local var8 = arg1
				local translations_2 = arg1_2.translations
				local fallbackTranslations_2 = arg1_2.fallbackTranslations
				if fallbackTranslations_2 ~= nil and translations_2[var8] == nil then
					return fallbackTranslations_2[var8]
				end
				return translations_2[var8]
			end;
		}
	end;
	getString = function(arg1, arg2, arg3) -- Line 60, Named "getString"
		--[[ Upvalues[1]:
			[1]: any_named_result1_upvr (readonly)
		]]
		if arg1 == nil then
		else
		end
		local var16
		var16 = assert
		var16(true, "Must provide valid localization context")
		local translations_3 = arg1.translations
		local fallbackTranslations = arg1.fallbackTranslations
		if fallbackTranslations ~= nil and translations_3[arg2] == nil then
			var16 = fallbackTranslations[arg2]
		else
			var16 = translations_3[arg2]
		end
		if var16 == nil then
		else
		end
		assert(true, "Unable to find localization with key: "..arg2)
		if var16 and arg3 ~= nil then
			for i, v in pairs(arg3) do
				local var22 = false
				local var23_upvw
				if typeof(v) == "table" then
					if v[any_named_result1_upvr] ~= true then
						var22 = false
					else
						var22 = true
					end
				end
				if var22 then
					var23_upvw = v.format(arg1)
				end
				var16 = string.gsub(var16, "{%s}":format(i), function() -- Line 73
					--[[ Upvalues[1]:
						[1]: var23_upvw (read and write)
					]]
					return var23_upvw
				end)
			end
		end
		return var16
	end;
}