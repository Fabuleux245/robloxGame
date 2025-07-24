-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:10
-- Luau version 6, Types version 3
-- Time taken: 0.001568 seconds

local ChromeShared = script:FindFirstAncestor("ChromeShared")
local CorePackages = game:GetService("CorePackages")
local Packages_upvr = CorePackages.Workspace.Packages
local any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr = require(Packages_upvr.SharedFlags).GetFFlagAdaptUnibarAndTiltSizing()
if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
	Packages_upvr = nil
else
	Packages_upvr = require(CorePackages.Packages.UIBlox).App.SelectionImage.SelectionCursorProvider
end
local React_upvr = require(CorePackages.Packages.React)
local ReactUtils_upvr = require(CorePackages.Packages.ReactUtils)
local RoactAppPolicy_upvr = require(CorePackages.Workspace.Packages.UniversalAppPolicy).RoactAppPolicy
local AppFeaturePolicies_upvr = require(CorePackages.Workspace.Packages.UniversalAppPolicy).AppFeaturePolicies
local var9_upvr = require(ChromeShared.Parent.Flags.FFlagEnableUnibarTooltipQueue)()
local TooltipProvider_upvr = require(ChromeShared.Unibar.Tooltips.TooltipProvider)
local UnibarMenu_upvr = require(ChromeShared.Unibar.UnibarMenu)
return function(arg1) -- Line 21, Named "UnibarMenuWrapper"
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: ReactUtils_upvr (readonly)
		[3]: any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr (readonly)
		[4]: RoactAppPolicy_upvr (readonly)
		[5]: AppFeaturePolicies_upvr (readonly)
		[6]: var9_upvr (readonly)
		[7]: TooltipProvider_upvr (readonly)
		[8]: Packages_upvr (readonly)
		[9]: UnibarMenu_upvr (readonly)
	]]
	local module = {}
	local var13
	if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
		local tbl = {}
		var13 = RoactAppPolicy_upvr
		local Provider = var13.Provider
		var13 = {}
		var13.policy = {AppFeaturePolicies_upvr}
		var13 = var9_upvr
		if var13 then
			var13 = React_upvr
			Provider = var13.createElement
			var13 = TooltipProvider_upvr
			Provider = Provider(var13)
		else
			Provider = nil
		end
		tbl[1] = React_upvr.createElement(Provider, var13)
		tbl[2] = Provider
	else
		local tbl_2 = {}
		var13 = React_upvr
		var13 = RoactAppPolicy_upvr.Provider
		if var9_upvr then
			var13 = React_upvr.createElement(TooltipProvider_upvr)
		else
			var13 = nil
		end
		tbl_2[1] = React_upvr.createElement(Packages_upvr)
		tbl_2[2] = var13.createElement(var13, {
			policy = {AppFeaturePolicies_upvr};
		})
		tbl_2[3] = var13
	end
	module.providers = tbl_2
	return React_upvr.createElement(ReactUtils_upvr.ContextStack, module, {
		UnibarMenu = React_upvr.createElement(UnibarMenu_upvr, arg1);
	})
end