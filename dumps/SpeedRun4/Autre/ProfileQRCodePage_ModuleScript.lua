-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:20
-- Luau version 6, Types version 3
-- Time taken: 0.003338 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Parent = ProfileQRCode.Parent
local UIBlox = require(Parent.UIBlox)
local ProfileShareLinks = require(Parent.ProfileShareLinks)
local Foundation = require(Parent.Foundation)
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local TextKeys_upvr = require(ProfileQRCode.Common.TextKeys)
local React_upvr = require(Parent.React)
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local FFlagProfileQRCodeFixFocusNavigation_upvr = require(ProfileQRCode.Flags.FFlagProfileQRCodeFixFocusNavigation)
local useIsWideMode_upvr = require(Parent.SocialCommon).Hooks.useIsWideMode
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLastInputMode_upvr = require(Parent.FocusNavigationUtils).useLastInputMode
local useFocusGuiObject_upvr = require(Parent.ReactFocusNavigation).useFocusGuiObject
local useProfileShareLink_upvr = ProfileShareLinks.Hooks.useProfileShareLink
local Contexts_upvr = require(Parent.SocialLuaAnalytics).Analytics.Enums.Contexts
local ProfileSharePolicyEnum_upvr = ProfileShareLinks.Enums.ProfileSharePolicyEnum
local Images_upvr = UIBlox.App.ImageSet.Images
local ProfileQRCodeTopElements_upvr = require(ProfileQRCode.Components.ProfileQRCodeTopElements)
local VerticalScrollView_upvr = UIBlox.App.Container.VerticalScrollView
local Color3_new_result1_upvr = Color3.new(1, 1, 1)
local QRCodeView_upvr = require(ProfileQRCode.Components.QRCodeView)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local InputLabel_upvr = Foundation.InputLabel
local InputLabelSize_upvr = Foundation.Enums.InputLabelSize
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local StandardButtonSize_upvr = UIBlox.App.Button.Enum.StandardButtonSize
return function(arg1) -- Line 75
	--[[ Upvalues[28]:
		[1]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[2]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useAppPolicy_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: TextKeys_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: NavigateDown_upvr (readonly)
		[9]: AppPage_upvr (readonly)
		[10]: FFlagProfileQRCodeFixFocusNavigation_upvr (readonly)
		[11]: useIsWideMode_upvr (readonly)
		[12]: useStyle_upvr (readonly)
		[13]: useLastInputMode_upvr (readonly)
		[14]: useFocusGuiObject_upvr (readonly)
		[15]: useProfileShareLink_upvr (readonly)
		[16]: Contexts_upvr (readonly)
		[17]: ProfileSharePolicyEnum_upvr (readonly)
		[18]: Images_upvr (readonly)
		[19]: ProfileQRCodeTopElements_upvr (readonly)
		[20]: VerticalScrollView_upvr (readonly)
		[21]: Color3_new_result1_upvr (readonly)
		[22]: QRCodeView_upvr (readonly)
		[23]: StyledTextLabel_upvr (readonly)
		[24]: InputLabel_upvr (readonly)
		[25]: InputLabelSize_upvr (readonly)
		[26]: Button_upvr (readonly)
		[27]: ButtonType_upvr (readonly)
		[28]: StandardButtonSize_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 148 start (CF ANALYSIS FAILED)
	local var35_upvr
	if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var35_upvr = useDispatch_upvr()
	else
		var35_upvr = nil
	end
	local var36
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var36 = useAppPolicy_upvr
		var36 = var36(function(arg1_2) -- Line 81
			return arg1_2.getRenameFriendsToConnections()
		end)
	else
		var36 = nil
	end
	if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		local function _(arg1_3) -- Line 87
			return arg1_3.getWebViewSupport()
		end
	else
	end
	local tbl = {}
	if FFlagFriendsRenameSocgraph_upvr and var36 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		-- KONSTANTWARNING: GOTO [40] #39
	end
	tbl.description = TextKeys_upvr.Description
	tbl.shareProfileLink = TextKeys_upvr.ShareProfileLink
	local CopyProfileLink = TextKeys_upvr.CopyProfileLink
	tbl.copyProfileLink = CopyProfileLink
	if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		CopyProfileLink = "Feature.Chat.Action.LearnMore"
	else
		CopyProfileLink = nil
	end
	tbl.learnMore = CopyProfileLink
	if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		local function _() -- Line 104
			--[[ Upvalues[3]:
				[1]: var35_upvr (readonly)
				[2]: NavigateDown_upvr (copied, readonly)
				[3]: AppPage_upvr (copied, readonly)
			]]
			var35_upvr(NavigateDown_upvr({
				name = AppPage_upvr.GenericWebPage;
				detail = "https://en.help.roblox.com/hc/en-us/articles/37725513985812";
				extraProps = {
					title = "";
				};
			}, nil))
		end
		local _ = {var35_upvr}
	else
	end
	local _, any_useState_result2 = React_upvr.useState(false)
	if FFlagProfileQRCodeFixFocusNavigation_upvr then
		-- KONSTANTWARNING: GOTO [95] #83
	end
	if FFlagProfileQRCodeFixFocusNavigation_upvr then
		-- KONSTANTWARNING: GOTO [105] #93
	end
	if FFlagProfileQRCodeFixFocusNavigation_upvr then
	else
	end
	local useProfileShareLink_upvr_result1 = useProfileShareLink_upvr({
		context = Contexts_upvr.ProfileQRCode;
	})
	-- KONSTANTERROR: [0] 1. Error Block 148 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [127] 110. Error Block 51 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [127] 110. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [129] 111. Error Block 52 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [129] 111. Error Block 52 end (CF ANALYSIS FAILED)
end