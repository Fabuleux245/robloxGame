-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:57
-- Luau version 6, Types version 3
-- Time taken: 0.001589 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local React_upvr = require(Parent.React)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local SquadPrompt_upvr = require(script.Parent.SquadPrompt)
local FFlagProvideArgsForInExperienceOverlay_upvr = require(SquadsCore.Flags.FFlagProvideArgsForInExperienceOverlay)
function SquadOverlay() -- Line 17
	--[[ Upvalues[5]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: SquadPrompt_upvr (readonly)
		[5]: FFlagProvideArgsForInExperienceOverlay_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var3_result1 = useTokens_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(Vector2.new(0, 0))
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1) -- Line 21
		return arg1.Squad.SquadPrompt.arguments
	end)
	local module = {}
	local tbl = {
		AutoButtonColor = false;
		BackgroundColor3 = var3_result1.Color.Extended.Black.Black_70.Color3;
		BackgroundTransparency = var3_result1.Color.Extended.Black.Black_70.Transparency;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0);
	}
	local var17 = ""
	tbl.Text = var17
	module.Overlay = React_upvr.createElement("TextButton", tbl)
	local tbl_2 = {}
	if FFlagProvideArgsForInExperienceOverlay_upvr then
		var17 = useSelector_upvr_result1.bodyTextLocalizationProps
	else
		var17 = nil
	end
	tbl_2.bodyTextLocalizationProps = var17
	if FFlagProvideArgsForInExperienceOverlay_upvr then
		var17 = useSelector_upvr_result1.hideCancelButton
		-- KONSTANTWARNING: GOTO [111] #78
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [110] 77. Error Block 22 start (CF ANALYSIS FAILED)
	var17 = nil
	tbl_2.hideCancelButton = var17
	if FFlagProvideArgsForInExperienceOverlay_upvr then
		var17 = useSelector_upvr_result1.onCancel
	else
		var17 = nil
	end
	tbl_2.onCancel = var17
	var17 = useSelector_upvr_result1.onConfirm
	tbl_2.onConfirm = var17
	var17 = useSelector_upvr_result1.promptType
	tbl_2.promptType = var17
	tbl_2.screenSize = any_useState_result1
	module.SquadPrompt = React_upvr.createElement(SquadPrompt_upvr, tbl_2)
	do
		return React_upvr.createElement("ScreenGui", {
			Enabled = true;
			IgnoreGuiInset = true;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
			DisplayOrder = 12;
			[React_upvr.Change.AbsoluteSize] = function(arg1) -- Line 30
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (readonly)
				]]
				any_useState_result2_upvr(arg1.AbsoluteSize)
			end;
		}, module)
	end
	-- KONSTANTERROR: [110] 77. Error Block 22 end (CF ANALYSIS FAILED)
end
return SquadOverlay