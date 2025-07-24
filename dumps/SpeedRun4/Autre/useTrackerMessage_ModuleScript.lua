-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:11
-- Luau version 6, Types version 3
-- Time taken: 0.001587 seconds

local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local LuauPolyfill = require(Packages.LuauPolyfill)
local React_upvr = require(Packages.React)
local FaceChatUtils_upvr = require(script.Parent.Parent.Utils.FaceChatUtils)
local useTrackerMode_upvr = require(script.Parent.useTrackerMode)
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local TrackerMode_upvr = Enum.TrackerMode
local clearTimeout_upvr = LuauPolyfill.clearTimeout
local setTimeout_upvr = LuauPolyfill.setTimeout
return function() -- Line 27
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: FaceChatUtils_upvr (readonly)
		[3]: useTrackerMode_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: TrackerMode_upvr (readonly)
		[6]: clearTimeout_upvr (readonly)
		[7]: setTimeout_upvr (readonly)
	]]
	local useTrackerMode_upvr_result1_upvr = useTrackerMode_upvr()
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		controlMessageSound = "CoreScripts.TopBar.ControlMessageSound";
		controlMessageMotion = "CoreScripts.TopBar.ControlMessageMotion";
		controlMessageOn = "CoreScripts.TopBar.ControlMessageOn";
		controlMessageOff = "CoreScripts.TopBar.ControlMessageOff";
	})
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState({
		visible = false;
		text = useLocalization_upvr_result1_upvr.controlMessageMotion;
		status = useLocalization_upvr_result1_upvr.controlMessageOff;
	})
	local any_useRef_result1_upvr = React_upvr.useRef(FaceChatUtils_upvr.getTrackerMode())
	local function var18_upvr() -- Line 42
		--[[ Upvalues[4]:
			[1]: useLocalization_upvr_result1_upvr (readonly)
			[2]: useTrackerMode_upvr_result1_upvr (readonly)
			[3]: TrackerMode_upvr (copied, readonly)
			[4]: any_useRef_result1_upvr (readonly)
		]]
		local controlMessageMotion = useLocalization_upvr_result1_upvr.controlMessageMotion
		local controlMessageOff = useLocalization_upvr_result1_upvr.controlMessageOff
		if useTrackerMode_upvr_result1_upvr ~= TrackerMode_upvr.None then
			controlMessageOff = useLocalization_upvr_result1_upvr.controlMessageOn
			if useTrackerMode_upvr_result1_upvr == TrackerMode_upvr.AudioVideo or useTrackerMode_upvr_result1_upvr == TrackerMode_upvr.Video then
				controlMessageMotion = useLocalization_upvr_result1_upvr.controlMessageMotion
			else
				controlMessageMotion = useLocalization_upvr_result1_upvr.controlMessageSound
			end
		else
			controlMessageOff = useLocalization_upvr_result1_upvr.controlMessageOff
			if any_useRef_result1_upvr.current == TrackerMode_upvr.Audio then
				controlMessageMotion = useLocalization_upvr_result1_upvr.controlMessageSound
			else
				controlMessageMotion = useLocalization_upvr_result1_upvr.controlMessageMotion
			end
		end
		any_useRef_result1_upvr.current = useTrackerMode_upvr_result1_upvr
		return {
			visible = true;
			text = controlMessageMotion;
			status = controlMessageOff;
		}
	end
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 75
		--[[ Upvalues[6]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: clearTimeout_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: var18_upvr (readonly)
			[5]: setTimeout_upvr (copied, readonly)
			[6]: any_useState_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr_2.current then
			clearTimeout_upvr(any_useRef_result1_upvr_2.current)
		end
		any_useState_result2_upvr(var18_upvr())
		any_useRef_result1_upvr_2.current = setTimeout_upvr(function() -- Line 81
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: any_useState_result1_upvr (copied, readonly)
			]]
			any_useState_result2_upvr({
				visible = false;
				text = any_useState_result1_upvr.text;
				status = any_useState_result1_upvr.status;
			})
		end, 2000)
	end, {useTrackerMode_upvr_result1_upvr})
	return any_useState_result1_upvr
end