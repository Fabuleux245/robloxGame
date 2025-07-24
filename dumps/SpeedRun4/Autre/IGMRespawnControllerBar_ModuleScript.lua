-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:34
-- Luau version 6, Types version 3
-- Time taken: 0.001021 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("IGMRespawnControllerBar")
any_extend_result1.validateProps = t.strictInterface({
	inputType = t.string;
})
local Constants_upvr = require(Parent.Resources.Constants)
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local IGMControllerBar2_upvr = require(script.Parent.IGMControllerBar2)
function any_extend_result1.render(arg1) -- Line 18
	--[[ Upvalues[4]:
		[1]: Constants_upvr (readonly)
		[2]: withLocalization_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: IGMControllerBar2_upvr (readonly)
	]]
	if arg1.props.inputType == Constants_upvr.InputType.Gamepad then
		return withLocalization_upvr({
			cancel = "CoreScripts.InGameMenu.ControllerBar.Cancel";
			respawn = "CoreScripts.InGameMenu.ControllerBar.Respawn";
		})(function(arg1_2) -- Line 23
			--[[ Upvalues[2]:
				[1]: Roact_upvr (copied, readonly)
				[2]: IGMControllerBar2_upvr (copied, readonly)
			]]
			return Roact_upvr.createElement(IGMControllerBar2_upvr, {
				leftHint = {
					text = arg1_2.cancel;
					keyCode = Enum.KeyCode.ButtonB;
				};
				rightHints = {{
					text = arg1_2.respawn;
					keyCode = Enum.KeyCode.ButtonA;
				}};
			})
		end)
	end
	return nil
end
return any_extend_result1