-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:16
-- Luau version 6, Types version 3
-- Time taken: 0.002574 seconds

local Parent_3 = script.Parent
local Parent = Parent_3.Parent.Parent
local Style = Parent.App.Style
local Roact_upvr = require(Parent.Parent.Roact)
local t = require(Parent.Parent.t)
local Themes_upvr = require(Style.Themes)
local Parent_2 = Parent.Parent
local any_extend_result1 = Roact_upvr.Component:extend("StyleProvider")
any_extend_result1.validateProps = t.strictInterface({
	style = t.optional(require(Style.Validator.validateStyle));
	derivedValues = t.optional(t.table);
	[Roact_upvr.Children] = t.table;
})
local tbl_upvr = {
	Theme = Themes_upvr.DarkTheme;
	Font = require(Style.Fonts.Gotham);
}
local tbl_3 = {
	PreferredTransparency = 1;
}
local var12 = false
tbl_3.ReducedMotion = var12
if require(Parent_2.UIBlox.Core.Utility.GetEngineFeatureSafe)("EnablePreferredTextSizeSetting") then
	var12 = Enum.PreferredTextSize.Medium
else
	var12 = nil
end
tbl_3.PreferredTextSize = var12
tbl_3.Scale = 1
tbl_upvr.Settings = tbl_3
local tbl_2_upvr = {
	textSizeOffset = 0;
}
function any_extend_result1.init(arg1) -- Line 53
	arg1:setState({
		style = arg1.props.style;
		derivedValues = arg1.props.derivedValues;
	})
end
local getTextSizeOffset_upvr = require(Parent.Utility.getTextSizeOffset)
function any_extend_result1.updateTextSizeOffset(arg1, arg2) -- Line 62
	--[[ Upvalues[1]:
		[1]: getTextSizeOffset_upvr (readonly)
	]]
	local var15_result1, var15_result2 = getTextSizeOffset_upvr(arg2)
	if var15_result1 then
		arg1:setState({
			derivedValues = {
				textSizeOffset = var15_result2;
			};
		})
	end
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 73
	if arg3.style and arg3.style.Settings.PreferredTextSize ~= arg1.state.style.Settings.PreferredTextSize then
		arg1:updateTextSizeOffset(arg1.state.style.Font.Body.Font)
	end
end
local Object_upvr = require(Parent_2.LuauPolyfill).Object
local getTokens_upvr = require(Style.Tokens).getTokens
local Constants_upvr = require(Style.Constants)
local StyleContext_upvr = require(Parent_3.StyleContext)
function any_extend_result1.render(arg1) -- Line 82
	--[[ Upvalues[8]:
		[1]: Object_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: getTokens_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: Themes_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: StyleContext_upvr (readonly)
	]]
	local any_assign_result1 = Object_upvr.assign({}, tbl_upvr, arg1.state.style)
	if any_assign_result1.Tokens == nil then
		local var25 = Constants_upvr
		if any_assign_result1.Theme == Themes_upvr.LightTheme then
			var25 = Constants_upvr.ThemeName.Light
		else
			var25 = Constants_upvr.ThemeName.Dark
		end
		any_assign_result1.Tokens = getTokens_upvr(var25.DefaultDeviceType, var25, any_assign_result1.Settings.Scale)
	end
	return Roact_upvr.createElement(StyleContext_upvr.Provider, {
		value = {
			style = any_assign_result1;
			update = function(arg1_2, arg2) -- Line 97, Named "update"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.mounted then
					local tbl = {}
					tbl.style = arg2
					arg1:setState(tbl)
				end
			end;
			derivedValues = Object_upvr.assign({}, tbl_2_upvr, arg1.state.derivedValues);
		};
	}, Roact_upvr.oneChild(arg1.props[Roact_upvr.Children]))
end
function any_extend_result1.didMount(arg1) -- Line 110
	arg1.mounted = true
end
function any_extend_result1.willUnmount(arg1) -- Line 114
	arg1.mounted = false
end
return any_extend_result1