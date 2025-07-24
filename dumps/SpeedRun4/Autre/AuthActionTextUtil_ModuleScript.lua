-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:13
-- Luau version 6, Types version 3
-- Time taken: 0.003497 seconds

local IXPService_upvr = game:GetService("IXPService")
local Parent = script:FindFirstAncestor("AuthCommon").Parent
local FFlagEnableNewAuthActionTextExperiment_upvr = require(Parent.SharedFlags).FFlagEnableNewAuthActionTextExperiment
local FStringNewAuthActionTextIXPLayer_upvr = require(Parent.SharedFlags).FStringNewAuthActionTextIXPLayer
local module = {}
local function _() -- Line 11, Named "isNewAuthActionTextEnabled"
	--[[ Upvalues[3]:
		[1]: FFlagEnableNewAuthActionTextExperiment_upvr (readonly)
		[2]: IXPService_upvr (readonly)
		[3]: FStringNewAuthActionTextIXPLayer_upvr (readonly)
	]]
	if not FFlagEnableNewAuthActionTextExperiment_upvr then
		return false
	end
	local pcall_result1_4, pcall_result2_2 = pcall(function() -- Line 16
		--[[ Upvalues[2]:
			[1]: IXPService_upvr (copied, readonly)
			[2]: FStringNewAuthActionTextIXPLayer_upvr (copied, readonly)
		]]
		return IXPService_upvr:GetBrowserTrackerLayerVariables(FStringNewAuthActionTextIXPLayer_upvr)
	end)
	if pcall_result1_4 then
		return pcall_result2_2.enableTextChange or false
	end
	return false
end
function module.getLogInLabelText() -- Line 27
	--[[ Upvalues[3]:
		[1]: FFlagEnableNewAuthActionTextExperiment_upvr (readonly)
		[2]: IXPService_upvr (readonly)
		[3]: FStringNewAuthActionTextIXPLayer_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
	local var9
	if not FFlagEnableNewAuthActionTextExperiment_upvr then
		var9 = false
		-- KONSTANTWARNING: GOTO [16] #15
	end
	-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 15 start (CF ANALYSIS FAILED)
	local pcall_result1, pcall_result2_5 = pcall(function() -- Line 16
		--[[ Upvalues[2]:
			[1]: IXPService_upvr (copied, readonly)
			[2]: FStringNewAuthActionTextIXPLayer_upvr (copied, readonly)
		]]
		return IXPService_upvr:GetBrowserTrackerLayerVariables(FStringNewAuthActionTextIXPLayer_upvr)
	end)
	if pcall_result1 then
		var9 = pcall_result2_5.enableTextChange or false
	else
		var9 = false
	end
	if var9 then
		var9 = "Authentication.Login.Action.SignIn"
		return var9
	end
	var9 = "Authentication.Login.Action.LogInCapitalized"
	do
		return var9
	end
	-- KONSTANTERROR: [4] 5. Error Block 15 end (CF ANALYSIS FAILED)
end
function module.getSignUpLabelText() -- Line 35
	--[[ Upvalues[3]:
		[1]: FFlagEnableNewAuthActionTextExperiment_upvr (readonly)
		[2]: IXPService_upvr (readonly)
		[3]: FStringNewAuthActionTextIXPLayer_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
	local var13
	if not FFlagEnableNewAuthActionTextExperiment_upvr then
		var13 = false
		-- KONSTANTWARNING: GOTO [16] #15
	end
	-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 15 start (CF ANALYSIS FAILED)
	local pcall_result1_5, pcall_result2_3 = pcall(function() -- Line 16
		--[[ Upvalues[2]:
			[1]: IXPService_upvr (copied, readonly)
			[2]: FStringNewAuthActionTextIXPLayer_upvr (copied, readonly)
		]]
		return IXPService_upvr:GetBrowserTrackerLayerVariables(FStringNewAuthActionTextIXPLayer_upvr)
	end)
	if pcall_result1_5 then
		var13 = pcall_result2_3.enableTextChange or false
	else
		var13 = false
	end
	if var13 then
		var13 = "Authentication.SignUp.Action.CreateAccount"
		return var13
	end
	var13 = "Authentication.SignUp.Label.SignUp"
	do
		return var13
	end
	-- KONSTANTERROR: [4] 5. Error Block 15 end (CF ANALYSIS FAILED)
end
function module.getQuickSignInLabelText() -- Line 43
	--[[ Upvalues[3]:
		[1]: FFlagEnableNewAuthActionTextExperiment_upvr (readonly)
		[2]: IXPService_upvr (readonly)
		[3]: FStringNewAuthActionTextIXPLayer_upvr (readonly)
	]]
	local var17
	if not FFlagEnableNewAuthActionTextExperiment_upvr then
		var17 = false
	else
		local pcall_result1_2, pcall_result2_4 = pcall(function() -- Line 16
			--[[ Upvalues[2]:
				[1]: IXPService_upvr (copied, readonly)
				[2]: FStringNewAuthActionTextIXPLayer_upvr (copied, readonly)
			]]
			return IXPService_upvr:GetBrowserTrackerLayerVariables(FStringNewAuthActionTextIXPLayer_upvr)
		end)
		if pcall_result1_2 then
			var17 = pcall_result2_4.enableTextChange or false
		else
			var17 = false
		end
	end
	if var17 then
		var17 = "Authentication.CrossDevice.Heading.QuickLogin"
		return var17
	end
	var17 = "Authentication.CrossDevice.Action.LoginWithDevice"
	return var17
end
function module.getSignUpVerificationSingleStepParagraphText() -- Line 51
	--[[ Upvalues[3]:
		[1]: FFlagEnableNewAuthActionTextExperiment_upvr (readonly)
		[2]: IXPService_upvr (readonly)
		[3]: FStringNewAuthActionTextIXPLayer_upvr (readonly)
	]]
	local var21
	if not FFlagEnableNewAuthActionTextExperiment_upvr then
		var21 = false
	else
		local pcall_result1_3, pcall_result2 = pcall(function() -- Line 16
			--[[ Upvalues[2]:
				[1]: IXPService_upvr (copied, readonly)
				[2]: FStringNewAuthActionTextIXPLayer_upvr (copied, readonly)
			]]
			return IXPService_upvr:GetBrowserTrackerLayerVariables(FStringNewAuthActionTextIXPLayer_upvr)
		end)
		if pcall_result1_3 then
			var21 = pcall_result2.enableTextChange or false
		else
			var21 = false
		end
	end
	if var21 then
		var21 = "Authentication.SignUp.Description.VerificationPage.CreateAccount"
		return var21
	end
	var21 = "Authentication.SignUp.Description.VerificationPage"
	return var21
end
function module.getSignUpVerificationParagraphTextWithNextButton() -- Line 59
	return "Authentication.SignUp.Description.ClickNextAgreeToTerms"
end
return module