-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:12
-- Luau version 6, Types version 3
-- Time taken: 0.001180 seconds

local Parent = script.Parent.Parent
local PromptDismissed_upvr = require(Parent.Actions.PromptDismissed)
local CaptureService_upvr = game:GetService("CaptureService")
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("CaptureServiceContentObjectEnabled")
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local ShareCapture_upvr = require(Parent.Thunks.ShareCapture)
local ExternalShareSourceType_upvr = require(Parent.Enums.ExternalShareSourceType)
return function(arg1, arg2, arg3) -- Line 16
	--[[ Upvalues[6]:
		[1]: PromptDismissed_upvr (readonly)
		[2]: CaptureService_upvr (readonly)
		[3]: game_GetEngineFeature_result1_upvr (readonly)
		[4]: CaptureType_upvr (readonly)
		[5]: ShareCapture_upvr (readonly)
		[6]: ExternalShareSourceType_upvr (readonly)
	]]
	return function(arg1_2) -- Line 17
		--[[ Upvalues[9]:
			[1]: PromptDismissed_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg3 (readonly)
			[4]: CaptureService_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[7]: CaptureType_upvr (copied, readonly)
			[8]: ShareCapture_upvr (copied, readonly)
			[9]: ExternalShareSourceType_upvr (copied, readonly)
		]]
		arg1_2:dispatch(PromptDismissed_upvr(arg1))
		if arg3 then
			task.spawn(function() -- Line 21
				--[[ Upvalues[7]:
					[1]: CaptureService_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
					[3]: game_GetEngineFeature_result1_upvr (copied, readonly)
					[4]: CaptureType_upvr (copied, readonly)
					[5]: arg1_2 (readonly)
					[6]: ShareCapture_upvr (copied, readonly)
					[7]: ExternalShareSourceType_upvr (copied, readonly)
				]]
				local var11
				if game_GetEngineFeature_result1_upvr then
					var11 = {
						contentId = arg2.content.Uri or "rbxtemp://0";
						filePath = CaptureService_upvr:GetCaptureFilePathAsync(arg2.content);
						type = CaptureType_upvr.Screenshot;
					}
				else
					local tbl = {
						contentId = arg2.content;
					}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl.filePath = CaptureService_upvr:GetCaptureFilePathAsync(arg2.content)
					tbl.type = CaptureType_upvr.Screenshot
					var11 = tbl
				end
				arg1_2:dispatch(ShareCapture_upvr(var11, ExternalShareSourceType_upvr.Prompt, arg2.launchData))
			end)
		end
		CaptureService_upvr:OnSharePromptFinished(arg1, arg3)
	end
end