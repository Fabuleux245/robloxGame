-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:32
-- Luau version 6, Types version 3
-- Time taken: 0.002908 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact_upvr = InGameMenuDependencies.Roact
local Constants_upvr = require(script.Parent.Parent.Resources.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("IGMControllerBar")
local module_upvr = {
	cancel = "CoreScripts.InGameMenu.ControllerBar.Cancel";
	respawn = "CoreScripts.InGameMenu.ControllerBar.Respawn";
	openMoreMenu = "CoreScripts.InGameMenu.ControllerBar.OpenMoreMenu";
	closeMoreMenu = "CoreScripts.InGameMenu.ControllerBar.CloseMoreMenu";
	back = "CoreScripts.InGameMenu.ControllerBar.Back";
	respawnCharacter = "CoreScripts.InGameMenu.ControllerBar.RespawnCharacter";
	leave = "CoreScripts.InGameMenu.ControllerBar.Leave";
}
any_extend_result1.validateProps = t.strictInterface({
	isMenuOpen = t.boolean;
	isMainPageMoreMenuOpen = t.boolean;
	currentPage = t.string;
	respawnDialogOpen = t.boolean;
	inputType = t.string;
	screenSize = t.Vector2;
	setControllerBarHeight = t.callback;
})
function any_extend_result1.didMount(arg1) -- Line 39
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	if arg1:getHints(module_upvr) then
		arg1.props.setControllerBarHeight(Constants_upvr.ControllerBarHeight)
	else
		arg1.props.setControllerBarHeight(0)
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 48
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	if arg1:getHints(module_upvr) then
		arg1.props.setControllerBarHeight(Constants_upvr.ControllerBarHeight)
	else
		arg1.props.setControllerBarHeight(0)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 57
	arg1.props.setControllerBarHeight(0)
end
function any_extend_result1.getHints(arg1, arg2) -- Line 61
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if arg1.props.inputType == Constants_upvr.InputType.Gamepad then
		if arg1.props.respawnDialogOpen then
			return {
				leftHint = {
					text = arg2.cancel;
					keyCode = Enum.KeyCode.ButtonB;
				};
				rightHints = {{
					text = arg2.respawn;
					keyCode = Enum.KeyCode.ButtonA;
				}};
			}
		end
		if arg1.props.isMenuOpen and arg1.props.currentPage == "MainPage" then
			local var13
			if not arg1.props.isMainPageMoreMenuOpen then
				var13 = arg2.openMoreMenu
			else
				var13 = arg2.closeMoreMenu
			end
			return {
				leftHint = {
					text = arg2.back;
					keyCode = Enum.KeyCode.ButtonB;
				};
				rightHints = {{
					text = var13;
					keyCode = Enum.KeyCode.ButtonL3;
				}, {
					text = arg2.respawnCharacter;
					keyCode = Enum.KeyCode.ButtonY;
				}, {
					text = arg2.leave;
					keyCode = Enum.KeyCode.ButtonX;
				}};
			}
		end
	end
	return nil
end
local withLocalization_upvr = require(script.Parent.Parent.Localization.withLocalization)
local ControllerBar_upvr = require(CorePackages.Packages.UIBlox).App.Bar.ControllerBar
function any_extend_result1.render(arg1) -- Line 111
	--[[ Upvalues[4]:
		[1]: withLocalization_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ControllerBar_upvr (readonly)
	]]
	return withLocalization_upvr(module_upvr)(function(arg1_2) -- Line 112
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: ControllerBar_upvr (copied, readonly)
		]]
		local any_getHints_result1 = arg1:getHints(arg1_2)
		if any_getHints_result1 then
			return Roact_upvr.createElement(ControllerBar_upvr, any_getHints_result1)
		end
		return nil
	end)
end
local SetControllerBarHeight_upvr = require(script.Parent.Parent.Actions.SetControllerBarHeight)
return InGameMenuDependencies.RoactRodux.connect(function(arg1, arg2) -- Line 122, Named "mapStateToProps"
	return {
		isMenuOpen = arg1.isMenuOpen;
		isMainPageMoreMenuOpen = arg1.isMainPageMoreMenuOpen;
		currentPage = arg1.menuPage;
		respawnDialogOpen = arg1.respawn.dialogOpen;
		inputType = arg1.displayOptions.inputType;
		screenSize = arg1.screenSize;
	}
end, function(arg1) -- Line 133
	--[[ Upvalues[1]:
		[1]: SetControllerBarHeight_upvr (readonly)
	]]
	return {
		setControllerBarHeight = function(arg1_3) -- Line 135, Named "setControllerBarHeight"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetControllerBarHeight_upvr (copied, readonly)
			]]
			arg1(SetControllerBarHeight_upvr(arg1_3))
		end;
	}
end)(any_extend_result1)