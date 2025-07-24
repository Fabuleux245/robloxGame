-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:06
-- Luau version 6, Types version 3
-- Time taken: 0.012208 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local GetFFlagFixChromeReferences = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagFixChromeReferences
local Modules_upvr = RobloxGui.Modules
local Chrome = Modules_upvr.Chrome
if GetFFlagFixChromeReferences() then
	Modules_upvr = require(Chrome.Enabled)
else
	Modules_upvr = require(RobloxGui.Modules.Chrome.Enabled)
end
if GetFFlagFixChromeReferences() then
	if Modules_upvr() then
		local _ = require(Chrome.Service)
	else
	end
else
end
local dependencies = require(RobloxGui.Modules.ContactList.dependencies)
local RoduxCall_upvr = dependencies.RoduxCall
local tbl_upvr_2 = {
	callProtocol = require(CorePackages.Workspace.Packages.CallProtocol).CallProtocol.default;
}
local tbl_upvr = {
	On = "On";
	Off = "Off";
}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local useDispatch_upvr = dependencies.Hooks.useDispatch
local React_upvr = require(CorePackages.Packages.React)
local ReactOtter_upvr = require(CorePackages.Packages.ReactOtter)
local CurrentCamera_upvr = game:GetService("Workspace").CurrentCamera
local vector2_upvr = Vector2.new(200, 44)
local Constants_upvr_2 = require(RobloxGui.Modules.TopBar.Constants)
local Service_upvr = require(Chrome.Service)
local Constants_upvr = require(Chrome.ChromeShared.Unibar.Constants)
local useSelector_upvr = dependencies.Hooks.useSelector
local SoundManager_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local Sounds_upvr = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local CallAction_upvr = RoduxCall_upvr.Enums.CallAction
local CallBar_upvr = require(script.Parent.CallBar)
return function(arg1) -- Line 62, Named "CallBarContainer"
	--[[ Upvalues[19]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: ReactOtter_upvr (readonly)
		[6]: CurrentCamera_upvr (readonly)
		[7]: vector2_upvr (readonly)
		[8]: tbl_upvr (readonly)
		[9]: Modules_upvr (readonly)
		[10]: Constants_upvr_2 (readonly)
		[11]: Service_upvr (readonly)
		[12]: Constants_upvr (readonly)
		[13]: useSelector_upvr (readonly)
		[14]: SoundManager_upvr (readonly)
		[15]: Sounds_upvr (readonly)
		[16]: SoundGroups_upvr (readonly)
		[17]: RoduxCall_upvr (readonly)
		[18]: CallAction_upvr (readonly)
		[19]: CallBar_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr_2, arg1)
	local var12_result1_upvr = useDispatch_upvr()
	local any_useState_result1_2_upvr, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvw = ReactOtter_upvr.useAnimatedBinding({
		X = CurrentCamera_upvr.ViewportSize.X / 2 - vector2_upvr.X / 2;
		Y = -vector2_upvr.Y;
	}, function(arg1_2) -- Line 73
		--[[ Upvalues[3]:
			[1]: vector2_upvr (copied, readonly)
			[2]: any_useState_result1_2_upvr (readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
		]]
		if arg1_2.Y == -vector2_upvr.Y and any_useState_result1_2_upvr then
			any_useState_result2_upvr_2(false)
		end
	end)
	local var20_result1_upvr_2 = useSelector_upvr(React_upvr.useCallback(function(arg1_4) -- Line 127
		if arg1_4.Call.currentCall ~= nil then
			return arg1_4.Call.currentCall.status
		end
		return nil
	end, {}))
	local var20_result1_upvr = useSelector_upvr(React_upvr.useCallback(function(arg1_6) -- Line 141
		if arg1_6.Call.currentCall ~= nil then
			return arg1_6.Call.currentCall.instanceId
		end
		return nil
	end))
	React_upvr.useEffect(function() -- Line 146
		--[[ Upvalues[6]:
			[1]: any_join_result1_upvr (readonly)
			[2]: SoundManager_upvr (copied, readonly)
			[3]: Sounds_upvr (copied, readonly)
			[4]: SoundGroups_upvr (copied, readonly)
			[5]: var12_result1_upvr (readonly)
			[6]: RoduxCall_upvr (copied, readonly)
		]]
		any_join_result1_upvr.callProtocol:getCallState():andThen(function(arg1_11) -- Line 173
			--[[ Upvalues[2]:
				[1]: var12_result1_upvr (copied, readonly)
				[2]: RoduxCall_upvr (copied, readonly)
			]]
			var12_result1_upvr(RoduxCall_upvr.Actions.UpdateCall(arg1_11))
		end)
		local any_listenToHandleConnectingCall_result1_upvr = any_join_result1_upvr.callProtocol:listenToHandleConnectingCall(function(arg1_7) -- Line 149
			--[[ Upvalues[5]:
				[1]: SoundManager_upvr (copied, readonly)
				[2]: Sounds_upvr (copied, readonly)
				[3]: SoundGroups_upvr (copied, readonly)
				[4]: var12_result1_upvr (copied, readonly)
				[5]: RoduxCall_upvr (copied, readonly)
			]]
			SoundManager_upvr:PlaySound(Sounds_upvr.Ringtone.Name, {
				Volume = 0.5;
				Looped = true;
			}, SoundGroups_upvr.Iris)
			var12_result1_upvr(RoduxCall_upvr.Actions.UpdateCall(arg1_7))
		end)
		local any_listenToHandleTeleportingCall_result1_upvr = any_join_result1_upvr.callProtocol:listenToHandleTeleportingCall(function(arg1_8) -- Line 155
			--[[ Upvalues[5]:
				[1]: SoundManager_upvr (copied, readonly)
				[2]: Sounds_upvr (copied, readonly)
				[3]: SoundGroups_upvr (copied, readonly)
				[4]: var12_result1_upvr (copied, readonly)
				[5]: RoduxCall_upvr (copied, readonly)
			]]
			SoundManager_upvr:StopSound(Sounds_upvr.Ringtone.Name)
			SoundManager_upvr:PlaySound(Sounds_upvr.CallAccept.Name, {
				Volume = 0.5;
			}, SoundGroups_upvr.Iris)
			var12_result1_upvr(RoduxCall_upvr.Actions.UpdateCall(arg1_8))
		end)
		local any_listenToHandleActiveCall_result1_upvr = any_join_result1_upvr.callProtocol:listenToHandleActiveCall(function(arg1_9) -- Line 161
			--[[ Upvalues[2]:
				[1]: var12_result1_upvr (copied, readonly)
				[2]: RoduxCall_upvr (copied, readonly)
			]]
			var12_result1_upvr(RoduxCall_upvr.Actions.UpdateCall(arg1_9))
		end)
		local any_listenToHandleTransferCallTeleportJoin_result1_upvr = any_join_result1_upvr.callProtocol:listenToHandleTransferCallTeleportJoin(function() -- Line 165
			--[[ Upvalues[3]:
				[1]: any_join_result1_upvr (copied, readonly)
				[2]: var12_result1_upvr (copied, readonly)
				[3]: RoduxCall_upvr (copied, readonly)
			]]
			any_join_result1_upvr.callProtocol:getCallState():andThen(function(arg1_10) -- Line 168
				--[[ Upvalues[2]:
					[1]: var12_result1_upvr (copied, readonly)
					[2]: RoduxCall_upvr (copied, readonly)
				]]
				var12_result1_upvr(RoduxCall_upvr.Actions.UpdateCall(arg1_10))
			end)
		end)
		return function() -- Line 177
			--[[ Upvalues[4]:
				[1]: any_listenToHandleConnectingCall_result1_upvr (readonly)
				[2]: any_listenToHandleTeleportingCall_result1_upvr (readonly)
				[3]: any_listenToHandleActiveCall_result1_upvr (readonly)
				[4]: any_listenToHandleTransferCallTeleportJoin_result1_upvr (readonly)
			]]
			any_listenToHandleConnectingCall_result1_upvr:Disconnect()
			any_listenToHandleTeleportingCall_result1_upvr:Disconnect()
			any_listenToHandleActiveCall_result1_upvr:Disconnect()
			any_listenToHandleTransferCallTeleportJoin_result1_upvr:Disconnect()
		end
	end, {any_join_result1_upvr.callProtocol})
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(nil)
	if Modules_upvr() and Service_upvr then
		React_upvr.useEffect(function() -- Line 187
			--[[ Upvalues[2]:
				[1]: Service_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			local any_connect_result1_upvr = Service_upvr:layout():connect(function(arg1_12) -- Line 189
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(arg1_12)
			end)
			return function() -- Line 193
				--[[ Upvalues[1]:
					[1]: any_connect_result1_upvr (readonly)
				]]
				any_connect_result1_upvr.disconnect()
			end
		end, {})
	end
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_3) -- Line 88
		--[[ Upvalues[9]:
			[1]: CurrentCamera_upvr (copied, readonly)
			[2]: vector2_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: Modules_upvr (copied, readonly)
			[5]: Constants_upvr_2 (copied, readonly)
			[6]: Service_upvr (copied, readonly)
			[7]: any_useAnimatedBinding_result2_upvw (read and write)
			[8]: ReactOtter_upvr (copied, readonly)
			[9]: Constants_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
		if arg1_3 == tbl_upvr.On then
			if Modules_upvr() then
			else
			end
		else
		end
		local var38
		if Modules_upvr() and Service_upvr then
			local Max_2 = Service_upvr:layout():get().Max
			if CurrentCamera_upvr.ViewportSize.X / 2 - vector2_upvr.X / 2 < Max_2.X + 12 then
				if CurrentCamera_upvr.ViewportSize.X < Max_2.X + 24 + vector2_upvr.X then
					if arg1_3 == tbl_upvr.On then
						-- KONSTANTWARNING: GOTO [91] #67
					end
				else
					var38 = Max_2.X + 12
				end
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [91] 67. Error Block 16 start (CF ANALYSIS FAILED)
		any_useAnimatedBinding_result2_upvw({
			X = ReactOtter_upvr.spring(var38, Constants_upvr.MENU_ANIMATION_SPRING);
			Y = ReactOtter_upvr.spring(Constants_upvr_2.TopBarHeight + 10, Constants_upvr.MENU_ANIMATION_SPRING);
		})
		-- KONSTANTERROR: [91] 67. Error Block 16 end (CF ANALYSIS FAILED)
	end, {})
	React_upvr.useEffect(function() -- Line 199
		--[[ Upvalues[7]:
			[1]: var20_result1_upvr_2 (readonly)
			[2]: RoduxCall_upvr (copied, readonly)
			[3]: var20_result1_upvr (readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
			[5]: any_useCallback_result1_upvr (readonly)
			[6]: tbl_upvr (copied, readonly)
			[7]: CurrentCamera_upvr (copied, readonly)
		]]
		local var77_upvr = true
		local var81
		if var20_result1_upvr_2 ~= var81 then
			var77_upvr = true
			var81 = RoduxCall_upvr.Enums.Status.Teleporting
			if var20_result1_upvr_2 ~= var81 then
				var77_upvr = true
				var81 = RoduxCall_upvr.Enums.Status.Active
				if var20_result1_upvr_2 ~= var81 then
					var77_upvr = false
					var81 = RoduxCall_upvr.Enums.Status.Idle
					if var20_result1_upvr_2 == var81 then
						var81 = game
						var81 = var20_result1_upvr
						if var81.JobId ~= var81 then
							var77_upvr = false
						else
							var77_upvr = true
						end
					end
				end
			end
		end
		if var77_upvr then
			var81 = true
			any_useState_result2_upvr_2(var81)
		end
		if var77_upvr then
			var81 = tbl_upvr.On
		else
			var81 = tbl_upvr.Off
		end
		any_useCallback_result1_upvr(var81)
		local any_Connect_result1_upvr_2 = CurrentCamera_upvr:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 212
			--[[ Upvalues[3]:
				[1]: any_useCallback_result1_upvr (copied, readonly)
				[2]: var77_upvr (readonly)
				[3]: tbl_upvr (copied, readonly)
			]]
			local var80
			if var77_upvr then
				var80 = tbl_upvr.On
			else
				var80 = tbl_upvr.Off
			end
			any_useCallback_result1_upvr(var80)
		end)
		function var81() -- Line 216
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr_2 (readonly)
			]]
			any_Connect_result1_upvr_2:Disconnect()
		end
		return var81
	end, {var20_result1_upvr_2, var20_result1_upvr, any_useState_result1})
	local useEffect = React_upvr.useEffect
	useEffect(function() -- Line 225
		--[[ Upvalues[7]:
			[1]: any_join_result1_upvr (readonly)
			[2]: CallAction_upvr (copied, readonly)
			[3]: SoundManager_upvr (copied, readonly)
			[4]: Sounds_upvr (copied, readonly)
			[5]: SoundGroups_upvr (copied, readonly)
			[6]: var12_result1_upvr (readonly)
			[7]: RoduxCall_upvr (copied, readonly)
		]]
		local any_listenToHandleEndCall_result1_upvr = any_join_result1_upvr.callProtocol:listenToHandleEndCall(function(arg1_13) -- Line 226
			--[[ Upvalues[6]:
				[1]: CallAction_upvr (copied, readonly)
				[2]: SoundManager_upvr (copied, readonly)
				[3]: Sounds_upvr (copied, readonly)
				[4]: SoundGroups_upvr (copied, readonly)
				[5]: var12_result1_upvr (copied, readonly)
				[6]: RoduxCall_upvr (copied, readonly)
			]]
			if arg1_13.callAction == CallAction_upvr.Cancel then
				SoundManager_upvr:StopSound(Sounds_upvr.Ringtone.Name)
				SoundManager_upvr:PlaySound(Sounds_upvr.HangUp.Name, {
					Volume = 0.5;
				}, SoundGroups_upvr.Iris)
			elseif arg1_13.callAction == CallAction_upvr.Decline then
				SoundManager_upvr:StopSound(Sounds_upvr.Ringtone.Name)
				SoundManager_upvr:PlaySound(Sounds_upvr.CallDecline.Name, {
					Volume = 0.5;
				}, SoundGroups_upvr.Iris)
			elseif arg1_13.callAction == CallAction_upvr.Finish then
				SoundManager_upvr:PlaySound(Sounds_upvr.HangUp.Name, {
					Volume = 0.5;
				}, SoundGroups_upvr.Iris)
			end
			var12_result1_upvr(RoduxCall_upvr.Actions.UpdateCall(arg1_13))
		end)
		return function() -- Line 240
			--[[ Upvalues[1]:
				[1]: any_listenToHandleEndCall_result1_upvr (readonly)
			]]
			any_listenToHandleEndCall_result1_upvr:Disconnect()
		end
	end, {any_join_result1_upvr.callProtocol})
	if any_useState_result1_2_upvr then
		useEffect = React_upvr.createElement
		useEffect = useEffect("Frame", {
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}, {
			CallBar = React_upvr.createElement(CallBar_upvr, {
				size = vector2_upvr;
				activeUtc = useSelector_upvr(React_upvr.useCallback(function(arg1_5) -- Line 132
					local var44
					if arg1_5.Call.currentCall and arg1_5.Call.currentCall.activeUtc then
						var44 = arg1_5.Call.currentCall.activeUtc
					end
					return var44
				end));
				position = any_useAnimatedBinding_result1:map(function(arg1_14) -- Line 254
					return UDim2.fromOffset(math.round(arg1_14.X), math.round(arg1_14.Y))
				end);
			});
		})
	else
		useEffect = nil
	end
	return useEffect
end