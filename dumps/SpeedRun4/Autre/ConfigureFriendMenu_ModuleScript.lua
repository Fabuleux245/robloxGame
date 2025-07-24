-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:09
-- Luau version 6, Types version 3
-- Time taken: 0.001733 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local ContactList = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ContactList
local dependencies = require(ContactList.dependencies)
local useAnalytics_upvr = require(ContactList.Analytics.useAnalytics)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useSelector_upvr = dependencies.Hooks.useSelector
local useLocalization_upvr = dependencies.Hooks.useLocalization
local Roact_upvr = require(CorePackages.Packages.Roact)
local BaseMenu_upvr = UIBlox.App.Menu.BaseMenu
local Images_upvr = UIBlox.App.ImageSet.Images
local EventNamesEnum_upvr = require(ContactList.Analytics.EventNamesEnum)
local FriendAction_upvr = require(ContactList.Enums.FriendAction)
return function(arg1) -- Line 22, Named "ConfigureFriendMenu"
	--[[ Upvalues[9]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: BaseMenu_upvr (readonly)
		[7]: Images_upvr (readonly)
		[8]: EventNamesEnum_upvr (readonly)
		[9]: FriendAction_upvr (readonly)
	]]
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local var7_result1 = useSelector_upvr(function(arg1_2) -- Line 27
		if arg1_2.PlayerMenu.friend then
			return arg1_2.PlayerMenu.friend.combinedName
		end
		return ""
	end)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 35
		if arg1_3.PlayerMenu.friend then
			return arg1_3.PlayerMenu.friend.userId
		end
		return nil
	end)
	local var8_result1 = useLocalization_upvr({
		blockLabel = {
			combinedName = var7_result1;
			"Feature.Call.Label.Block"
		};
		unfriendLabel = {
			combinedName = var7_result1;
			"Feature.Call.Label.Unfriend"
		};
	})
	local module = {}
	local tbl_2 = {}
	local tbl = {
		icon = Images_upvr["icons/actions/block"];
		text = var8_result1.blockLabel;
	}
	local function onActivated() -- Line 59
		--[[ Upvalues[5]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNamesEnum_upvr (copied, readonly)
			[3]: useSelector_upvr_result1_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: FriendAction_upvr (copied, readonly)
		]]
		useAnalytics_upvr_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookPlayerMenuBlockClicked, {
			eventTimestampMs = os.time() * 1000;
			friendUserId = useSelector_upvr_result1_upvr;
		})
		arg1.initiateConfirmation(FriendAction_upvr.Block)
	end
	tbl.onActivated = onActivated
	tbl_2[1] = tbl
	tbl_2[2] = {
		icon = Images_upvr["icons/actions/friends/friendRemove"];
		text = var8_result1.unfriendLabel;
		onActivated = function() -- Line 70, Named "onActivated"
			--[[ Upvalues[5]:
				[1]: useAnalytics_upvr_result1_upvr (readonly)
				[2]: EventNamesEnum_upvr (copied, readonly)
				[3]: useSelector_upvr_result1_upvr (readonly)
				[4]: arg1 (readonly)
				[5]: FriendAction_upvr (copied, readonly)
			]]
			useAnalytics_upvr_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookPlayerMenuUnfriendClicked, {
				eventTimestampMs = os.time() * 1000;
				friendUserId = useSelector_upvr_result1_upvr;
			})
			arg1.initiateConfirmation(FriendAction_upvr.Unfriend)
		end;
	}
	module.buttonProps = tbl_2
	module.background = useStyle_upvr().Theme.BackgroundUIDefault
	module.width = UDim.new(0, 352)
	module.position = UDim2.new(0.5, 0, 0.5, 0)
	module.anchorPoint = Vector2.new(0.5, 0.5)
	return Roact_upvr.createElement(BaseMenu_upvr, module)
end