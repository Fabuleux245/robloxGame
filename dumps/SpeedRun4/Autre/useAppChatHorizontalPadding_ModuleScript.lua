-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:54
-- Luau version 6, Types version 3
-- Time taken: 0.004288 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Responsive_upvr = require(Parent.Responsive)
local hasExtraPlatformInset_upvr = Responsive_upvr.HardwareSafeAreaInsets.hasExtraPlatformInset
local function _(arg1, arg2) -- Line 22, Named "getLegacySideMargin"
	if arg1 < 1024 then
		return arg2.Global.Space_150
	end
	if arg1 < 1280 then
		return 18
	end
	if arg1 < 1440 then
		return arg2.Global.Space_300
	end
	if arg1 < 1920 then
		return 34
	end
	if arg1 < 2260 then
		return 38
	end
	return arg2.Global.Space_600
end
local function _(arg1, arg2) -- Line 41, Named "calculateSideMargin"
	--[[ Upvalues[1]:
		[1]: hasExtraPlatformInset_upvr (readonly)
	]]
	if hasExtraPlatformInset_upvr() then
		return arg1.Global.Space_800
	end
	if arg2 < 1024 then
		return arg1.Global.Space_150
	end
	if arg2 < 1280 then
		return 18
	end
	if arg2 < 1440 then
		return arg1.Global.Space_300
	end
	if arg2 < 1920 then
		return 34
	end
	if arg2 < 2260 then
		return 38
	end
	local Space_600 = arg1.Global.Space_600
	do
		return Space_600
	end
	return Space_600
end
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local Style_upvr = require(Parent.Style)
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useMemo_upvr = require(Parent.React).useMemo
local FormFactor_upvr = require(Parent.FormFactor).Enums.FormFactor
return function(arg1) -- Line 59
	--[[ Upvalues[9]:
		[1]: useIsInExperience_upvr (readonly)
		[2]: useScreenSize_upvr (readonly)
		[3]: Style_upvr (readonly)
		[4]: usePreferredInput_upvr (readonly)
		[5]: Responsive_upvr (readonly)
		[6]: useSelector_upvr (readonly)
		[7]: useMemo_upvr (readonly)
		[8]: hasExtraPlatformInset_upvr (readonly)
		[9]: FormFactor_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var14_upvr = useIsInExperience_upvr() or arg1
	local useScreenSize_upvr_result1 = useScreenSize_upvr()
	local var16_upvr
	if useScreenSize_upvr_result1 and useScreenSize_upvr_result1.X ~= nil then
		var16_upvr = useScreenSize_upvr_result1.X
	else
		var16_upvr = 0
	end
	local var17 = Style_upvr
	if usePreferredInput_upvr() ~= Responsive_upvr.Input.Pointer then
	else
	end
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 69
		return arg1_2.FormFactor
	end)
	local var21_upvr = true
	local any_useDesignTokens_result1_upvr = var17.useDesignTokens()
	return useMemo_upvr(function() -- Line 73
		--[[ Upvalues[7]:
			[1]: var14_upvr (readonly)
			[2]: var21_upvr (readonly)
			[3]: any_useDesignTokens_result1_upvr (readonly)
			[4]: var16_upvr (readonly)
			[5]: hasExtraPlatformInset_upvr (copied, readonly)
			[6]: useSelector_upvr_result1_upvr (readonly)
			[7]: FormFactor_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [62] 47. Error Block 23 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [62] 47. Error Block 23 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [62.0]
		if nil then
		end
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [62.1]
		if nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [62.3]
			if nil then
			else
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [62.2]
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [62.328187]
				if nil < nil then
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
					if nil < nil then
					else
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
						if nil < nil then
						else
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
							if nil < nil then
							else
								-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
								if nil < nil then
								else
								end
							end
						end
					end
				end
			end
		elseif useSelector_upvr_result1_upvr == FormFactor_upvr.COMPACT then
		else
		end
		-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [72] 55. Error Block 30 start (CF ANALYSIS FAILED)
		local module = {
			outer = 48;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module.inner = 48 / 2
		module.default = 12
		do
			return module
		end
		-- KONSTANTERROR: [72] 55. Error Block 30 end (CF ANALYSIS FAILED)
	end, {var16_upvr, var21_upvr, useSelector_upvr_result1_upvr, var14_upvr})
end