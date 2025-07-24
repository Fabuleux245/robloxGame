-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:33
-- Luau version 6, Types version 3
-- Time taken: 0.002453 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local any_extend_result1 = Roact_upvr.PureComponent:extend("IGMMainPageControllerBar")
any_extend_result1.validateProps = t.strictInterface({
	canCaptureFocus = t.boolean;
	isMainPageMoreMenuOpen = t.boolean;
})
local withLocalization_upvr = require(script.Parent.Parent.Localization.withLocalization)
local VRService_upvr = game:GetService("VRService")
local IGMControllerBar2_upvr = require(script.Parent.IGMControllerBar2)
function any_extend_result1.render(arg1) -- Line 19
	--[[ Upvalues[4]:
		[1]: withLocalization_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: IGMControllerBar2_upvr (readonly)
	]]
	if arg1.props.canCaptureFocus then
		return withLocalization_upvr({
			openMoreMenu = "CoreScripts.InGameMenu.ControllerBar.OpenMoreMenu";
			closeMoreMenu = "CoreScripts.InGameMenu.ControllerBar.CloseMoreMenu";
			back = "CoreScripts.InGameMenu.ControllerBar.Back";
			respawnCharacter = "CoreScripts.InGameMenu.ControllerBar.RespawnCharacter";
			leave = "CoreScripts.InGameMenu.ControllerBar.Leave";
		})(function(arg1_2) -- Line 27
			--[[ Upvalues[4]:
				[1]: VRService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: IGMControllerBar2_upvr (copied, readonly)
			]]
			local var11
			local var12
			if not VRService_upvr.VREnabled then
				local tbl = {}
				local tbl_3 = {}
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var12 = arg1_2.closeMoreMenu
					return var12
				end
				if not arg1.props.isMainPageMoreMenuOpen or not INLINED() then
					var12 = arg1_2.openMoreMenu
				end
				tbl_3.text = var12
				var12 = Enum.KeyCode.ButtonL3
				tbl_3.keyCode = var12
				var12 = {}
				var12.text = arg1_2.respawnCharacter
				var12.keyCode = Enum.KeyCode.ButtonY
				tbl[1] = tbl_3
				tbl[2] = var12
				tbl[3] = {
					text = arg1_2.leave;
					keyCode = Enum.KeyCode.ButtonX;
				}
				var11 = tbl
			else
				local tbl_2 = {}
				local tbl_4 = {}
				var12 = arg1_2.respawnCharacter
				tbl_4.text = var12
				var12 = Enum.KeyCode.ButtonY
				tbl_4.keyCode = var12
				var12 = {}
				var12.text = arg1_2.leave
				var12.keyCode = Enum.KeyCode.ButtonX
				tbl_2[1] = tbl_4
				tbl_2[2] = var12
				var11 = tbl_2
			end
			return Roact_upvr.createElement(IGMControllerBar2_upvr, {
				leftHint = {
					text = arg1_2.back;
					keyCode = Enum.KeyCode.ButtonB;
				};
				rightHints = var11;
			})
		end)
	end
	return nil
end
return any_extend_result1