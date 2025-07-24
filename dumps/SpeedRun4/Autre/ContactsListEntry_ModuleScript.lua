-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:27
-- Luau version 6, Types version 3
-- Time taken: 0.006940 seconds

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local Parent = ContactImporter.Parent
local dependencies = require(ContactImporter.dependencies)
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local FFlagEnableContactProfilePage_DEV_upvr = require(Parent.SharedFlags).FFlagEnableContactProfilePage_DEV
local any_extend_result1 = Roact_upvr.PureComponent:extend("ContactsListEntry")
any_extend_result1.defaultProps = {
	contextualInfo = "";
	contactName = "";
	hasDivider = false;
}
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local Constants_upvr = require(ContactImporter.Common.Constants)
function any_extend_result1.init(arg1) -- Line 58
	--[[ Upvalues[3]:
		[1]: FFlagEnableContactProfilePage_DEV_upvr (readonly)
		[2]: AppPage_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	arg1:setState({
		clicked = false;
		contactNameOffset = 0;
	})
	function arg1.addButtonSizeChanged(arg1_2) -- Line 64
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			contactNameOffset = (0) - (arg1_2.AbsoluteSize.X + 10);
		})
	end
	function arg1.requestContactFriendship() -- Line 70
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local props_2 = arg1.props
		props_2.requestFriendship(props_2.contactId)
	end
	function arg1.openProfilePeekView() -- Line 75
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: FFlagEnableContactProfilePage_DEV_upvr (copied, readonly)
			[3]: AppPage_upvr (copied, readonly)
			[4]: Constants_upvr (copied, readonly)
		]]
		local props = arg1.props
		if FFlagEnableContactProfilePage_DEV_upvr then
			arg1.props.navigateToProfile({
				name = AppPage_upvr.ProfilePlatform;
				detail = props.contactId;
				extraProps = {
					profileType = Constants_upvr.CONTACT;
				};
			})
		else
			arg1.props.openProfilePeekView(props.contactId, {
				profileType = Constants_upvr.CONTACTS_PROFILE_TYPE;
				contactProps = {
					contactId = props.contactId;
					contactName = props.contactName;
					avatarImageUrl = props.avatarThumbnailUrl;
				};
			})
		end
	end
end
local withStyle_upvr = UIBlox.Style.withStyle
local LoadableImage_upvr = UIBlox.App.Loading.LoadableImage
local getFFlagContactsListEntryUpdatedTruncationFix_upvr = require(ContactImporter.Flags.getFFlagContactsListEntryUpdatedTruncationFix)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local Images_upvr = UIBlox.App.ImageSet.Images
function any_extend_result1.render(arg1) -- Line 102
	--[[ Upvalues[8]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LoadableImage_upvr (readonly)
		[4]: getFFlagContactsListEntryUpdatedTruncationFix_upvr (readonly)
		[5]: StyledTextLabel_upvr (readonly)
		[6]: Button_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
		[8]: Images_upvr (readonly)
	]]
	local props_upvr = arg1.props
	local var31_upvr = not props_upvr.hasSentRequest
	return withStyle_upvr(function(arg1_3) -- Line 106
		--[[ Upvalues[10]:
			[1]: Roact_upvr (copied, readonly)
			[2]: props_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: LoadableImage_upvr (copied, readonly)
			[5]: getFFlagContactsListEntryUpdatedTruncationFix_upvr (copied, readonly)
			[6]: StyledTextLabel_upvr (copied, readonly)
			[7]: var31_upvr (readonly)
			[8]: Button_upvr (copied, readonly)
			[9]: ButtonType_upvr (copied, readonly)
			[10]: Images_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module = {}
		local tbl_4 = {
			layout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 1);
			});
			headshotThumbnailContainer = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, 64, 0, 64);
				LayoutOrder = 1;
				BackgroundTransparency = 1;
			}, {Roact_upvr.createElement("ImageButton", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
				[Roact_upvr.Event.Activated] = arg1.openProfilePeekView;
			}, {
				headshotThumbnailImage = Roact_upvr.createElement(LoadableImage_upvr, {
					Size = UDim2.new(0, 64, 0, 64);
					Image = props_upvr.headshotThumbnailUrl;
					onLoaded = function() -- Line 137, Named "onLoaded"
					end;
					BackgroundTransparency = 1;
					useShimmerAnimationWhileLoading = true;
					showFailedStateWhenLoadingFailed = true;
				});
			})});
			headshotPadding = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, 12, 1, 0);
				BackgroundTransparency = 1;
				LayoutOrder = 2;
			});
		}
		local tbl = {
			layout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
		}
		local var46
		if getFFlagContactsListEntryUpdatedTruncationFix_upvr() then
			var46 = Roact_upvr.createElement
			var46 = var46(StyledTextLabel_upvr, {
				size = UDim2.new(1, arg1.state.contactNameOffset, 0, 20);
				colorStyle = arg1_3.Theme.TextEmphasis;
				fontStyle = arg1_3.Font.Header2;
				lineHeight = 1;
				text = props_upvr.contactName;
				fluidSizing = false;
				richText = false;
				textWrapped = false;
				textXAlignment = Enum.TextXAlignment.Left;
				textYAlignment = Enum.TextYAlignment.Bottom;
				textTruncate = Enum.TextTruncate.AtEnd;
				layoutOrder = 1;
			})
		else
			var46 = Roact_upvr.createElement
			var46 = var46(StyledTextLabel_upvr, {
				automaticSize = Enum.AutomaticSize.Y;
				colorStyle = arg1_3.Theme.TextEmphasis;
				fontStyle = arg1_3.Font.Header2;
				lineHeight = 1;
				text = props_upvr.contactName;
				textXAlignment = Enum.TextXAlignment.Left;
				textYAlignment = Enum.TextYAlignment.Bottom;
				layoutOrder = 1;
			})
		end
		tbl.contactNameLabel = var46
		tbl_4.middleTextGroup = Roact_upvr.createElement("TextButton", {
			Size = UDim2.new(1, -123, 1, 0);
			Text = "";
			BackgroundTransparency = 1;
			[Roact_upvr.Event.Activated] = arg1.openProfilePeekView;
			LayoutOrder = 3;
		}, tbl)
		if var31_upvr then
			local tbl_2 = {
				buttonType = ButtonType_upvr.PrimarySystem;
				icon = Images_upvr["icons/actions/friends/friendAdd"];
				size = UDim2.fromOffset(44, 36);
				onActivated = arg1.requestContactFriendship;
				layoutOrder = 4;
			}
			local Change = Roact_upvr.Change
			if getFFlagContactsListEntryUpdatedTruncationFix_upvr() then
				Change = arg1.addButtonSizeChanged
			else
				Change = nil
			end
			tbl_2[Change.AbsoluteSize] = Change
			local any_createElement_result1_2 = Roact_upvr.createElement(Button_upvr, tbl_2)
		else
			local tbl_3 = {
				buttonType = ButtonType_upvr.Secondary;
				icon = Images_upvr["icons/actions/friends/friendpending"];
				size = UDim2.fromOffset(44, 36);
				onActivated = function() -- Line 207, Named "onActivated"
				end;
				isDisabled = true;
				layoutOrder = 4;
			}
			if getFFlagContactsListEntryUpdatedTruncationFix_upvr() then
			else
			end
			tbl_3[Roact_upvr.Change.AbsoluteSize] = nil
		end
		tbl_4.requestContactButton = Roact_upvr.createElement(Button_upvr, tbl_3)
		local any_createElement_result1 = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		}, tbl_4)
		module.entryContent = any_createElement_result1
		if props_upvr.hasDivider then
			any_createElement_result1 = Roact_upvr.createElement
			any_createElement_result1 = any_createElement_result1("Frame", {
				Size = UDim2.new(1, 0, 0, 1);
				Position = UDim2.new(0, 0, 1, 0);
				BorderSizePixel = 0;
				BackgroundColor3 = arg1_3.Theme.Divider.Color;
				BackgroundTransparency = arg1_3.Theme.Divider.Transparency;
			})
		else
			any_createElement_result1 = nil
		end
		module.divider = any_createElement_result1
		return Roact_upvr.createElement("Frame", {
			Name = props_upvr.deviceContactId;
			Size = UDim2.new(1, 0, 0, 72);
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.layoutOrder;
		}, module)
	end)
end
if FFlagEnableContactProfilePage_DEV_upvr then
	local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
	return dependencies.RoactRodux.connect(nil, function(arg1) -- Line 231, Named "mapDispatchToProps"
		--[[ Upvalues[1]:
			[1]: NavigateDown_upvr (readonly)
		]]
		return {
			navigateToProfile = function(arg1_4) -- Line 233, Named "navigateToProfile"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: NavigateDown_upvr (copied, readonly)
				]]
				arg1(NavigateDown_upvr(arg1_4))
			end;
		}
	end)(any_extend_result1)
end
return any_extend_result1