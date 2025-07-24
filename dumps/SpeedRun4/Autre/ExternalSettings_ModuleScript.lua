-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:47
-- Luau version 6, Types version 3
-- Time taken: 0.001615 seconds

local Parent = script.Parent.Parent
local module = {}
local UserInputService_upvr = game:GetService("UserInputService")
local RunService_upvr = game:GetService("RunService")
local GuiService_upvr = game:GetService("GuiService")
local GetFFlagDisableRobuxUpsell_upvr = require(Parent.Flags.GetFFlagDisableRobuxUpsell)
local GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt_2_upvr = require(Parent.Flags.GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt)
function module.new() -- Line 12
	--[[ Upvalues[5]:
		[1]: UserInputService_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: GetFFlagDisableRobuxUpsell_upvr (readonly)
		[5]: GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt_2_upvr (readonly)
	]]
	local module_2 = {}
	setmetatable(module_2, {
		__tostring = function() -- Line 16, Named "__tostring"
			return "Service(ExternalSettings)"
		end;
	})
	function module_2.getPlatform() -- Line 21
		--[[ Upvalues[1]:
			[1]: UserInputService_upvr (copied, readonly)
		]]
		return UserInputService_upvr:GetPlatform()
	end
	function module_2.isStudio() -- Line 25
		--[[ Upvalues[1]:
			[1]: RunService_upvr (copied, readonly)
		]]
		return RunService_upvr:IsStudio()
	end
	function module_2.isThirdPartyPurchaseAllowed() -- Line 29
		local var10_upvw = true
		pcall(function() -- Line 32
			--[[ Upvalues[1]:
				[1]: var10_upvw (read and write)
			]]
			var10_upvw = game:GetService("PermissionsService"):GetIsThirdPartyPurchaseAllowed()
		end)
		return var10_upvw
	end
	function module_2.getLuaUseThirdPartyPermissions() -- Line 38
		return true
	end
	function module_2.getFlagBypassThirdPartySettingForRobloxPurchase() -- Line 42
		return true
	end
	function module_2.getFlagRestrictSales2() -- Line 47
		return settings():GetFFlag("RestrictSales2")
	end
	function module_2.getFlagOrder66() -- Line 51
		return settings():GetFFlag("Order66")
	end
	function module_2.isTenFootInterface() -- Line 55
		--[[ Upvalues[1]:
			[1]: GuiService_upvr (copied, readonly)
		]]
		return GuiService_upvr:IsTenFootInterface()
	end
	function module_2.getFFlagDisableRobuxUpsell() -- Line 59
		--[[ Upvalues[1]:
			[1]: GetFFlagDisableRobuxUpsell_upvr (copied, readonly)
		]]
		return GetFFlagDisableRobuxUpsell_upvr()
	end
	function module_2.GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt() -- Line 63
		--[[ Upvalues[1]:
			[1]: GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt_2_upvr (copied, readonly)
		]]
		return GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt_2_upvr()
	end
	return module_2
end
return module