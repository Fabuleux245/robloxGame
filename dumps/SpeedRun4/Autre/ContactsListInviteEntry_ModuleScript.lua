-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:29
-- Luau version 6, Types version 3
-- Time taken: 0.003224 seconds

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local UIBlox = dependencies.UIBlox
local SMSProtocol_upvr = dependencies.SMSProtocol
local tbl_2_upvr = {
	smsProtocol = SMSProtocol_upvr.default;
}
local Dash_upvr = dependencies.Dash
local useLocalization_upvr = dependencies.useLocalization
local TextKeys_upvr = require(ContactImporter.Common.TextKeys)
local useStyle_upvr = dependencies.useStyle
local sendInviteLink_upvr = require(script.Parent.sendInviteLink)
local React_upvr = dependencies.React
local Roact_upvr = dependencies.Roact
local getFFlagContactsListEntryUpdatedTruncationFix_upvr = require(ContactImporter.Flags.getFFlagContactsListEntryUpdatedTruncationFix)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local StandardButtonSize_upvr = UIBlox.App.Button.Enum.StandardButtonSize
function ContactsListInviteEntry(arg1) -- Line 42
	--[[ Upvalues[14]:
		[1]: Dash_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: TextKeys_upvr (readonly)
		[5]: useStyle_upvr (readonly)
		[6]: sendInviteLink_upvr (readonly)
		[7]: SMSProtocol_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: Roact_upvr (readonly)
		[10]: getFFlagContactsListEntryUpdatedTruncationFix_upvr (readonly)
		[11]: StyledTextLabel_upvr (readonly)
		[12]: Button_upvr (readonly)
		[13]: ButtonType_upvr (readonly)
		[14]: StandardButtonSize_upvr (readonly)
	]]
	local any_join_result1 = Dash_upvr.join(tbl_2_upvr, arg1)
	local tbl_3 = {
		invite = TextKeys_upvr.INVITE_BUTTON_TEXT;
	}
	local var9_result1 = useStyle_upvr()
	local var10_result1 = sendInviteLink_upvr({
		address = any_join_result1.phoneNumber;
		deviceContactId = any_join_result1.deviceContactId;
		smsProtocol = SMSProtocol_upvr.default;
	})
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(0)
	local module = {}
	local tbl_5 = {}
	local any_createElement_result1_2 = Roact_upvr.createElement("UIPadding", {
		PaddingTop = UDim.new(0, 26);
		PaddingBottom = UDim.new(0, 26);
	})
	tbl_5.padding = any_createElement_result1_2
	if getFFlagContactsListEntryUpdatedTruncationFix_upvr() then
		any_createElement_result1_2 = Roact_upvr.createElement
		any_createElement_result1_2 = any_createElement_result1_2(StyledTextLabel_upvr, {
			size = UDim2.new(1, any_useState_result1, 0, 20);
			colorStyle = var9_result1.Theme.TextEmphasis;
			fontStyle = var9_result1.Font.Header2;
			lineHeight = 1;
			text = any_join_result1.contactName;
			fluidSizing = false;
			richText = false;
			textWrapped = false;
			textXAlignment = Enum.TextXAlignment.Left;
			textYAlignment = Enum.TextYAlignment.Bottom;
			textTruncate = Enum.TextTruncate.AtEnd;
		})
	else
		any_createElement_result1_2 = Roact_upvr.createElement
		any_createElement_result1_2 = any_createElement_result1_2(StyledTextLabel_upvr, {
			automaticSize = Enum.AutomaticSize.Y;
			colorStyle = var9_result1.Theme.TextEmphasis;
			fontStyle = var9_result1.Font.Header2;
			lineHeight = 1;
			text = any_join_result1.contactName;
			textXAlignment = Enum.TextXAlignment.Left;
			textYAlignment = Enum.TextYAlignment.Bottom;
		})
	end
	tbl_5.contactNameLabel = any_createElement_result1_2
	if not any_join_result1.hasSentRequest then
		any_createElement_result1_2 = Roact_upvr.createElement
		any_createElement_result1_2 = any_createElement_result1_2(Button_upvr, {
			buttonType = ButtonType_upvr.PrimarySystem;
			position = UDim2.new(1, -1, 0.5, 0);
			anchorPoint = Vector2.new(1, 0.5);
			standardSize = StandardButtonSize_upvr.XSmall;
			fitContent = true;
			text = useLocalization_upvr(tbl_3).invite;
			isDisabled = var10_result1.isLoading;
			onActivated = var10_result1.sendInvite;
			[React_upvr.Change.AbsoluteSize] = function(arg1_2) -- Line 108
				--[[ Upvalues[2]:
					[1]: getFFlagContactsListEntryUpdatedTruncationFix_upvr (copied, readonly)
					[2]: any_useState_result2_upvr (readonly)
				]]
				if getFFlagContactsListEntryUpdatedTruncationFix_upvr() then
					any_useState_result2_upvr((0) - (arg1_2.AbsoluteSize.X + 10))
				end
			end;
		})
	else
		any_createElement_result1_2 = Roact_upvr.createElement
		local tbl = {
			buttonType = ButtonType_upvr.Secondary;
			position = UDim2.new(1, -1, 0.5, 0);
			anchorPoint = Vector2.new(1, 0.5);
			standardSize = StandardButtonSize_upvr.XSmall;
			isDisabled = true;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.text = useLocalization_upvr(tbl_3).invite
		tbl.onActivated = Dash_upvr.noop
		tbl[React_upvr.Change.AbsoluteSize] = function(arg1_3) -- Line 122
			--[[ Upvalues[2]:
				[1]: getFFlagContactsListEntryUpdatedTruncationFix_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			if getFFlagContactsListEntryUpdatedTruncationFix_upvr() then
				any_useState_result2_upvr((0) - (arg1_3.AbsoluteSize.X + 10))
			end
		end
		any_createElement_result1_2 = any_createElement_result1_2(Button_upvr, tbl)
	end
	tbl_5.sendInviteButton = any_createElement_result1_2
	local any_createElement_result1 = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, tbl_5)
	module.entryContent = any_createElement_result1
	if any_join_result1.hasDivider then
		any_createElement_result1 = Roact_upvr.createElement
		local tbl_4 = {}
		any_createElement_result1_2 = 1
		tbl_4.Size = UDim2.new(any_createElement_result1_2, 0, 0, 1)
		any_createElement_result1_2 = 0
		tbl_4.Position = UDim2.new(any_createElement_result1_2, 0, 1, 0)
		tbl_4.BorderSizePixel = 0
		any_createElement_result1_2 = var9_result1.Theme.Divider
		tbl_4.BackgroundColor3 = any_createElement_result1_2.Color
		any_createElement_result1_2 = var9_result1.Theme.Divider
		tbl_4.BackgroundTransparency = any_createElement_result1_2.Transparency
		any_createElement_result1 = any_createElement_result1("Frame", tbl_4)
	else
		any_createElement_result1 = nil
	end
	module.divider = any_createElement_result1
	return Roact_upvr.createElement("Frame", {
		Name = any_join_result1.deviceContactId;
		Size = UDim2.new(1, 0, 0, 72);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
	}, module)
end
return ContactsListInviteEntry