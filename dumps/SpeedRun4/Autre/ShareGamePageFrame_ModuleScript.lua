-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:32
-- Luau version 6, Types version 3
-- Time taken: 0.008252 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Modules = CoreGui_upvr.RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local Roact_upvr = require(CorePackages.Packages.Roact)
local var6_upvw = 10
local var7_upvw = 44
if require(Modules.Flags.GetFFlagEnableNewInviteMenu)() then
	var6_upvw = 16
	var7_upvw = 52
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("ShareGamePageFrame")
function any_extend_result1.init(arg1) -- Line 43
	arg1.state = {
		serverType = nil;
	}
end
local Constants_upvr_2 = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Constants
local Utility_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui", math.huge).Modules.Settings.Utility)
function any_extend_result1.shouldShowInviteLink(arg1, arg2) -- Line 49
	--[[ Upvalues[2]:
		[1]: Constants_upvr_2 (readonly)
		[2]: Utility_upvr (readonly)
	]]
	if arg1.props.experienceInviteShareLinkEnabled and arg1.state.serverType == Constants_upvr_2.STANDARD_SERVER and Utility_upvr:IsExperienceOlderThanOneWeek(arg2) then
		return true
	end
	return false
end
local Promise_upvr = require(CorePackages.Packages.Promise)
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
function any_extend_result1.didMount(arg1) -- Line 61
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: RobloxReplicatedStorage_upvr (readonly)
	]]
	arg1.props.fetchGameInfo()
	if arg1.state.serverType == nil then
		Promise_upvr.try(function() -- Line 64
			--[[ Upvalues[1]:
				[1]: RobloxReplicatedStorage_upvr (copied, readonly)
			]]
			return RobloxReplicatedStorage_upvr:WaitForChild("GetServerType", math.huge):InvokeServer()
		end):andThen(function(arg1_2) -- Line 67
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local tbl = {}
			tbl.serverType = arg1_2
			arg1:setState(tbl)
		end)
	end
end
local Constants_upvr = require(ShareGame.Constants)
local BackButton_upvr = require(ShareGame.Components.BackButton)
local ErrorToaster_upvr = require(ShareGame.Components.ErrorToaster)
local Header_upvr = require(ShareGame.Components.Header)
local ShareInviteLink_upvr = require(ShareGame.Components.ShareInviteLink)
local ConversationList_upvr = require(ShareGame.Components.ConversationList)
function any_extend_result1.render(arg1) -- Line 73
	--[[ Upvalues[10]:
		[1]: Constants_upvr (readonly)
		[2]: BackButton_upvr (readonly)
		[3]: var7_upvw (read and write)
		[4]: Roact_upvr (readonly)
		[5]: CoreGui_upvr (readonly)
		[6]: ErrorToaster_upvr (readonly)
		[7]: Header_upvr (readonly)
		[8]: ShareInviteLink_upvr (readonly)
		[9]: ConversationList_upvr (readonly)
		[10]: var6_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local analytics = arg1.props.analytics
	local deviceLayout = arg1.props.deviceLayout
	local zIndex = arg1.props.zIndex
	local var26 = Constants_upvr
	local var27 = var26.LayoutSpecific[deviceLayout]
	local HEADER_HEIGHT = var27.HEADER_HEIGHT
	local var29
	if deviceLayout ~= var29 then
		var26 = false
	else
		var26 = true
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var29 = BackButton_upvr.IconType.Arrow
		return var29
	end
	if var26 or not INLINED() then
		var29 = BackButton_upvr.IconType.None
	end
	local any_shouldShowInviteLink_result1 = arg1:shouldShowInviteLink(arg1.props.gameInfo)
	local var31 = 0
	local var32 = 0
	if any_shouldShowInviteLink_result1 then
		var31 -= var7_upvw
		var32 = 10
	end
	local module = {
		toasterPortal = Roact_upvr.createElement(Roact_upvr.Portal, {
			target = CoreGui_upvr;
		}, {
			Toaster = Roact_upvr.createElement(ErrorToaster_upvr);
		});
		Header = Roact_upvr.createElement(Header_upvr, {
			deviceLayout = deviceLayout;
			size = UDim2.new(1, 0, 0, HEADER_HEIGHT);
			position = UDim2.new(0, 0, 0, -HEADER_HEIGHT);
			layoutOrder = 0;
			zIndex = zIndex;
			closePage = arg1.props.closePage;
			searchAreaActive = arg1.props.searchAreaActive;
			toggleSearchIcon = not var26;
			iconType = var29;
			analytics = analytics;
		});
	}
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		tbl_3.zIndex = zIndex
		tbl_3.layoutOrder = 1
		tbl_3.size = UDim2.new(1, 0, 0, var7_upvw)
		tbl_3.deviceLayout = deviceLayout
		tbl_3.analytics = analytics
		tbl_3.position = UDim2.new(0, 0, 0, var32)
		local tbl_3 = {}
		return Roact_upvr.createElement(ShareInviteLink_upvr, tbl_3)
	end
	if not any_shouldShowInviteLink_result1 or not INLINED_2() then
	end
	module.ShareInviteLink = nil
	local tbl_2 = {
		analytics = analytics;
		size = UDim2.new(1, 0, 1, var27.EXTEND_BOTTOM_SIZE - var6_upvw + var31);
	}
	if not any_shouldShowInviteLink_result1 or not (var6_upvw + var7_upvw + var32) then
	end
	tbl_2.topPadding = var6_upvw
	if any_shouldShowInviteLink_result1 then
	else
	end
	tbl_2.layoutOrder = 1
	tbl_2.zIndex = zIndex
	tbl_2.searchText = arg1.props.searchText
	tbl_2.isVisible = arg1.props.isVisible
	tbl_2.trigger = "GameMenu"
	module.ConversationList = Roact_upvr.createElement(ConversationList_upvr, tbl_2)
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		ZIndex = zIndex;
		AutoLocalize = false;
	}, module)
end
local httpRequest_upvr = require(Modules.Common.httpRequest)
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local GetGameNameAndDescription_upvr = require(CorePackages.Workspace.Packages.GameDetailRodux).GetGameNameAndDescription
local SetGameInfoCreated_upvr = require(ShareGame.Actions.SetGameInfoCreated)
return require(CorePackages.Workspace.Packages.UniversalAppPolicy).RoactAppPolicy.connect(function(arg1) -- Line 158
	return {
		experienceInviteShareLinkEnabled = arg1.getExperienceInviteShareLinkEnabled();
	}
end)(require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 143
	return {
		gameInfo = arg1.GameInfo;
	}
end, function(arg1) -- Line 147
	--[[ Upvalues[4]:
		[1]: httpRequest_upvr (readonly)
		[2]: HttpRbxApiService_upvr (readonly)
		[3]: GetGameNameAndDescription_upvr (readonly)
		[4]: SetGameInfoCreated_upvr (readonly)
	]]
	return {
		fetchGameInfo = function() -- Line 149, Named "fetchGameInfo"
			--[[ Upvalues[5]:
				[1]: httpRequest_upvr (copied, readonly)
				[2]: HttpRbxApiService_upvr (copied, readonly)
				[3]: GetGameNameAndDescription_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: SetGameInfoCreated_upvr (copied, readonly)
			]]
			GetGameNameAndDescription_upvr(httpRequest_upvr(HttpRbxApiService_upvr), game.GameId):andThen(function(arg1_3) -- Line 151
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: SetGameInfoCreated_upvr (copied, readonly)
				]]
				arg1(SetGameInfoCreated_upvr(arg1_3.Created))
			end)
		end;
	}
end)(any_extend_result1))