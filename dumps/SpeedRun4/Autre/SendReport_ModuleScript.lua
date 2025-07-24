-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:37
-- Luau version 6, Types version 3
-- Time taken: 0.001616 seconds

local Players_upvr = game:GetService("Players")
local OpenReportSentDialog_upvr = require(script.Parent.Parent.Actions.OpenReportSentDialog)
local RunService_upvr = game:GetService("RunService")
return function(arg1, arg2, arg3) -- Line 7
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: OpenReportSentDialog_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	return function(arg1_2) -- Line 8
		--[[ Upvalues[6]:
			[1]: arg3 (readonly)
			[2]: Players_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: OpenReportSentDialog_upvr (copied, readonly)
			[6]: RunService_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var6_upvr = arg3
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 8. Error Block 3 start (CF ANALYSIS FAILED)
		coroutine.wrap(function() -- Line 12
			--[[ Upvalues[6]:
				[1]: Players_upvr (copied, readonly)
				[2]: var6_upvr (readonly)
				[3]: arg1 (copied, readonly)
				[4]: arg2 (copied, readonly)
				[5]: arg1_2 (readonly)
				[6]: OpenReportSentDialog_upvr (copied, readonly)
			]]
			Players_upvr:ReportAbuse(var6_upvr, arg1, arg2)
			arg1_2:dispatch(OpenReportSentDialog_upvr())
		end)()
		do
			return
		end
		-- KONSTANTERROR: [9] 8. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 19. Error Block 7 start (CF ANALYSIS FAILED)
		var6_upvr = arg1_2:getState()
		local var8 = var6_upvr
		local name = var8.gameInfo.name
		if name ~= "" then
			local formatted_upvr = string.format("User Report: \n    %s \n".."Place Title: \n    %s \n".."PlaceId: \n    %s \n".."Place Description: \n    %s \n", arg2, name, tostring(game.PlaceId), var8.gameInfo.description)
			coroutine.wrap(function() -- Line 31
				--[[ Upvalues[6]:
					[1]: RunService_upvr (copied, readonly)
					[2]: Players_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: formatted_upvr (readonly)
					[5]: arg1_2 (readonly)
					[6]: OpenReportSentDialog_upvr (copied, readonly)
				]]
				if not RunService_upvr:IsStudio() then
					Players_upvr:ReportAbuse(nil, arg1, formatted_upvr)
				end
				arg1_2:dispatch(OpenReportSentDialog_upvr())
			end)()
		end
		-- KONSTANTERROR: [21] 19. Error Block 7 end (CF ANALYSIS FAILED)
	end
end