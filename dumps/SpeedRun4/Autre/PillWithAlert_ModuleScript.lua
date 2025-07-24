-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:10
-- Luau version 6, Types version 3
-- Time taken: 0.003524 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").dependencies)
local Roact_upvr = dependencies.Roact
local t = dependencies.t
local UIBlox = dependencies.UIBlox
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
local function var6_upvr(arg1, arg2, arg3) -- Line 28
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	local var7 = arg1[arg2]
	if not var7 then
		var7 = arg1[ControlState_upvr.Default]
	end
	local module = {
		Color = arg3.Theme[var7].Color;
		Transparency = arg3.Theme[var7].Transparency;
	}
	if arg2 == ControlState_upvr.Disabled or arg2 == ControlState_upvr.Pressed then
		module.Transparency = 0.5 * module.Transparency + 0.5
	end
	return module
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("Pill")
any_extend_result1.validateProps = t.strictInterface({
	text = t.optional(t.string);
	isSelected = t.optional(t.boolean);
	isDisabled = t.optional(t.boolean);
	isLoading = t.optional(t.boolean);
	icon = t.union(t.string, UIBlox.Core.ImageSet.Validator.validateImage);
	onActivated = t.callback;
})
function any_extend_result1.init(arg1) -- Line 56
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	arg1.state = {
		controlState = ControlState_upvr.Initialize;
	}
	function arg1.onStateChanged(arg1_2, arg2) -- Line 61
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_2 = {}
		tbl_2.controlState = arg2
		arg1:setState(tbl_2)
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local getIconSize_upvr = UIBlox.App.ImageSet.getIconSize
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local TextService_upvr = dependencies.TextService
local Interactable_upvr = UIBlox.Core.Control.Interactable
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local Badge_upvr = UIBlox.App.Indicator.Badge
local BadgeStates_upvr = UIBlox.App.Indicator.Enum.BadgeStates
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
function any_extend_result1.render(arg1) -- Line 68
	--[[ Upvalues[13]:
		[1]: withStyle_upvr (readonly)
		[2]: ControlState_upvr (readonly)
		[3]: var6_upvr (readonly)
		[4]: getIconSize_upvr (readonly)
		[5]: IconSize_upvr (readonly)
		[6]: TextService_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: Interactable_upvr (readonly)
		[9]: ImageSetLabel_upvr (readonly)
		[10]: StyledTextLabel_upvr (readonly)
		[11]: Badge_upvr (readonly)
		[12]: BadgeStates_upvr (readonly)
		[13]: ShimmerPanel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 69
		--[[ Upvalues[13]:
			[1]: arg1 (readonly)
			[2]: ControlState_upvr (copied, readonly)
			[3]: var6_upvr (copied, readonly)
			[4]: getIconSize_upvr (copied, readonly)
			[5]: IconSize_upvr (copied, readonly)
			[6]: TextService_upvr (copied, readonly)
			[7]: Roact_upvr (copied, readonly)
			[8]: Interactable_upvr (copied, readonly)
			[9]: ImageSetLabel_upvr (copied, readonly)
			[10]: StyledTextLabel_upvr (copied, readonly)
			[11]: Badge_upvr (copied, readonly)
			[12]: BadgeStates_upvr (copied, readonly)
			[13]: ShimmerPanel_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 55 start (CF ANALYSIS FAILED)
		local isSelected = arg1.props.isSelected
		local tbl = {}
		local var27 = ControlState_upvr
		if isSelected then
			var27 = "SystemPrimaryContent"
		else
			var27 = "IconDefault"
		end
		tbl[var27.Default] = var27
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