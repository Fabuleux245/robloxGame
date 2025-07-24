-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:37
-- Luau version 6, Types version 3
-- Time taken: 0.011383 seconds

local CorePackages = game:GetService("CorePackages")
local VRService_upvr = game:GetService("VRService")
local GamepadService_upvr = game:GetService("GamepadService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local any_extend_result1 = Roact_upvr.PureComponent:extend("MenuIcon")
local Parent = script.Parent.Parent.Parent
local var9_upvr = require(Parent.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
local Chrome = Parent.Parent.Chrome
if require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagFixChromeReferences() then
	if require(Chrome.Enabled)() then
	else
	end
else
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if require(Chrome.Enabled) then
	else
	end
end
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.integer;
	Analytics = t.table;
	setKeepOutArea = t.optional(t.callback);
	removeKeepOutArea = t.optional(t.callback);
})
local tbl_8_upvr = {
	FullScreen = 0;
	FormSheet = 2;
}
local function var13_upvr() -- Line 64
end
local HttpService_upvr = game:GetService("HttpService")
local GetFFlagBetaBadgeLearnMoreLinkFormview_upvr = require(RobloxGui.Modules.Flags.GetFFlagBetaBadgeLearnMoreLinkFormview)
local any_new_result1_upvr = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local GuiService_upvr = game:GetService("GuiService")
function openWebview(arg1) -- Line 69
	--[[ Upvalues[5]:
		[1]: HttpService_upvr (readonly)
		[2]: GetFFlagBetaBadgeLearnMoreLinkFormview_upvr (readonly)
		[3]: tbl_8_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
		[5]: GuiService_upvr (readonly)
	]]
	local tbl_2 = {}
	local var19
	if game:GetEngineFeature("SetWebViewTitle") then
		var19 = "Help Center"
	else
		var19 = nil
	end
	tbl_2.title = var19
	if GetFFlagBetaBadgeLearnMoreLinkFormview_upvr() then
		var19 = tbl_8_upvr.FormSheet
	else
		var19 = nil
	end
	tbl_2.presentationStyle = var19
	var19 = true
	tbl_2.visible = var19
	tbl_2.url = arg1
	local any_JSONEncode_result1 = HttpService_upvr:JSONEncode(tbl_2)
	var19 = "Opening Webview with payload {}"
	any_new_result1_upvr:debug(var19, any_JSONEncode_result1)
	var19 = any_JSONEncode_result1
	GuiService_upvr:BroadcastNotification(var19, 20)
end
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local GetFStringVoiceBetaBadgeLearnMore_upvr = require(RobloxGui.Modules.Flags.GetFStringVoiceBetaBadgeLearnMore)
function any_extend_result1.init(arg1) -- Line 82
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: GamepadService_upvr (readonly)
		[4]: default_upvr (readonly)
		[5]: var13_upvr (readonly)
		[6]: GetFStringVoiceBetaBadgeLearnMore_upvr (readonly)
	]]
	arg1.buttonRef = Roact_upvr.createRef()
	local tbl_3 = {}
	local VREnabled_2 = VRService_upvr.VREnabled
	if VREnabled_2 then
		VREnabled_2 = GamepadService_upvr.GamepadCursorEnabled
	end
	tbl_3.vrShowMenuIcon = VREnabled_2
	tbl_3.voiceChatServiceConnected = false
	tbl_3.showPopup = false
	arg1:setState(tbl_3)
	if game:GetEngineFeature("VoiceChatSupported") then
		default_upvr:asyncInit():andThen(function() -- Line 93
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				voiceChatServiceConnected = true;
			})
		end):catch(var13_upvr)
	end
	function arg1.menuIconActivated() -- Line 101
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showPopup = not arg1.state.showPopup;
		})
		local var29 = arg1
		if not arg1.state.showPopup then
			var29 = "openBetaBadge"
		else
			var29 = "closeBetaBadge"
		end
		var29.props.Analytics.EventStream:setRBXEvent("voiceChat", var29)
	end
	function arg1.learnMore() -- Line 111
		--[[ Upvalues[2]:
			[1]: GetFStringVoiceBetaBadgeLearnMore_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		openWebview(GetFStringVoiceBetaBadgeLearnMore_upvr())
		arg1.props.Analytics.EventStream:setRBXEvent("voiceChat", "clickBetaBadgeLearnMore")
	end
end
local Constants_upvr = require(Parent.Constants)
local withStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.withStyle
local udim2_upvr = UDim2.fromOffset(330, 185)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local udim_upvr = UDim.new(0, 12)
local udim2_upvr_2 = UDim2.fromOffset(31, 11)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
function any_extend_result1.render(arg1) -- Line 119
	--[[ Upvalues[12]:
		[1]: VRService_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: var9_upvr (readonly)
		[4]: withStyle_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: udim2_upvr (readonly)
		[7]: RobloxTranslator_upvr (readonly)
		[8]: udim_upvr (readonly)
		[9]: udim2_upvr_2 (readonly)
		[10]: AppFonts_upvr (readonly)
		[11]: GamepadService_upvr (readonly)
		[12]: ExternalEventConnection_upvr (readonly)
	]]
	local var39_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var39_upvr = arg1.state.vrShowMenuIcon
		return var39_upvr
	end
	if not VRService_upvr.VREnabled or INLINED() then
		var39_upvr = arg1.state.voiceChatServiceConnected
	end
	local function var40_upvr(arg1_2) -- Line 122
		--[[ Upvalues[3]:
			[1]: var39_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: Constants_upvr (copied, readonly)
		]]
		if var39_upvr and arg1_2 then
			arg1.props.setKeepOutArea(Constants_upvr.VoiceBetaBadgeKeepOutAreaId, Vector2.new(arg1_2.AbsolutePosition.X - 2, arg1_2.AbsolutePosition.Y - 2), Vector2.new(arg1_2.AbsoluteSize.X + 4, arg1_2.AbsoluteSize.Y + 4))
		else
			arg1.props.removeKeepOutArea(Constants_upvr.VoiceBetaBadgeKeepOutAreaId)
		end
	end
	if var9_upvr and arg1.buttonRef.current then
		var40_upvr(arg1.buttonRef.current)
	end
	return withStyle_upvr(function(arg1_3) -- Line 141
		--[[ Upvalues[13]:
			[1]: Roact_upvr (copied, readonly)
			[2]: var39_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: udim2_upvr (copied, readonly)
			[5]: RobloxTranslator_upvr (copied, readonly)
			[6]: udim_upvr (copied, readonly)
			[7]: var9_upvr (copied, readonly)
			[8]: var40_upvr (readonly)
			[9]: udim2_upvr_2 (copied, readonly)
			[10]: AppFonts_upvr (copied, readonly)
			[11]: GamepadService_upvr (copied, readonly)
			[12]: ExternalEventConnection_upvr (copied, readonly)
			[13]: VRService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Footer = arg1_3.Font.Footer
		local Font = Footer.Font
		local var44 = arg1_3.Font.BaseSize * Footer.RelativeSize
		local BackgroundUIContrast = arg1_3.Theme.BackgroundUIContrast
		local TextEmphasis = arg1_3.Theme.TextEmphasis
		local module = {}
		local tbl_5 = {}
		local var49 = var39_upvr
		if var49 then
			var49 = arg1.state.showPopup
		end
		tbl_5.Visible = var49
		tbl_5.BackgroundTransparency = 1
		tbl_5.AutomaticSize = Enum.AutomaticSize.XY
		tbl_5.LayoutOrder = arg1.props.layoutOrder + 1
		module.PopupWrapper = Roact_upvr.createElement("Frame", tbl_5, {
			Popup = Roact_upvr.createElement("Frame", {
				Size = udim2_upvr;
				Position = UDim2.fromOffset(0, 10);
				BackgroundTransparency = BackgroundUIContrast.Transparency;
				BackgroundColor3 = BackgroundUIContrast.Color;
			}, {
				Layout = Roact_upvr.createElement("UIListLayout", {
					Padding = UDim.new(0, 8);
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Left;
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
				Popup = Roact_upvr.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.XY;
					BackgroundTransparency = 1;
					LayoutOrder = 0;
				}, {
					Layout = Roact_upvr.createElement("UIListLayout", {
						Padding = UDim.new(0, 0);
						FillDirection = Enum.FillDirection.Vertical;
						HorizontalAlignment = Enum.HorizontalAlignment.Left;
						SortOrder = Enum.SortOrder.LayoutOrder;
					});
					Starter = Roact_upvr.createElement("TextLabel", {
						Text = RobloxTranslator_upvr:FormatByKey("InGame.CommonUI.Badge.Popup.HeaderList");
						TextSize = var44;
						Font = Font;
						LayoutOrder = 0;
						TextXAlignment = Enum.TextXAlignment.Left;
						TextColor3 = TextEmphasis.Color;
						AutomaticSize = Enum.AutomaticSize.XY;
						BackgroundTransparency = 1;
					});
					FirstBullet = Roact_upvr.createElement("TextLabel", {
						Text = "• "..RobloxTranslator_upvr:FormatByKey("InGame.CommonUI.Badge.Popup.VoiceChatBullet");
						TextSize = var44;
						Font = Font;
						LayoutOrder = 2;
						TextXAlignment = Enum.TextXAlignment.Left;
						TextColor3 = TextEmphasis.Color;
						AutomaticSize = Enum.AutomaticSize.XY;
						BackgroundTransparency = 1;
					});
				});
				Text = Roact_upvr.createElement("TextLabel", {
					Text = RobloxTranslator_upvr:FormatByKey("InGame.CommonUI.Badge.Popup.DisclaimerText2");
					TextSize = var44;
					Font = Font;
					LayoutOrder = 0;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextColor3 = TextEmphasis.Color;
					AutomaticSize = Enum.AutomaticSize.XY;
					TextWrapped = true;
					BackgroundTransparency = 1;
				});
				LearnMoreLink = Roact_upvr.createElement("TextButton", {
					Text = RobloxTranslator_upvr:FormatByKey("InGame.CommonUI.Badge.Popup.LearnMoreLink");
					TextSize = var44;
					Font = Font;
					LayoutOrder = 1;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextColor3 = arg1_3.Theme.TextLink.Color;
					AutomaticSize = Enum.AutomaticSize.XY;
					BackgroundTransparency = 1;
					[Roact_upvr.Event.Activated] = arg1.learnMore;
				});
				UICorner = Roact_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8);
				});
				UIPadding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = udim_upvr;
					PaddingRight = udim_upvr;
					PaddingBottom = udim_upvr;
					PaddingTop = udim_upvr;
				});
			});
		})
		local tbl = {
			Visible = var39_upvr;
			AutomaticSize = Enum.AutomaticSize.XY;
			LayoutOrder = arg1.props.layoutOrder;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(0, 1);
		}
		if var9_upvr then
		else
		end
		tbl[Roact_upvr.Change.AbsoluteSize] = nil
		if var9_upvr then
		else
		end
		tbl[Roact_upvr.Change.AbsolutePosition] = nil
		tbl[Roact_upvr.Ref] = arg1.buttonRef
		local tbl_7 = {
			Layout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}
		local tbl_4 = {
			Button = Roact_upvr.createElement("TextButton", {
				Text = RobloxTranslator_upvr:FormatByKey("InGame.CommonUI.Badge.BadgeText");
				Font = AppFonts_upvr.default:getBold();
				TextSize = 8;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Size = udim2_upvr_2;
				TextColor3 = BackgroundUIContrast.Color;
				[Roact_upvr.Event.Activated] = arg1.menuIconActivated;
			});
			UICorner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 3);
			});
			UIStroke = Roact_upvr.createElement("UIStroke", {
				Thickness = 2;
				Color = TextEmphasis.Color;
			});
		}
		local var71 = GamepadService_upvr
		if var71 then
			var71 = Roact_upvr.createElement
			var71 = var71(ExternalEventConnection_upvr, {
				event = GamepadService_upvr:GetPropertyChangedSignal("GamepadCursorEnabled");
				callback = function() -- Line 275
					--[[ Upvalues[3]:
						[1]: arg1 (copied, readonly)
						[2]: VRService_upvr (copied, readonly)
						[3]: GamepadService_upvr (copied, readonly)
					]]
					local tbl_6 = {}
					local VREnabled = VRService_upvr.VREnabled
					if VREnabled then
						VREnabled = GamepadService_upvr.GamepadCursorEnabled
					end
					tbl_6.vrShowMenuIcon = VREnabled
					arg1:setState(tbl_6)
				end or nil;
			})
		end
		tbl_4.VREnabledListener = var71
		tbl_7.ActualButton = Roact_upvr.createElement("Frame", {
			Visible = var39_upvr;
			BackgroundTransparency = 0;
			Size = udim2_upvr_2;
			BackgroundColor3 = Color3.fromRGB(238, 206, 83);
		}, tbl_4)
		module.Button = Roact_upvr.createElement("Frame", tbl, tbl_7)
		return Roact_upvr.createFragment(module)
	end)
end
if var9_upvr then
	local SetKeepOutArea_upvr = require(Parent.Actions.SetKeepOutArea)
	local RemoveKeepOutArea_upvr = require(Parent.Actions.RemoveKeepOutArea)
	return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(nil, function(arg1) -- Line 288, Named "mapDispatchToProps"
		--[[ Upvalues[2]:
			[1]: SetKeepOutArea_upvr (readonly)
			[2]: RemoveKeepOutArea_upvr (readonly)
		]]
		return {
			setKeepOutArea = function(arg1_4, arg2, arg3) -- Line 290, Named "setKeepOutArea"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: SetKeepOutArea_upvr (copied, readonly)
				]]
				return arg1(SetKeepOutArea_upvr(arg1_4, arg2, arg3))
			end;
			removeKeepOutArea = function(arg1_5) -- Line 293, Named "removeKeepOutArea"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: RemoveKeepOutArea_upvr (copied, readonly)
				]]
				return arg1(RemoveKeepOutArea_upvr(arg1_5))
			end;
		}
	end)(any_extend_result1)
end
return any_extend_result1