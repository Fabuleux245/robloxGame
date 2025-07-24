-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:45
-- Luau version 6, Types version 3
-- Time taken: 0.001079 seconds

local InExperienceIntervention = script:FindFirstAncestor("InExperienceIntervention")
local Parent = InExperienceIntervention.Parent
local React_upvr = require(Parent.React)
local InExperienceInterventionUIStateReducer_upvr = require(InExperienceIntervention.Reducers.InExperienceInterventionUIStateReducer)
local Constants_upvr = require(InExperienceIntervention.Utils.Constants)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Cryo_upvr = require(Parent.Cryo)
local InExperienceInterventionEventReceiver_upvr = require(InExperienceIntervention.InExperienceInterventionEventReceiver)
local InExperienceInterventionDialogManager_upvr = require(InExperienceIntervention.InExperienceInterventionDialogManager)
function InExperienceInterventionContainer() -- Line 12
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: InExperienceInterventionUIStateReducer_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: InExperienceInterventionEventReceiver_upvr (readonly)
		[7]: InExperienceInterventionDialogManager_upvr (readonly)
	]]
	local any_useReducer_result1, any_useReducer_result2_upvr = React_upvr.useReducer(InExperienceInterventionUIStateReducer_upvr, Constants_upvr.InitialUIState)
	local any_useCallback_result1 = React_upvr.useCallback(function(arg1) -- Line 17
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: any_useReducer_result2_upvr (readonly)
		]]
		any_useReducer_result2_upvr(Cryo_upvr.Dictionary.join(arg1, {
			dispatchTimestamp = DateTime.now().UnixTimestamp;
		}))
	end, {any_useReducer_result2_upvr})
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, {
		EventReceiver = React_upvr.createElement(InExperienceInterventionEventReceiver_upvr, {
			uiStateDispatch = any_useCallback_result1;
			localizedText = useLocalization_upvr(Constants_upvr.localizationKeys);
		});
		DialogManager = React_upvr.createElement(InExperienceInterventionDialogManager_upvr, {
			uiState = any_useReducer_result1;
			uiStateDispatch = any_useCallback_result1;
		});
	})
end
return InExperienceInterventionContainer