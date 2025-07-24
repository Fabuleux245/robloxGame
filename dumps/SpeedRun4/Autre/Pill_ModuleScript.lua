-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:20
-- Luau version 6, Types version 3
-- Time taken: 0.003134 seconds

local Parent_3 = script.Parent.Parent.Parent
local Parent = Parent_3.Parent
local Parent_2 = Parent.Parent
local Core = Parent.Core
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local any_extend_result1 = Roact_upvr.PureComponent:extend("Pill")
any_extend_result1.validateProps = t.strictInterface({
	text = t.optional(t.string);
	isSelected = t.optional(t.boolean);
	isDisabled = t.optional(t.boolean);
	isLoading = t.optional(t.boolean);
	icon = t.union(t.string, require(Core.ImageSet.Validator.validateImageSetData));
	onActivated = t.callback;
})
any_extend_result1.defaultProps = {
	text = "";
	isSelected = false;
	isDisabled = false;
	isLoading = false;
}
function any_extend_result1.init(arg1) -- Line 53
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	arg1.state = {
		controlState = ControlState_upvr.Initialize;
	}
end
local withStyle_upvr = require(Core.Style.withStyle)
local getContentStyle_upvr = require(Core.Button.getContentStyle)
local getIconSize_upvr = require(Parent_3.ImageSet.getIconSize)
local IconSize_upvr = require(Parent_3.ImageSet.Enum.IconSize)
local GetTextSize_upvr = require(Parent.Core.Text.GetTextSize)
local Interactable_upvr = require(Core.Control.Interactable)
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
local GenericTextLabel_upvr = require(Core.Text.GenericTextLabel.GenericTextLabel)
local ShimmerPanel_upvr = require(Parent.App.Loading.ShimmerPanel)
function any_extend_result1.render(arg1) -- Line 59
	--[[ Upvalues[11]:
		[1]: withStyle_upvr (readonly)
		[2]: ControlState_upvr (readonly)
		[3]: getContentStyle_upvr (readonly)
		[4]: getIconSize_upvr (readonly)
		[5]: IconSize_upvr (readonly)
		[6]: GetTextSize_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: Interactable_upvr (readonly)
		[9]: ImageSetComponent_upvr (readonly)
		[10]: GenericTextLabel_upvr (readonly)
		[11]: ShimmerPanel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 60
		--[[ Upvalues[11]:
			[1]: arg1 (readonly)
			[2]: ControlState_upvr (copied, readonly)
			[3]: getContentStyle_upvr (copied, readonly)
			[4]: getIconSize_upvr (copied, readonly)
			[5]: IconSize_upvr (copied, readonly)
			[6]: GetTextSize_upvr (copied, readonly)
			[7]: Roact_upvr (copied, readonly)
			[8]: Interactable_upvr (copied, readonly)
			[9]: ImageSetComponent_upvr (copied, readonly)
			[10]: GenericTextLabel_upvr (copied, readonly)
			[11]: ShimmerPanel_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 55 start (CF ANALYSIS FAILED)
		local isSelected = arg1.props.isSelected
		local tbl = {}
		local var24 = ControlState_upvr
		if isSelected then
			var24 = "SystemPrimaryContent"
		else
			var24 = "IconDefault"
		end
		tbl[var24.Default] = var24
		if isSelected then
			-- KONSTANTWARNING: GOTO [49] #34
		end
		-- KONSTANTERROR: [0] 1. Error Block 55 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [48] 33. Error Block 60 start (CF ANALYSIS FAILED)
		tbl[ControlState_upvr.Hover] = "IconEmphasis"
		if isSelected then
			-- KONSTANTWARNING: GOTO [59] #42
		end
		-- KONSTANTERROR: [48] 33. Error Block 60 end (CF ANALYSIS FAILED)
	end)
end
return any_extend_result1