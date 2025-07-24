-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:27
-- Luau version 6, Types version 3
-- Time taken: 0.001041 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local React_upvr = require(Parent.React)
local AddFriendsLayerExposure_upvr = require(script.Parent.AddFriendsLayerExposure)
local FullscreenPageWithSafeArea_upvr = require(Parent.AppBlox).FullscreenPageWithSafeArea
local AddFriendsContainer_upvr = require(script.Parent.AddFriendsContainer)
local Dash_upvr = require(FriendsLanding.dependencies).Dash
return function(arg1) -- Line 24, Named "AddFriendsScreen"
	--[[ Upvalues[6]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: AddFriendsLayerExposure_upvr (readonly)
		[4]: FullscreenPageWithSafeArea_upvr (readonly)
		[5]: AddFriendsContainer_upvr (readonly)
		[6]: Dash_upvr (readonly)
	]]
	local module = {}
	local var3_result1_upvr = useDesignTokens_upvr()
	local navigateToLuaAppPages_upvr = arg1.navigateToLuaAppPages
	local contactImporterAndPYMKEnabled_upvr = arg1.contactImporterAndPYMKEnabled
	function module.renderChild(arg1_2) -- Line 31
		--[[ Upvalues[7]:
			[1]: React_upvr (copied, readonly)
			[2]: FullscreenPageWithSafeArea_upvr (copied, readonly)
			[3]: var3_result1_upvr (readonly)
			[4]: AddFriendsContainer_upvr (copied, readonly)
			[5]: Dash_upvr (copied, readonly)
			[6]: navigateToLuaAppPages_upvr (readonly)
			[7]: contactImporterAndPYMKEnabled_upvr (readonly)
		]]
		local module_2 = {}
		local var15 = arg1_2
		if not var15 then
			var15 = {}
		end
		module_2.AddFriendsScreen = React_upvr.createElement(AddFriendsContainer_upvr, Dash_upvr.join(var15, {
			navigateToLuaAppPages = navigateToLuaAppPages_upvr;
			contactImporterAndPYMKEnabled = contactImporterAndPYMKEnabled_upvr;
		}))
		return React_upvr.createElement(FullscreenPageWithSafeArea_upvr, {
			includeStatusBar = true;
			BackgroundColor3 = var3_result1_upvr.LuaApps.App.Page.BackgroundColor;
			BackgroundTransparency = var3_result1_upvr.LuaApps.App.Page.BackgroundTransparency;
		}, module_2)
	end
	return React_upvr.createElement(AddFriendsLayerExposure_upvr, module)
end