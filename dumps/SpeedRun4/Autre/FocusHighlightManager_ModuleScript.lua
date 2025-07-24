-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:07
-- Luau version 6, Types version 3
-- Time taken: 0.001384 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("FocusHighlightManager")
any_extend_result1.validateProps = t.strictInterface({
	menuOpen = t.boolean;
	inputType = t.string;
})
local GetFFlagIGMGamepadSelectionHistory_upvr = require(Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
local FocusHandler_upvr = require(script.Parent.FocusHandler)
local InputType_upvr = require(Parent.Resources.Constants).InputType
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1.render(arg1) -- Line 22
	--[[ Upvalues[5]:
		[1]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FocusHandler_upvr (readonly)
		[4]: InputType_upvr (readonly)
		[5]: GuiService_upvr (readonly)
	]]
	if GetFFlagIGMGamepadSelectionHistory_upvr() then
		local module = {}
		local var12 = not arg1.props.menuOpen
		if not var12 then
			if arg1.props.inputType == InputType_upvr.Gamepad then
				var12 = false
			else
				var12 = true
			end
		end
		module.isFocused = var12
		local function didFocus() -- Line 26
			--[[ Upvalues[1]:
				[1]: GuiService_upvr (copied, readonly)
			]]
			GuiService_upvr.SelectedCoreObject = nil
		end
		module.didFocus = didFocus
		return Roact_upvr.createElement(FocusHandler_upvr, module)
	end
	local module_2 = {}
	didFocus = arg1.props.menuOpen
	local var14 = didFocus
	if var14 then
		if arg1.props.inputType ~= InputType_upvr.Gamepad then
			var14 = false
		else
			var14 = true
		end
	end
	module_2.isFocused = var14
	function module_2.didBlur() -- Line 33
		--[[ Upvalues[1]:
			[1]: GuiService_upvr (copied, readonly)
		]]
		GuiService_upvr.SelectedCoreObject = nil
	end
	return Roact_upvr.createElement(FocusHandler_upvr, module_2)
end
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1) -- Line 40
	return {
		menuOpen = arg1.isMenuOpen;
		inputType = arg1.displayOptions.inputType;
	}
end)(any_extend_result1)