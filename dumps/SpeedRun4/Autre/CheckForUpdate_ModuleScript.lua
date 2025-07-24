-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:15
-- Luau version 6, Types version 3
-- Time taken: 0.002251 seconds

local RobloxAppUpdate = script:FindFirstAncestor("RobloxAppUpdate")
local Parent = RobloxAppUpdate.Parent
local Dash_upvr = require(Parent.Dash)
local joinGamePlayButton_upvr = require(Parent.DiscoveryAnalytics).Points.joinGamePlayButton
local SetNetworkingErrorToast_upvr = require(Parent.RobloxAppToastsRodux).Thunks.SetNetworkingErrorToast
local OpenCentralOverlayForUpdateRequiredPrompt_upvr = require(RobloxAppUpdate.Thunks.OpenCentralOverlayForUpdateRequiredPrompt)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 16
	--[[ Upvalues[4]:
		[1]: Dash_upvr (readonly)
		[2]: joinGamePlayButton_upvr (readonly)
		[3]: SetNetworkingErrorToast_upvr (readonly)
		[4]: OpenCentralOverlayForUpdateRequiredPrompt_upvr (readonly)
	]]
	return function(arg1_2) -- Line 17
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: arg4 (readonly)
			[3]: arg2 (readonly)
			[4]: arg5 (readonly)
			[5]: Dash_upvr (copied, readonly)
			[6]: joinGamePlayButton_upvr (copied, readonly)
			[7]: arg3 (readonly)
			[8]: SetNetworkingErrorToast_upvr (copied, readonly)
			[9]: OpenCentralOverlayForUpdateRequiredPrompt_upvr (copied, readonly)
		]]
		if arg1 == nil then
			warn("appUpdateImpl is nil")
			if arg4 then
				arg4()
			end
		else
			if not arg2 or arg1:canPerformBinaryUpdate() then
				arg1:checkForUpdate():andThen(function(arg1_3) -- Line 26
					--[[ Upvalues[9]:
						[1]: arg5 (copied, readonly)
						[2]: Dash_upvr (copied, readonly)
						[3]: joinGamePlayButton_upvr (copied, readonly)
						[4]: arg3 (copied, readonly)
						[5]: arg1_2 (readonly)
						[6]: SetNetworkingErrorToast_upvr (copied, readonly)
						[7]: OpenCentralOverlayForUpdateRequiredPrompt_upvr (copied, readonly)
						[8]: arg1 (copied, readonly)
						[9]: arg4 (copied, readonly)
					]]
					local appUpdateStatus = arg1_3.appUpdateStatus
					local tbl = {
						appUpdateStatus = appUpdateStatus;
					}
					if arg5 then
						tbl = Dash_upvr.join(tbl, arg5)
					end
					joinGamePlayButton_upvr(arg3.InfluxDb, "checkForUpdate", tbl)
					if arg1_3.errorMessage then
						warn(arg1_3.errorMessage)
						arg1_2:dispatch(SetNetworkingErrorToast_upvr({
							HttpError = Enum.HttpError.OK;
						}))
					else
						if appUpdateStatus == Enum.AppUpdateStatus.Available then
							arg1_2:dispatch(OpenCentralOverlayForUpdateRequiredPrompt_upvr(arg1:canPerformBinaryUpdate(), false))
							return
						end
						if appUpdateStatus == Enum.AppUpdateStatus.AvailableBoundChannel then
							arg1_2:dispatch(OpenCentralOverlayForUpdateRequiredPrompt_upvr(arg1:canPerformBinaryUpdate(), true))
							return
						end
						if arg4 then
							arg4()
						end
					end
				end)
				return
			end
			if arg4 then
				arg4()
			end
		end
	end
end