-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:48
-- Luau version 6, Types version 3
-- Time taken: 0.005451 seconds

local Parent = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local var3_upvw
pcall(function() -- Line 12
	--[[ Upvalues[1]:
		[1]: var3_upvw (read and write)
	]]
	var3_upvw = game:GetService("PlatformService")
end)
local module = {}
local function addContextToUrl_upvr(arg1, arg2) -- Line 29, Named "addContextToUrl"
	local var10
	for i, v in arg2 do
		if v then
			if var10:find('?') then
				var10 = var10.."&%s=%s":format(i, v)
			else
				var10 = var10.."?%s=%s":format(i, v)
			end
		end
	end
	return var10
end
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local string_gsub_result1_upvr = string.gsub(game:GetService("ContentProvider").BaseUrl:lower(), "/m.", "/www.")
local GuiService_upvr = game:GetService("GuiService")
local PurchaseFlow_upvr = require(Parent.Enums.PurchaseFlow)
local Base64_upvr = require(Parent.Utils.Base64)
local UrlBuilder_upvr = require(CorePackages.Workspace.Packages.PurchasePromptDeps).UrlBuilder.UrlBuilder
local GetFStringVNGWebshopUrl_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringVNGWebshopUrl
function module.new() -- Line 42
	--[[ Upvalues[9]:
		[1]: MarketplaceService_upvr (readonly)
		[2]: string_gsub_result1_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: addContextToUrl_upvr (readonly)
		[5]: PurchaseFlow_upvr (readonly)
		[6]: Base64_upvr (readonly)
		[7]: UrlBuilder_upvr (readonly)
		[8]: var3_upvw (read and write)
		[9]: GetFStringVNGWebshopUrl_upvr (readonly)
	]]
	local module_2 = {}
	setmetatable(module_2, {
		__tostring = function() -- Line 46, Named "__tostring"
			return "Service(PlatformInterface)"
		end;
	})
	function module_2.signalMockPurchasePremium() -- Line 51
		--[[ Upvalues[1]:
			[1]: MarketplaceService_upvr (copied, readonly)
		]]
		MarketplaceService_upvr:SignalMockPurchasePremium()
	end
	function module_2.startPremiumUpsell(arg1) -- Line 55
		--[[ Upvalues[2]:
			[1]: string_gsub_result1_upvr (copied, readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		GuiService_upvr:OpenBrowserWindow("%supgrades/paymentmethods?ap=%d":format(string_gsub_result1_upvr, arg1))
	end
	function module_2.startPremiumUpsellWithContext(arg1, arg2) -- Line 61
		--[[ Upvalues[3]:
			[1]: string_gsub_result1_upvr (copied, readonly)
			[2]: addContextToUrl_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
		]]
		GuiService_upvr:OpenBrowserWindow(addContextToUrl_upvr("%supgrades/paymentmethods?ap=%d":format(string_gsub_result1_upvr, arg2), arg1))
	end
	function module_2.startRobuxUpsellWebByFlow(arg1, arg2) -- Line 67
		--[[ Upvalues[3]:
			[1]: PurchaseFlow_upvr (copied, readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: string_gsub_result1_upvr (copied, readonly)
		]]
		if arg1 == PurchaseFlow_upvr.RobuxUpsellV2 or arg1 == PurchaseFlow_upvr.LargeRobuxUpsell then
			GuiService_upvr:OpenBrowserWindow("%supgrades/paymentmethods?ap=%s":format(string_gsub_result1_upvr, arg2))
		else
			GuiService_upvr:OpenBrowserWindow("%sUpgrades/Robux.aspx?product_id=%s":format(string_gsub_result1_upvr, arg2))
		end
	end
	function module_2.startRobuxUpsellWebByFlowWithContext(arg1, arg2, arg3) -- Line 75
		--[[ Upvalues[4]:
			[1]: PurchaseFlow_upvr (copied, readonly)
			[2]: string_gsub_result1_upvr (copied, readonly)
			[3]: addContextToUrl_upvr (copied, readonly)
			[4]: GuiService_upvr (copied, readonly)
		]]
		local var20 = true
		local var21
		if arg2 ~= var21 then
			var21 = PurchaseFlow_upvr.LargeRobuxUpsell
			if arg2 ~= var21 then
				var20 = false
			else
				var20 = true
			end
		end
		if var20 then
			var21 = "%supgrades/paymentmethods?ap=%s":format(string_gsub_result1_upvr, arg3)
		else
			var21 = "%sUpgrades/Robux.aspx?product_id=%s":format(string_gsub_result1_upvr, arg3)
		end
		var21 = addContextToUrl_upvr(var21, arg1)
		GuiService_upvr:OpenBrowserWindow(var21)
	end
	function module_2.openSecuritySettings(arg1) -- Line 85
		--[[ Upvalues[3]:
			[1]: Base64_upvr (copied, readonly)
			[2]: string_gsub_result1_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
		]]
		if arg1 then
			GuiService_upvr:OpenBrowserWindow("%smy/account?challenge=%s#!/security":format(string_gsub_result1_upvr, Base64_upvr.Encode(arg1)))
		else
			GuiService_upvr:OpenBrowserWindow("%smy/account#!/security":format(string_gsub_result1_upvr))
		end
	end
	function module_2.openTermsOfUse() -- Line 99
		--[[ Upvalues[2]:
			[1]: UrlBuilder_upvr (copied, readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		GuiService_upvr:OpenBrowserWindow(UrlBuilder_upvr.static.about.terms())
	end
	function module_2.openRobuxStore() -- Line 105
		--[[ Upvalues[2]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: string_gsub_result1_upvr (copied, readonly)
		]]
		GuiService_upvr:OpenBrowserWindow("%sUpgrades/Robux.aspx":format(string_gsub_result1_upvr))
	end
	function module_2.openRobuxStoreWithContext(arg1, arg2) -- Line 109
		--[[ Upvalues[3]:
			[1]: string_gsub_result1_upvr (copied, readonly)
			[2]: addContextToUrl_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
		]]
		local formatted = "%sUpgrades/Robux.aspx":format(string_gsub_result1_upvr)
		if arg2 then
			formatted = formatted.."?product_id=%s":format(arg2)
		end
		GuiService_upvr:OpenBrowserWindow(addContextToUrl_upvr(formatted, arg1))
	end
	function module_2.openPaymentsPageWithContext(arg1, arg2) -- Line 118
		--[[ Upvalues[3]:
			[1]: string_gsub_result1_upvr (copied, readonly)
			[2]: addContextToUrl_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
		]]
		GuiService_upvr:OpenBrowserWindow(addContextToUrl_upvr("%supgrades/paymentmethods?ap=%s":format(string_gsub_result1_upvr, arg2), arg1))
	end
	function module_2.promptNativePurchaseWithLocalPlayer(arg1) -- Line 124
		--[[ Upvalues[1]:
			[1]: MarketplaceService_upvr (copied, readonly)
		]]
		return MarketplaceService_upvr:PromptNativePurchaseWithLocalPlayer(arg1)
	end
	function module_2.promptNativePurchase(arg1, arg2) -- Line 128
		--[[ Upvalues[1]:
			[1]: MarketplaceService_upvr (copied, readonly)
		]]
		return MarketplaceService_upvr:PromptNativePurchase(arg1, arg2)
	end
	function module_2.beginPlatformStorePurchase(arg1) -- Line 132
		--[[ Upvalues[1]:
			[1]: var3_upvw (copied, read and write)
		]]
		return var3_upvw:BeginPlatformStorePurchase(arg1)
	end
	function module_2.openVngStore(arg1) -- Line 136
		--[[ Upvalues[2]:
			[1]: GetFStringVNGWebshopUrl_upvr (copied, readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		if not arg1 or arg1 == "" then
		end
		GuiService_upvr:OpenBrowserWindow(GetFStringVNGWebshopUrl_upvr())
	end
	return module_2
end
return module