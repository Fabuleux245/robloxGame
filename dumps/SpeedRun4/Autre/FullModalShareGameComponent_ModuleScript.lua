-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:22
-- Luau version 6, Types version 3
-- Time taken: 0.002406 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("FullModalShareGameComponent")
local GetFFlagExtraInviteModalStringValidation_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Flags.GetFFlagExtraInviteModalStringValidation)
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local LoadingModal_upvr = require(Parent.LoadingModal)
local LayoutProvider_upvr = require(Parent.LayoutProvider)
local ShareGameContainer_upvr = require(Parent.ShareGameContainer)
local InviteSingleUserContainer_upvr = require(Parent.InviteSingleUserContainer)
local ModalShareGamePageFrame_upvr = require(Parent.ModalShareGamePageFrame)
function any_extend_result1.render(arg1) -- Line 20
	--[[ Upvalues[8]:
		[1]: GetFFlagExtraInviteModalStringValidation_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RoactRodux_upvr (readonly)
		[4]: LoadingModal_upvr (readonly)
		[5]: LayoutProvider_upvr (readonly)
		[6]: ShareGameContainer_upvr (readonly)
		[7]: InviteSingleUserContainer_upvr (readonly)
		[8]: ModalShareGamePageFrame_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local isVisible = arg1.props.isVisible
	local store_upvr = arg1.props.store
	local inviteUserId = arg1.props.inviteUserId
	local isLoading = arg1.props.isLoading
	local var16
	if GetFFlagExtraInviteModalStringValidation_upvr() and var16 then
		if not inviteUserId then
			var16 = var16:gsub('\n', ' ')
		end
		if var16:gsub("%s", "") == "" then
			var16 = nil
		end
	end
	local module = {}
	local tbl_3 = {}
	local var21 = isLoading
	if var21 then
		var21 = Roact_upvr.createElement(LoadingModal_upvr)
	end
	tbl_3.loadingIndicator = var21
	local onAfterClosePage
	if not isLoading then
		local tbl = {}
		local tbl_2 = {
			analytics = arg1.props.analytics;
			isVisible = isVisible;
		}
		if inviteUserId then
			onAfterClosePage = InviteSingleUserContainer_upvr
		else
			onAfterClosePage = ModalShareGamePageFrame_upvr
		end
		tbl_2.skeletonComponent = onAfterClosePage
		tbl_2.promptMessage = var16
		tbl_2.inviteUserId = inviteUserId
		tbl_2.inviteMessageId = arg1.props.inviteMessageId
		tbl_2.launchData = arg1.props.launchData
		local onAfterClosePage_2_upvr = arg1.props.onAfterClosePage
		function onAfterClosePage() -- Line 60
			--[[ Upvalues[2]:
				[1]: store_upvr (readonly)
				[2]: onAfterClosePage_2_upvr (readonly)
			]]
			local tbl_4 = {}
			for i, _ in pairs(store_upvr:getState().Invites) do
				table.insert(tbl_4, i)
			end
			onAfterClosePage_2_upvr(tbl_4)
		end
		tbl_2.onAfterClosePage = onAfterClosePage
		tbl.ShareGameContainer = Roact_upvr.createElement(ShareGameContainer_upvr, tbl_2)
	end
	tbl_3.layoutProvider = Roact_upvr.createElement(LayoutProvider_upvr, nil, tbl)
	module.screenGui = Roact_upvr.createElement("ScreenGui", {
		AutoLocalize = false;
		Enabled = isVisible;
		DisplayOrder = -1;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}, tbl_3)
	return Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = store_upvr;
	}, module)
end
return any_extend_result1