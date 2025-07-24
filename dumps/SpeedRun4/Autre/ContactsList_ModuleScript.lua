-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:23
-- Luau version 6, Types version 3
-- Time taken: 0.015575 seconds

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local Parent = ContactImporter.Parent
local dependencies = require(ContactImporter.dependencies)
local UIBlox = dependencies.UIBlox
local Foundation = require(Parent.Foundation)
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useStyle_upvr = dependencies.useStyle
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local TextKeys_upvr = require(ContactImporter.Common.TextKeys)
local useLocalization_upvr = dependencies.useLocalization
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ContactImportButtonsExperimentEnabled", false)
local ContactImportButtonsIXP_upvr = require(ContactImporter.Flags.ContactImportButtonsIXP)
local Dash_upvr = dependencies.Dash
local EventNames_upvr = require(ContactImporter.Analytics).EventNames
local React_upvr = dependencies.React
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local Roact_upvr = dependencies.Roact
local ContactsListEntry_upvr = require(ContactImporter.ContactsList.Components.ContactsListEntry)
local ContactsListInviteEntry_upvr = require(ContactImporter.ContactsList.Components.ContactsListInviteEntry)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local UserInputService_upvr = dependencies.UserInputService
local SectionList_upvr = dependencies.SectionList
local ContactsEmptyList_upvr = require(ContactImporter.ContactsList.Components.ContactsEmptyList)
local InputLabel_upvr = Foundation.InputLabel
local InputLabelSize_upvr = Foundation.Enums.InputLabelSize
local ContactsListSearchBar_upvr = require(ContactImporter.ContactsList.Components.ContactsListSearchBar)
local ContactsGlimmer_upvr = require(ContactImporter.ContactsList.Components.ContactsGlimmer)
local ContactsUploadErrorModal_upvr = require(ContactImporter.ContactsList.Components.ContactsUploadErrorModal)
local FullPageModal_upvr = UIBlox.App.Dialog.Modal.FullPageModal
local HorizontalPageMargin_upvr = UIBlox.App.Container.HorizontalPageMargin
return function(arg1) -- Line 80, Named "ContactsList"
	--[[ Upvalues[29]:
		[1]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[2]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[3]: useAppPolicy_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useDispatch_upvr (readonly)
		[6]: TextKeys_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: game_DefineFastFlag_result1_upvr (readonly)
		[9]: ContactImportButtonsIXP_upvr (readonly)
		[10]: Dash_upvr (readonly)
		[11]: EventNames_upvr (readonly)
		[12]: React_upvr (readonly)
		[13]: NavigateDown_upvr (readonly)
		[14]: AppPage_upvr (readonly)
		[15]: Roact_upvr (readonly)
		[16]: ContactsListEntry_upvr (readonly)
		[17]: ContactsListInviteEntry_upvr (readonly)
		[18]: StyledTextLabel_upvr (readonly)
		[19]: ButtonType_upvr (readonly)
		[20]: UserInputService_upvr (readonly)
		[21]: SectionList_upvr (readonly)
		[22]: ContactsEmptyList_upvr (readonly)
		[23]: InputLabel_upvr (readonly)
		[24]: InputLabelSize_upvr (readonly)
		[25]: ContactsListSearchBar_upvr (readonly)
		[26]: ContactsGlimmer_upvr (readonly)
		[27]: ContactsUploadErrorModal_upvr (readonly)
		[28]: FullPageModal_upvr (readonly)
		[29]: HorizontalPageMargin_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 152 start (CF ANALYSIS FAILED)
	local var35
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var35 = useAppPolicy_upvr
		var35 = var35(function(arg1_2) -- Line 82
			return arg1_2.getRenameFriendsToConnections()
		end)
	else
		var35 = nil
	end
	if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		local function _(arg1_3) -- Line 87
			return arg1_3.getWebViewSupport()
		end
	else
	end
	local var9_result1_upvr = useStyle_upvr()
	if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		local _ = useDispatch_upvr()
	else
	end
	local tbl_8 = {
		fromContactsText = TextKeys_upvr.ON_ROBLOX;
		inviteToRobloxText = TextKeys_upvr.INVITE_TO_ROBLOX;
	}
	if FFlagFriendsRenameSocgraph_upvr and var35 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		-- KONSTANTWARNING: GOTO [53] #48
	end
	tbl_8.contactsListBlurb = TextKeys_upvr.CONTACTS_LIST_BLURB_MIXED
	tbl_8.connectWithFriends = TextKeys_upvr.CONTACTS_LIST_TITLE
	tbl_8.closeModal = TextKeys_upvr.CLOSE_MODAL
	tbl_8.goToAddFriends = TextKeys_upvr.GO_TO_ADD_FRIENDS
	tbl_8.searchContacts = TextKeys_upvr.SEARCH_CONTACTS
	if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	else
	end
	tbl_8.learnMore = nil
	local useLocalization_upvr_result1_upvr = useLocalization_upvr(tbl_8)
	if game_DefineFastFlag_result1_upvr then
		local _ = {
			isExposureEnabled = true;
		}
		-- KONSTANTWARNING: GOTO [97] #80
	end
	local var43_upvr = false
	if game_DefineFastFlag_result1_upvr then
		local _ = {
			isExposureEnabled = true;
		}
		-- KONSTANTWARNING: GOTO [109] #90
	end
	local function var48_upvr() -- Line 130
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EventNames_upvr (copied, readonly)
		]]
		arg1.closeModal(EventNames_upvr.CloseContactListButton)
	end
	local function _() -- Line 134
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EventNames_upvr (copied, readonly)
		]]
		arg1.closeModal(EventNames_upvr.CloseContactListCross)
	end
	if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		local var51_upvr
		local function _() -- Line 139
			--[[ Upvalues[3]:
				[1]: var51_upvr (readonly)
				[2]: NavigateDown_upvr (copied, readonly)
				[3]: AppPage_upvr (copied, readonly)
			]]
			var51_upvr(NavigateDown_upvr({
				name = AppPage_upvr.GenericWebPage;
				detail = "https://en.help.roblox.com/hc/en-us/articles/37725513985812";
				extraProps = {
					title = "";
				};
			}, nil))
		end
		local _ = {var51_upvr}
	else
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState("")
	local function _(arg1_5) -- Line 152
		--[[ Upvalues[2]:
			[1]: Dash_upvr (copied, readonly)
			[2]: any_useState_result1_upvr (readonly)
		]]
		return Dash_upvr.filter(arg1_5, function(arg1_6) -- Line 153
			--[[ Upvalues[1]:
				[1]: any_useState_result1_upvr (copied, readonly)
			]]
			if arg1_6.contactName ~= nil then
				if not arg1_6.contactName:match("^%s*$") then
					return string.find(string.lower(arg1_6.contactName or ""), string.lower(any_useState_result1_upvr))
				end
				return nil
			end
			return string.find(string.lower(arg1_6.contactName or ""), string.lower(any_useState_result1_upvr))
		end)
	end
	local any_filter_result1_2 = Dash_upvr.filter(arg1.matchedContacts, function(arg1_7) -- Line 153
		--[[ Upvalues[1]:
			[1]: any_useState_result1_upvr (readonly)
		]]
		if arg1_7.contactName ~= nil then
			if not arg1_7.contactName:match("^%s*$") then
				return string.find(string.lower(arg1_7.contactName or ""), string.lower(any_useState_result1_upvr))
			end
			return nil
		end
		return string.find(string.lower(arg1_7.contactName or ""), string.lower(any_useState_result1_upvr))
	end)
	local any_filter_result1 = Dash_upvr.filter(arg1.deviceContacts, function(arg1_8) -- Line 153
		--[[ Upvalues[1]:
			[1]: any_useState_result1_upvr (readonly)
		]]
		if arg1_8.contactName ~= nil then
			if not arg1_8.contactName:match("^%s*$") then
				return string.find(string.lower(arg1_8.contactName or ""), string.lower(any_useState_result1_upvr))
			end
			return nil
		end
		return string.find(string.lower(arg1_8.contactName or ""), string.lower(any_useState_result1_upvr))
	end)
	local tbl = {}
	;(function(arg1_4, arg2, arg3) -- Line 121
		--[[ Upvalues[1]:
			[1]: Dash_upvr (copied, readonly)
		]]
		local var46
		if #arg2 ~= 0 then
			var46 = {}
			var46[1] = {
				isSectionDivider = true;
			}
		else
			var46 = nil
		end
		Dash_upvr.append(arg1_4, arg2, var46, arg3)
	end)(tbl, any_filter_result1_2, any_filter_result1)
	local tbl_12 = {}
	-- KONSTANTERROR: [0] 1. Error Block 152 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [181] 149. Error Block 47 start (CF ANALYSIS FAILED)
	table.insert(tbl_12, {
		data = any_filter_result1_2;
		title = useLocalization_upvr_result1_upvr.fromContactsText;
		sectionNumber = #tbl_12 + 1;
	})
	-- KONSTANTERROR: [181] 149. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [198] 160. Error Block 170 start (CF ANALYSIS FAILED)
	if 0 < #any_filter_result1 then
		table.insert(tbl_12, {
			data = any_filter_result1;
			title = useLocalization_upvr_result1_upvr.inviteToRobloxText;
			sectionNumber = #tbl_12 + 1;
		})
	end
	local function _() -- Line 198
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var68
		if #arg1.matchedContacts + #arg1.deviceContacts ~= 0 then
			var68 = false
		else
			var68 = true
		end
		return var68
	end
	local function _(arg1_11) -- Line 286
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: ButtonType_upvr (copied, readonly)
			[3]: Dash_upvr (copied, readonly)
			[4]: var43_upvr (readonly)
			[5]: var48_upvr (readonly)
		]]
		if arg1.isFetching then
			local tbl_9 = {{
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					isLoading = true;
					onActivated = Dash_upvr.noop;
				};
			}}
			return tbl_9
		end
		tbl_9 = arg1.showAddFriendsButton
		local var86 = tbl_9
		if var86 then
			if #arg1.matchedContacts + #arg1.deviceContacts ~= 0 then
				var86 = false
			else
				var86 = true
			end
			if var86 then
				var86 = var43_upvr
				if var86 then
					var86 = {}
					var86[1] = {
						buttonType = ButtonType_upvr.PrimarySystem;
						props = {
							onActivated = arg1.onAddFriendsActivated;
							text = arg1_11.goToAddFriends;
						};
					}
					return var86
				end
				var86 = {}
				var86[1] = {
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						onActivated = arg1.onAddFriendsActivated;
						text = arg1_11.goToAddFriends;
					};
				}
				var86[2] = {
					buttonType = ButtonType_upvr.Secondary;
					props = {
						onActivated = var48_upvr;
						text = arg1_11.closeModal;
					};
				}
				return var86
			end
		end
		if var43_upvr then
			return {}
		end
		return {{
			buttonType = ButtonType_upvr.PrimarySystem;
			props = {
				onActivated = var48_upvr;
				text = arg1_11.closeModal;
			};
		}}
	end
	;({}).layout = Roact_upvr.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
	})
	local function _(arg1_12) -- Line 355
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1_12)
	end
	local var77
	if #tbl ~= 0 then
		local tbl_5 = {
			ref = React_upvr.createRef();
			sections = tbl_12;
		}
		if 0 < #any_filter_result1_2 then
			function var77(arg1_10) -- Line 241
				--[[ Upvalues[3]:
					[1]: Roact_upvr (copied, readonly)
					[2]: StyledTextLabel_upvr (copied, readonly)
					[3]: var9_result1_upvr (readonly)
				]]
				-- KONSTANTERROR: Failed to generate AST for unnamed function:
K:0: attempt to index nil with 'reads'
Traceback:
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K

			end
		else
			var77 = nil
		end
		tbl_5.renderSectionHeader = var77
		function tbl_5.renderItem(arg1_9) -- Line 202
			--[[ Upvalues[6]:
				[1]: Roact_upvr (copied, readonly)
				[2]: var9_result1_upvr (readonly)
				[3]: ContactsListEntry_upvr (copied, readonly)
				[4]: useLocalization_upvr_result1_upvr (readonly)
				[5]: arg1 (readonly)
				[6]: ContactsListInviteEntry_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local item = arg1_9.item
			local isSectionDivider = item.isSectionDivider
			if isSectionDivider then
				if arg1_9.index == 1 then
					isSectionDivider = false
				else
					isSectionDivider = true
				end
				local module = {}
				local tbl_11 = {
					Size = UDim2.new(1, 0, 0, 1);
				}
				if isSectionDivider then
				else
				end
				tbl_11.Position = UDim2.new(0, 0, 0.5, 0)
				tbl_11.BorderSizePixel = 0
				tbl_11.BackgroundColor3 = var9_result1_upvr.Theme.Divider.Color
				tbl_11.BackgroundTransparency = var9_result1_upvr.Theme.Divider.Transparency
				module.divider = Roact_upvr.createElement("Frame", tbl_11)
				return Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 0, 24);
				}, module)
			end
			if item.isMatchedContact then
				return Roact_upvr.createElement(ContactsListEntry_upvr, {
					contactName = item.contactName;
					contactId = item.contactId;
					contextualInfo = useLocalization_upvr_result1_upvr.fromContactsText;
					hasDivider = true;
					hasSentRequest = item.hasSentRequest;
					requestFriendship = arg1.requestFriendship;
					openProfilePeekView = arg1.openProfilePeekView;
					headshotThumbnailUrl = item.headshotThumbnailUrl;
					avatarThumbnailUrl = item.avatarThumbnailUrl;
				})
			end
			return Roact_upvr.createElement(ContactsListInviteEntry_upvr, {
				contactName = item.contactName;
				deviceContactId = item.deviceContactId;
				hasDivider = true;
				phoneNumber = item.phoneNumber;
				hasSentRequest = item.hasSentRequest;
			})
		end
		var77 = 15
		tbl_5.initialNumToRender = var77
		var77 = UDim2.new(1, 0, 0, #tbl * 73)
		tbl_5.CanvasSize = var77
		var77 = {}
		var77.BackgroundTransparency = 1
		var77.BorderSizePixel = 0
		tbl_5.contentContainerStyle = var77
		var77 = {}
		var77.BackgroundTransparency = 1
		var77.ScrollBarThickness = 0
		var77.LayoutOrder = 8
		if var43_upvr then
		else
		end
		var77.Size = UDim2.new(1, 0, 1, -80 - 48 - 36 - 16 - 0)
		var77.ElasticBehavior = Enum.ElasticBehavior.Always
		tbl_5.style = var77
	else
		local tbl_2 = {}
		var77 = TextKeys_upvr.NO_RESULTS
		tbl_2.errorTextKey = var77
		var77 = 8
		tbl_2.layoutOrder = var77
	end
	local tbl_14 = {
		layout = Roact_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
		});
		spacer1 = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 24);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		});
	}
	local _ = {
		Size = UDim2.new(1, 0, 0, 80);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}
	local tbl_4 = {}
	local tbl_6 = {
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
	}
	local Center = Enum.VerticalAlignment.Center
	tbl_6.VerticalAlignment = Center
	if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		Center = Enum.SortOrder.LayoutOrder
	else
		Center = nil
	end
	tbl_6.SortOrder = Center
	tbl_4.textLayout = Roact_upvr.createElement("UIListLayout", tbl_6)
	tbl_4.descriptionText = Roact_upvr.createElement(StyledTextLabel_upvr, {
		text = useLocalization_upvr_result1_upvr.contactsListBlurb;
		automaticSize = Enum.AutomaticSize.Y;
		colorStyle = var9_result1_upvr.Theme.TextDefault;
		fontStyle = var9_result1_upvr.Font.Body;
		lineHeight = 1;
		size = UDim2.new(1, 0, 0, 0);
		maxSize = Vector2.new(0, 80);
		textXAlignment = Enum.TextXAlignment.Center;
		textYAlignment = Enum.TextYAlignment.Center;
		layoutOrder = 1;
	})
	-- KONSTANTERROR: [198] 160. Error Block 170 end (CF ANALYSIS FAILED)
end