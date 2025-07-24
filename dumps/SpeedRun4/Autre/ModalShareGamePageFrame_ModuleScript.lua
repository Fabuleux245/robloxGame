-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:28
-- Luau version 6, Types version 3
-- Time taken: 0.014517 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Modules = CoreGui_upvr.RobloxGui.Modules
local Roact_upvr = require(CorePackages.Packages.Roact)
local ShareGame = Modules.Settings.Pages.ShareGame
local Constants_upvr = require(ShareGame.Constants)
local Theme_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.Settings.Theme)
local GetFFlagEnableNewInviteMenu_upvr = require(Modules.Flags.GetFFlagEnableNewInviteMenu)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ModalShareGamePageFrame")
any_extend_result1.defaultProps = {
	isVisible = true;
}
local Text_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Text
function any_extend_result1.init(arg1) -- Line 53
	--[[ Upvalues[4]:
		[1]: Constants_upvr (readonly)
		[2]: Theme_upvr (readonly)
		[3]: Text_upvr (readonly)
		[4]: Roact_upvr (readonly)
	]]
	arg1.state = {
		promptMessageFitsFrame = true;
	}
	function arg1.onCustomTextAreaSizeChange(arg1_2) -- Line 58
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: Theme_upvr (copied, readonly)
			[4]: Text_upvr (copied, readonly)
		]]
		local promptMessage_2 = arg1.props.promptMessage
		local tbl_9 = {}
		local var16 = promptMessage_2
		if var16 then
			if Text_upvr.GetTextWidth(promptMessage_2, Theme_upvr.font(Enum.Font.SourceSans), Theme_upvr.textSize(Constants_upvr.LayoutSpecific[arg1.props.deviceLayout].PAGE_TITLE_TEXT_SIZE)) >= arg1_2.AbsoluteSize.X then
				var16 = false
			else
				var16 = true
			end
		end
		tbl_9.promptMessageFitsFrame = var16
		arg1:setState(tbl_9)
	end
	arg1.customTextAreaRef = Roact_upvr.createRef()
	function arg1.onClosePage() -- Line 71
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.closePage()
		if arg1.props.onAfterClosePage then
			arg1.props.onAfterClosePage()
		end
	end
end
local GetFFlagEnableNewInviteSendEndpoint_upvr = require(Modules.Flags.GetFFlagEnableNewInviteSendEndpoint)
local GameInviteEvents_upvr = require(CorePackages.Workspace.Packages.GameInvite).GameInviteEvents
function any_extend_result1.didMount(arg1) -- Line 79
	--[[ Upvalues[4]:
		[1]: GetFFlagEnableNewInviteMenu_upvr (readonly)
		[2]: GetFFlagEnableNewInviteSendEndpoint_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: GameInviteEvents_upvr (readonly)
	]]
	if GetFFlagEnableNewInviteMenu_upvr() and arg1.customTextAreaRef.current then
		arg1.onCustomTextAreaSizeChange(arg1.customTextAreaRef.current)
	end
	if GetFFlagEnableNewInviteSendEndpoint_upvr() and arg1.props.promptMessage and arg1.props.analytics then
		arg1.props.analytics:sendEvent(Constants_upvr.Triggers.DeveloperMultiple, GameInviteEvents_upvr.CustomTextShown)
	end
end
local udim_upvr_3 = UDim.new(0.8, 440)
local udim_upvr_2 = UDim.new(0.8, 320)
local udim_upvr = UDim.new(0.7, 500)
local Color3_fromRGB_result1_upvr = Color3.fromRGB(41, 41, 41)
local ErrorToaster_upvr = require(ShareGame.Components.ErrorToaster)
local Header_upvr = require(ShareGame.Components.Header)
local BackButton_upvr = require(ShareGame.Components.BackButton)
local ConversationList_upvr = require(ShareGame.Components.ConversationList)
function any_extend_result1.render(arg1) -- Line 92
	--[[ Upvalues[13]:
		[1]: GetFFlagEnableNewInviteMenu_upvr (readonly)
		[2]: udim_upvr_3 (readonly)
		[3]: udim_upvr_2 (readonly)
		[4]: Constants_upvr (readonly)
		[5]: udim_upvr (readonly)
		[6]: Theme_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: Color3_fromRGB_result1_upvr (readonly)
		[9]: CoreGui_upvr (readonly)
		[10]: ErrorToaster_upvr (readonly)
		[11]: Header_upvr (readonly)
		[12]: BackButton_upvr (readonly)
		[13]: ConversationList_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local deviceLayout = arg1.props.deviceLayout
	local zIndex = arg1.props.zIndex
	local isVisible = arg1.props.isVisible
	local var8_result1 = GetFFlagEnableNewInviteMenu_upvr()
	local var55
	if var8_result1 then
		var55 = udim_upvr_3
	else
		var55 = udim_upvr_2
	end
	if var8_result1 then
		if arg1.props.deviceInfo then
			if arg1.props.deviceInfo.DeviceLayout ~= Constants_upvr.DeviceLayout.PHONE_LANDSCAPE then
			else
			end
		end
	end
	if true then
	end
	local var56 = var8_result1
	if var56 then
		var56 = arg1.props.promptMessage
		if var56 then
			var56 = arg1.state.promptMessageFitsFrame
		end
	end
	if var56 then
		local _ = Theme_upvr.textSize(Constants_upvr.LayoutSpecific[deviceLayout].PAGE_TITLE_TEXT_SIZE) + 10
	else
	end
	if var8_result1 then
	else
	end
	local module = {
		sizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(var55.Offset, math.huge);
		});
		uiPadding2 = Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 15);
			PaddingRight = UDim.new(0, 15);
			PaddingBottom = UDim.new(0, 15);
		});
	}
	local tbl = {
		toasterPortal = Roact_upvr.createElement(Roact_upvr.Portal, {
			target = CoreGui_upvr;
		}, {
			Toaster = Roact_upvr.createElement(ErrorToaster_upvr);
		});
		Layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	if var8_result1 then
		local _ = {
			PaddingTop = UDim.new(0, 10);
		}
		-- KONSTANTWARNING: GOTO [306] #220
	end
	tbl.Padding = nil
	local tbl_12 = {
		deviceLayout = deviceLayout;
	}
	if var8_result1 then
	else
	end
	tbl_12.size = UDim2.new(1, 0, 0, 60)
	tbl_12.layoutOrder = 0
	tbl_12.zIndex = zIndex
	tbl_12.closePage = arg1.onClosePage
	tbl_12.searchAreaActive = arg1.props.searchAreaActive
	tbl_12.toggleSearchIcon = true
	tbl_12.iconType = BackButton_upvr.IconType.Cross
	tbl.Header = Roact_upvr.createElement(Header_upvr, tbl_12)
	if var8_result1 then
		local tbl_10 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_10.Size = UDim2.new(1, 0, 0, 10)
		tbl_10.TextYAlignment = Enum.TextYAlignment.Top
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_10.TextSize = Theme_upvr.textSize(Constants_upvr.LayoutSpecific[deviceLayout].PAGE_TITLE_TEXT_SIZE)
		tbl_10.TextColor3 = Constants_upvr.Color.WHITE
		tbl_10.Font = Theme_upvr.font(Enum.Font.SourceSans)
		local var70 = 1
		tbl_10.BackgroundTransparency = var70
		if var56 then
			var70 = arg1.props.promptMessage
		else
			var70 = ""
		end
		tbl_10.Text = var70
		tbl_10[Roact_upvr.Change.AbsoluteSize] = arg1.onCustomTextAreaSizeChange
		tbl_10[Roact_upvr.Ref] = arg1.customTextAreaRef
	end
	tbl.CustomText = Roact_upvr.createElement("TextLabel", tbl_10)
	tbl.ConversationList = Roact_upvr.createElement(ConversationList_upvr, {
		analytics = arg1.props.analytics;
		size = UDim2.new(1, 0, 1, -60);
		topPadding = 10;
		layoutOrder = 1;
		zIndex = zIndex;
		searchText = arg1.props.searchText;
		entryHeight = 62;
		entryPadding = 18;
		isVisible = isVisible;
		trigger = Constants_upvr.Triggers.DeveloperMultiple;
		inviteMessageId = arg1.props.inviteMessageId;
		launchData = arg1.props.launchData;
	})
	module.content = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		ZIndex = zIndex;
	}, tbl)
	return Roact_upvr.createElement("ImageButton", {
		AnchorPoint = Vector2.new(0.5, 1);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/LuaChat/9-slice/btn-control-sm.png";
		ImageColor3 = Color3_fromRGB_result1_upvr;
		ImageTransparency = 0.1;
		Modal = isVisible;
		Position = UDim2.new(0.5, 0, 1, 4);
		Size = UDim2.new(var55.Scale, 0, 1, 0);
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(Vector2.new(3, 3), Vector2.new(3, 3));
	}, module)
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 211
	return {
		deviceInfo = arg1.DeviceInfo;
	}
end)(any_extend_result1)