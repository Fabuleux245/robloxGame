-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:55
-- Luau version 6, Types version 3
-- Time taken: 0.001009 seconds

local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local module = {}
local GetFFlagEnableSharedInviteStore_upvr = require(Modules.Flags.GetFFlagEnableSharedInviteStore)
local InviteStore_upvr = require(ShareGame.InviteStore)
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local AppReducer_upvr = require(ShareGame.AppReducer)
local Roact_upvr = require(CorePackages.Packages.Roact)
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local App_upvr = require(ShareGame.Components.App)
function module.createApp(arg1, arg2) -- Line 17
	--[[ Upvalues[7]:
		[1]: GetFFlagEnableSharedInviteStore_upvr (readonly)
		[2]: InviteStore_upvr (readonly)
		[3]: Rodux_upvr (readonly)
		[4]: AppReducer_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: RoactRodux_upvr (readonly)
		[7]: App_upvr (readonly)
	]]
	local module_2 = {}
	local var13
	if GetFFlagEnableSharedInviteStore_upvr() then
		var13 = InviteStore_upvr
	else
		var13 = Rodux_upvr.Store.new
		var13 = var13(AppReducer_upvr, nil, {Rodux_upvr.thunkMiddleware})
	end
	module_2.store = var13
	var13 = Roact_upvr.mount
	local tbl = {}
	local tbl_2 = {}
	tbl_2.analytics = arg2
	tbl_2.pageTarget = arg1
	tbl.App = Roact_upvr.createElement(App_upvr, tbl_2)
	var13 = var13(Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = module_2.store;
	}, tbl))
	module_2._instanceHandle = var13
	return module_2
end
return module