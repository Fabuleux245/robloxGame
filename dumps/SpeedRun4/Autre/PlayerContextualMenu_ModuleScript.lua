-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:50
-- Luau version 6, Types version 3
-- Time taken: 0.004142 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerContextualMenu")
any_extend_result1.validateProps = t.strictInterface({
	moreActions = t.table;
	actionWidth = t.number;
	xOffset = t.number;
	yOffset = t.number;
	onClose = t.callback;
	canCaptureFocus = t.boolean;
})
function any_extend_result1.init(arg1) -- Line 36
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.firstOptionRef = Roact_upvr.createRef()
	arg1.containerRef = Roact_upvr.createRef()
end
local FocusHandler_upvr = require(script.Parent.Connection.FocusHandler)
local ContextActionService_upvr = game:GetService("ContextActionService")
local GuiService_upvr = game:GetService("GuiService")
local GetFFlagIGMGamepadSelectionHistory_upvr = require(script.Parent.Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
function any_extend_result1.renderContextualMenuFocusHandler(arg1, arg2, arg3) -- Line 41
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: FocusHandler_upvr (readonly)
		[3]: ContextActionService_upvr (readonly)
		[4]: GuiService_upvr (readonly)
		[5]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
	]]
	return Roact_upvr.createElement(FocusHandler_upvr, {
		isFocused = arg1.props.canCaptureFocus and arg2;
		didFocus = function(arg1_2) -- Line 47, Named "didFocus"
			--[[ Upvalues[4]:
				[1]: ContextActionService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: GuiService_upvr (copied, readonly)
				[4]: GetFFlagIGMGamepadSelectionHistory_upvr (copied, readonly)
			]]
			ContextActionService_upvr:BindCoreAction("player_contextual_menu_close_action", function(arg1_3, arg2_2) -- Line 48
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg2_2 == Enum.UserInputState.End and arg1.props.onClose then
					arg1.props.onClose()
					return Enum.ContextActionResult.Sink
				end
				return Enum.ContextActionResult.Pass
			end, false, Enum.KeyCode.ButtonB)
			GuiService_upvr:RemoveSelectionGroup("player_contextual_menu_selection_parent")
			GuiService_upvr:AddSelectionParent("player_contextual_menu_selection_parent", arg1.containerRef:getValue())
			if GetFFlagIGMGamepadSelectionHistory_upvr() then
				local var12 = arg1_2
				if not var12 then
					var12 = arg1.firstOptionRef:getValue()
				end
				GuiService_upvr.SelectedCoreObject = var12
			else
				GuiService_upvr.SelectedCoreObject = arg1.firstOptionRef:getValue()
			end
		end;
		didBlur = function() -- Line 68, Named "didBlur"
			--[[ Upvalues[1]:
				[1]: ContextActionService_upvr (copied, readonly)
			]]
			ContextActionService_upvr:UnbindCoreAction("player_contextual_menu_close_action")
		end;
	}, arg3)
end
local CoreGui_upvr = game:GetService("CoreGui")
local RootedConnection_upvr = require(script.Parent.Connection.RootedConnection)
local BaseMenu_upvr = InGameMenuDependencies.UIBlox.App.Menu.BaseMenu
local function render(arg1) -- Line 74
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: RootedConnection_upvr (readonly)
		[4]: BaseMenu_upvr (readonly)
	]]
	return Roact_upvr.createElement(Roact_upvr.Portal, {
		target = CoreGui_upvr;
	}, {
		InGameMenuContextGui = Roact_upvr.createElement("ScreenGui", {
			DisplayOrder = 2;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		}, {
			RootedConnection = Roact_upvr.createElement(RootedConnection_upvr, {
				render = function(arg1_4) -- Line 84, Named "render"
					--[[ Upvalues[3]:
						[1]: arg1 (readonly)
						[2]: Roact_upvr (copied, readonly)
						[3]: BaseMenu_upvr (copied, readonly)
					]]
					return arg1:renderContextualMenuFocusHandler(arg1_4, {
						MoreActionsMenu = Roact_upvr.createElement("Frame", {
							Size = UDim2.fromScale(1, 1);
							BackgroundTransparency = 1;
							[Roact_upvr.Ref] = arg1.containerRef;
						}, {
							BaseMenu = Roact_upvr.createElement(BaseMenu_upvr, {
								buttonProps = arg1.props.moreActions;
								setFirstItemRef = arg1.firstOptionRef;
								width = UDim.new(0, arg1.props.actionWidth);
								position = UDim2.fromOffset(arg1.props.xOffset, arg1.props.yOffset);
							});
						});
					})
				end;
			});
		});
	})
end
any_extend_result1.render = render
return any_extend_result1