-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:20
-- Luau version 6, Types version 3
-- Time taken: 0.001752 seconds

local CoreGuiCommon = script:FindFirstAncestor("CoreGuiCommon")
local Parent = CoreGuiCommon.Parent
local Signals = require(Parent.Signals)
local createSignal_upvr = Signals.createSignal
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableDesktopUILessMode", false)
local UserInputService_upvr = game:GetService("UserInputService")
local createEffect_upvr = Signals.createEffect
local LogTopBarToggled_upvr = require(CoreGuiCommon.Telemetry).LogTopBarToggled
local IXPServiceWrapper_upvr = require(Parent.IXPServiceWrapper).IXPServiceWrapper
local game_DefineFastString_result1_upvr = game:DefineFastString("AddUILessModeIxpLayer", "")
return function() -- Line 25
	--[[ Upvalues[7]:
		[1]: createSignal_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: createEffect_upvr (readonly)
		[5]: LogTopBarToggled_upvr (readonly)
		[6]: IXPServiceWrapper_upvr (readonly)
		[7]: game_DefineFastString_result1_upvr (readonly)
	]]
	local var12 = game_DefineFastFlag_result1_upvr
	if var12 then
		if UserInputService_upvr.PreferredInput ~= Enum.PreferredInput.KeyboardAndMouse then
			var12 = false
		else
			var12 = true
		end
	end
	local var5_result1_upvr_2, createSignal_upvr_result2_2 = createSignal_upvr(var12)
	local var5_result1_upvr, createSignal_upvr_result2 = createSignal_upvr(not var5_result1_upvr_2(false))
	local createEffect_upvr_result1_upvr = createEffect_upvr(function(arg1) -- Line 31
		--[[ Upvalues[3]:
			[1]: var5_result1_upvr_2 (readonly)
			[2]: LogTopBarToggled_upvr (copied, readonly)
			[3]: var5_result1_upvr (readonly)
		]]
		if var5_result1_upvr_2(false) then
			LogTopBarToggled_upvr(var5_result1_upvr(arg1))
		end
	end)
	if var5_result1_upvr_2(false) then
		IXPServiceWrapper_upvr:LogFlagLinkedUserLayerExposure(game_DefineFastString_result1_upvr)
	end
	return {
		getUILessModeEnabled = var5_result1_upvr_2;
		getUIVisible = var5_result1_upvr;
		setUIVisible = createSignal_upvr_result2;
		cleanup = function() -- Line 37, Named "cleanup"
			--[[ Upvalues[1]:
				[1]: createEffect_upvr_result1_upvr (readonly)
			]]
			createEffect_upvr_result1_upvr()
		end;
	}
end