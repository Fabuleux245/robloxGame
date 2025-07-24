-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:18
-- Luau version 6, Types version 3
-- Time taken: 0.000688 seconds

local CaptureService_upvr = game:GetService("CaptureService")
return function(arg1) -- Line 3, Named "getCaptureSize"
	--[[ Upvalues[1]:
		[1]: CaptureService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 4
		--[[ Upvalues[2]:
			[1]: CaptureService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return CaptureService_upvr:GetCaptureSizeAsync(arg1)
	end)
	if not pcall_result1 or pcall_result2 == Vector2.new(0, 0) then
		return nil
	end
	return pcall_result2
end