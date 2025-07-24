-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:51
-- Luau version 6, Types version 3
-- Time taken: 0.002258 seconds

local tbl_upvr = {
	RestrictSales2 = false;
	Order66 = false;
}
local module_2 = {}
local Cryo_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Cryo
function module_2.new(arg1, arg2, arg3, arg4) -- Line 22
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local module = {}
	local var5 = arg3
	if not var5 then
		var5 = {}
	end
	local any_join_result1_upvw = Cryo_upvr.Dictionary.join(tbl_upvr, var5)
	local function _(arg1_2, arg2_2) -- Line 33, Named "getMockFlag"
		if arg1_2 ~= nil then
			return arg1_2
		end
		return arg2_2
	end
	function module.getPlatform() -- Line 40
		--[[ Upvalues[1]:
			[1]: arg4 (readonly)
		]]
		local var7 = arg4
		if not var7 then
			var7 = Enum.Platform.Windows
		end
		return var7
	end
	function module.isStudio() -- Line 44
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1 or false
	end
	function module.isThirdPartyPurchaseAllowed() -- Line 48
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvw (read and write)
		]]
		return any_join_result1_upvw.PermissionsServiceIsThirdPartyPurchaseAllowed
	end
	function module.getLuaUseThirdPartyPermissions() -- Line 52
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvw (read and write)
		]]
		local LuaUseThirdPartyPermissions = any_join_result1_upvw.LuaUseThirdPartyPermissions
		if LuaUseThirdPartyPermissions ~= nil then
			return LuaUseThirdPartyPermissions
		end
		return true
	end
	function module.getFlagBypassThirdPartySettingForRobloxPurchase() -- Line 56
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvw (read and write)
		]]
		return any_join_result1_upvw.BypassThirdPartySettingForRobloxPurchase
	end
	function module.getFlagRestrictSales2() -- Line 61
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvw (read and write)
		]]
		return any_join_result1_upvw.RestrictSales2
	end
	function module.getFlagOrder66() -- Line 65
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvw (read and write)
		]]
		return any_join_result1_upvw.Order66
	end
	function module.isTenFootInterface() -- Line 69
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		return arg2
	end
	function module.getFFlagDisableRobuxUpsell() -- Line 73
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvw (read and write)
		]]
		return any_join_result1_upvw.DisableRobuxUpsell
	end
	function module.GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt() -- Line 77
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvw (read and write)
		]]
		return any_join_result1_upvw.EnableRestrictedAssetSaleLocationPurchasePrompt
	end
	return module
end
return module_2