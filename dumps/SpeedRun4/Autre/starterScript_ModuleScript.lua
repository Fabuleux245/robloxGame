-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:52
-- Luau version 6, Types version 3
-- Time taken: 0.001993 seconds

local Flags = require(script.Parent.Flags)
local Players_upvr = game:GetService("Players")
local default_upvr = require(script.Parent.Parent.LoggingProtocol).default
local TelemetryConfig_upvr = require(script.Parent.TelemetryConfig)
local function reportVideoEvent_upvr(arg1, arg2) -- Line 18, Named "reportVideoEvent"
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: TelemetryConfig_upvr (readonly)
	]]
	local LocalPlayer = Players_upvr.LocalPlayer
	if LocalPlayer ~= nil then
		local tbl = {
			place_id = tostring(game.PlaceId);
			universe_id = tostring(game.GameId);
			user_id = tostring(LocalPlayer.UserId);
			video_asset_id = arg1.Video;
			instance_name = arg1.Name;
		}
		tbl.event_type = arg2
		default_upvr:logRobloxTelemetryEvent(TelemetryConfig_upvr, nil, tbl)
	end
end
local any_GetFIntPremiumSponsoredExperienceWaitTimeSeconds_result1_upvr = Flags.GetFIntPremiumSponsoredExperienceWaitTimeSeconds()
local function waitForFullPathVideoFrame_upvr(arg1) -- Line 38, Named "waitForFullPathVideoFrame"
	--[[ Upvalues[1]:
		[1]: any_GetFIntPremiumSponsoredExperienceWaitTimeSeconds_result1_upvr (readonly)
	]]
	local var15
	for i, v in ipairs(arg1:split('.')) do
		var15 = var15:WaitForChild(v, any_GetFIntPremiumSponsoredExperienceWaitTimeSeconds_result1_upvr)
		if not var15 then
			error("Could not find child "..tostring(v).." in "..arg1)
		end
	end
	local ClassName = var15.ClassName
	if ClassName ~= "VideoFrame" then
		i = "Expected VideoFrame at "
		v = arg1
		error(i..v..", got "..ClassName)
	end
	return var15
end
local function listenForVideoFrameEvents_upvr(arg1) -- Line 55, Named "listenForVideoFrameEvents"
	--[[ Upvalues[2]:
		[1]: waitForFullPathVideoFrame_upvr (readonly)
		[2]: reportVideoEvent_upvr (readonly)
	]]
	local waitForFullPathVideoFrame_upvr_result1_upvr = waitForFullPathVideoFrame_upvr(arg1)
	if waitForFullPathVideoFrame_upvr_result1_upvr.Playing then
		reportVideoEvent_upvr(waitForFullPathVideoFrame_upvr_result1_upvr, "VideoStart")
	else
		local var19_upvw = true
		waitForFullPathVideoFrame_upvr_result1_upvr.Played:Connect(function() -- Line 67
			--[[ Upvalues[3]:
				[1]: var19_upvw (read and write)
				[2]: reportVideoEvent_upvr (copied, readonly)
				[3]: waitForFullPathVideoFrame_upvr_result1_upvr (readonly)
			]]
			if not var19_upvw then
				reportVideoEvent_upvr(waitForFullPathVideoFrame_upvr_result1_upvr, "VideoStart")
				var19_upvw = true
			end
		end)
	end
	local var20_upvw = false
	local function onEndedOrLooped() -- Line 75
		--[[ Upvalues[3]:
			[1]: var20_upvw (read and write)
			[2]: reportVideoEvent_upvr (copied, readonly)
			[3]: waitForFullPathVideoFrame_upvr_result1_upvr (readonly)
		]]
		if not var20_upvw then
			reportVideoEvent_upvr(waitForFullPathVideoFrame_upvr_result1_upvr, "VideoEnd")
			var20_upvw = true
		end
	end
	waitForFullPathVideoFrame_upvr_result1_upvr.Ended:Connect(onEndedOrLooped)
	waitForFullPathVideoFrame_upvr_result1_upvr.DidLoop:Connect(onEndedOrLooped)
end
local GetFStringPremiumSponsoredExperienceInstances_upvr = Flags.GetFStringPremiumSponsoredExperienceInstances
return function() -- Line 86, Named "starterScript"
	--[[ Upvalues[2]:
		[1]: GetFStringPremiumSponsoredExperienceInstances_upvr (readonly)
		[2]: listenForVideoFrameEvents_upvr (readonly)
	]]
	for _, v_2 in ipairs(GetFStringPremiumSponsoredExperienceInstances_upvr():split(',')) do
		local unpack_result1, unpack_result2_upvr = unpack(v_2:split(':'))
		if unpack_result1 == tostring(game.PlaceId) then
			spawn(function() -- Line 92
				--[[ Upvalues[2]:
					[1]: listenForVideoFrameEvents_upvr (copied, readonly)
					[2]: unpack_result2_upvr (readonly)
				]]
				listenForVideoFrameEvents_upvr(unpack_result2_upvr)
			end)
		end
	end
end