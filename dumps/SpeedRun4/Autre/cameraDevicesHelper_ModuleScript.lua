-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:16
-- Luau version 6, Types version 3
-- Time taken: 0.000776 seconds

local VideoCaptureService_upvr = game:GetService("VideoCaptureService")
local var2_upvw
VideoCaptureService_upvr.DevicesChanged:Connect(function() -- Line 4
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: VideoCaptureService_upvr (readonly)
	]]
	var2_upvw = VideoCaptureService_upvr:GetCameraDevices()
end)
return {
	GetDevices = function() -- Line 8
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: VideoCaptureService_upvr (readonly)
		]]
		if not var2_upvw then
			var2_upvw = VideoCaptureService_upvr:GetCameraDevices()
		end
		return var2_upvw
	end;
}