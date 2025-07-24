-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:36
-- Luau version 6, Types version 3
-- Time taken: 0.004652 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("AddFriendsNow")
any_extend_result1.validateProps = t.strictInterface({
	switchToPlayers = t.callback;
	canCaptureFocus = t.boolean;
})
local any_GetFFlagUIBloxUseFoundationButton_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxUseFoundationButton()
function any_extend_result1.init(arg1) -- Line 45
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: any_GetFFlagUIBloxUseFoundationButton_result1_upvr (readonly)
	]]
	local var10 = Roact_upvr
	arg1.buttonRef = var10.createRef()
	local tbl = {}
	if any_GetFFlagUIBloxUseFoundationButton_result1_upvr then
		var10 = true
	else
		var10 = false
	end
	tbl.buttonIsInitialized = var10
	arg1.state = tbl
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local TextService_upvr = game:GetService("TextService")
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Assets_upvr = require(Parent.Resources.Assets)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local RootedConnection_upvr = require(Parent.Components.Connection.RootedConnection)
local FocusHandler_upvr = require(Parent.Components.Connection.FocusHandler)
local GuiService_upvr = game:GetService("GuiService")
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
local function render(arg1) -- Line 53
	--[[ Upvalues[13]:
		[1]: withStyle_upvr (readonly)
		[2]: withLocalization_upvr (readonly)
		[3]: TextService_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: Assets_upvr (readonly)
		[7]: ThemedTextLabel_upvr (readonly)
		[8]: RootedConnection_upvr (readonly)
		[9]: FocusHandler_upvr (readonly)
		[10]: GuiService_upvr (readonly)
		[11]: Button_upvr (readonly)
		[12]: ButtonType_upvr (readonly)
		[13]: ControlState_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_2) -- Line 56
		--[[ Upvalues[14]:
			[1]: withLocalization_upvr (copied, readonly)
			[2]: TextService_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: Assets_upvr (copied, readonly)
			[6]: ThemedTextLabel_upvr (copied, readonly)
			[7]: RootedConnection_upvr (copied, readonly)
			[8]: FocusHandler_upvr (copied, readonly)
			[9]: props_upvr (readonly)
			[10]: arg1 (readonly)
			[11]: GuiService_upvr (copied, readonly)
			[12]: Button_upvr (copied, readonly)
			[13]: ButtonType_upvr (copied, readonly)
			[14]: ControlState_upvr (copied, readonly)
		]]
		return withLocalization_upvr({
			noFriendsText = "CoreScripts.InGameMenu.InviteFriends.NoFriends";
			makeFriendsNow = "CoreScripts.InGameMenu.InviteFriends.MakeFriendsNow";
		})(function(arg1_3) -- Line 60
			--[[ Upvalues[14]:
				[1]: arg1_2 (readonly)
				[2]: TextService_upvr (copied, readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: ImageSetLabel_upvr (copied, readonly)
				[5]: Assets_upvr (copied, readonly)
				[6]: ThemedTextLabel_upvr (copied, readonly)
				[7]: RootedConnection_upvr (copied, readonly)
				[8]: FocusHandler_upvr (copied, readonly)
				[9]: props_upvr (copied, readonly)
				[10]: arg1 (copied, readonly)
				[11]: GuiService_upvr (copied, readonly)
				[12]: Button_upvr (copied, readonly)
				[13]: ButtonType_upvr (copied, readonly)
				[14]: ControlState_upvr (copied, readonly)
			]]
			return Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(0, 304, 1, 0);
				Position = UDim2.new(0.5, 0, 0, 0);
				AnchorPoint = Vector2.new(0.5, 0);
			}, {
				Layout = Roact_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
				Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
					BackgroundTransparency = 1;
					Image = Assets_upvr.Images.AddFriend;
					Size = UDim2.new(0, 64, 0, 64);
					ImageTransparency = 0.5;
					LayoutOrder = 1;
				});
				TextContainer = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 0, TextService_upvr:GetTextSize(arg1_3.noFriendsText, arg1_2.Font.Body.RelativeSize * arg1_2.Font.BaseSize, arg1_2.Font.Body.Font, Vector2.new(304, math.huge)).Y + 20);
					LayoutOrder = 2;
				}, {
					Text = Roact_upvr.createElement(ThemedTextLabel_upvr, {
						fontKey = "Body";
						themeKey = "TextEmphasis";
						Text = arg1_3.noFriendsText;
						Position = UDim2.new(0, 0, 0, 4);
						Size = UDim2.new(1, 0, 1, -20);
						TextXAlignment = Enum.TextXAlignment.Center;
						TextWrapped = true;
					});
				});
				RootedConnection = Roact_upvr.createElement(RootedConnection_upvr, {
					render = function(arg1_4) -- Line 110, Named "render"
						--[[ Upvalues[9]:
							[1]: Roact_upvr (copied, readonly)
							[2]: FocusHandler_upvr (copied, readonly)
							[3]: props_upvr (copied, readonly)
							[4]: arg1 (copied, readonly)
							[5]: GuiService_upvr (copied, readonly)
							[6]: Button_upvr (copied, readonly)
							[7]: ButtonType_upvr (copied, readonly)
							[8]: arg1_3 (readonly)
							[9]: ControlState_upvr (copied, readonly)
						]]
						-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
						local module_2 = {}
						local canCaptureFocus = props_upvr.canCaptureFocus
						if canCaptureFocus then
							canCaptureFocus = arg1.state.buttonIsInitialized
							if canCaptureFocus then
								canCaptureFocus = arg1_4
							end
						end
						module_2.isFocused = canCaptureFocus
						function module_2.didFocus() -- Line 114
							--[[ Upvalues[2]:
								[1]: GuiService_upvr (copied, readonly)
								[2]: arg1 (copied, readonly)
							]]
							GuiService_upvr.SelectedCoreObject = arg1.buttonRef:getValue()
						end
						local module = {}
						local function INLINED_2() -- Internal function, doesn't exist in bytecode
							function tbl_3.onStateChanged(arg1_6, arg2) -- Line 126
								--[[ Upvalues[2]:
									[1]: arg1 (copied, readonly)
									[2]: ControlState_upvr (copied, readonly)
								]]
								if not arg1.state.buttonIsInitialized and arg2 ~= ControlState_upvr.Initialize then
									arg1:setState({
										buttonIsInitialized = true;
									})
								end
							end
							tbl_3.buttonRef = arg1.buttonRef
							tbl_3.onActivated = props_upvr.switchToPlayers
							tbl_3.text = arg1_3.makeFriendsNow
							tbl_3.size = UDim2.new(1, 0, 0, 48)
							tbl_3.layoutOrder = 3
							tbl_3.buttonType = ButtonType_upvr.Secondary
							local tbl_3 = {}
							return Roact_upvr.createElement(Button_upvr, tbl_3)
						end
						if not arg1_4 or not INLINED_2() then
						end
						module.MakeFriendsButton = nil
						return Roact_upvr.createElement(FocusHandler_upvr, module_2, module)
					end;
				});
				MakeFriendsButton = Roact_upvr.createElement(Button_upvr, {
					buttonType = ButtonType_upvr.Secondary;
					layoutOrder = 3;
					size = UDim2.new(1, 0, 0, 48);
					text = arg1_3.makeFriendsNow;
					onActivated = props_upvr.switchToPlayers;
				});
			})
		end)
	end)
end
any_extend_result1.render = render
local SetCurrentPage_upvr = require(Parent.Actions.SetCurrentPage)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(nil, function(arg1) -- Line 154
	--[[ Upvalues[1]:
		[1]: SetCurrentPage_upvr (readonly)
	]]
	return {
		switchToPlayers = function() -- Line 156, Named "switchToPlayers"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetCurrentPage_upvr (copied, readonly)
			]]
			arg1(SetCurrentPage_upvr("Players"))
		end;
	}
end)(any_extend_result1)