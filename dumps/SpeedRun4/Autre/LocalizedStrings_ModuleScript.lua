-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:22
-- Luau version 6, Types version 3
-- Time taken: 0.002469 seconds

local Locales_upvr = game:GetService("CoreGui"):FindFirstChild("RobloxGui"):FindFirstChild("Modules"):FindFirstChild("Shell").Locales
local module_upvr = require(Locales_upvr:FindFirstChild("en-us"))
local var3_upvw
local pcall_result1, pcall_result2 = pcall(function() -- Line 15
	return game:GetService("LocalizationService").RobloxLocaleId
end)
local var7_upvw = pcall_result1
local var8_upvw = pcall_result2
local module_upvr_2 = {
	GetLocale = function(arg1) -- Line 19, Named "GetLocale"
		--[[ Upvalues[5]:
			[1]: Locales_upvr (readonly)
			[2]: var8_upvw (read and write)
			[3]: var7_upvw (read and write)
			[4]: var3_upvw (read and write)
			[5]: module_upvr (readonly)
		]]
		local SOME = Locales_upvr:FindFirstChild(var8_upvw)
		if var7_upvw and SOME then
			var3_upvw = require(SOME)
		end
		if var3_upvw == nil then
			var3_upvw = module_upvr
		end
		return var3_upvw
	end;
	LocString = function(arg1, arg2) -- Line 32, Named "LocString"
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: module_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var11
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var11 = var3_upvw
			return var11
		end
		if not var3_upvw or not INLINED() then
			var11 = arg1:GetLocale()
		end
		if var11 then
		end
		if not var11[arg2] then
		end
		return module_upvr[arg2] or arg2
	end;
}
function module_upvr_2.LocalizedString(arg1, arg2) -- Line 44
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	return module_upvr_2:LocString("Xbox.Old."..arg2)
end
local var12_upvw
local Localization_upvr = require(game:GetService("CorePackages").Workspace.Packages.RobloxAppLocales).Localization
function module_upvr_2.LocStringUA(arg1, arg2) -- Line 50
	--[[ Upvalues[4]:
		[1]: var7_upvw (read and write)
		[2]: var12_upvw (read and write)
		[3]: Localization_upvr (readonly)
		[4]: var8_upvw (read and write)
	]]
	if var7_upvw and not var12_upvw then
		var12_upvw = Localization_upvr.new(var8_upvw)
	else
		var12_upvw = Localization_upvr.new("en-us")
	end
	local any_getString_result1 = var12_upvw.localizationContext:getString(var8_upvw, arg2)
	if not any_getString_result1 then
		any_getString_result1 = arg2
	end
	return any_getString_result1
end
return module_upvr_2