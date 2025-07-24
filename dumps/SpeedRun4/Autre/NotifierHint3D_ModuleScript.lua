-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:25
-- Luau version 6, Types version 3
-- Time taken: 0.002223 seconds

local module_2 = {
	DEFAULT_DURATION = 5;
}
local RunService_upvr = game:GetService("RunService")
local var4_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Create("ImageLabel")({
	Name = "NotificationObject";
	Position = UDim2.new(0.5, -860, 1, -301);
	Size = UDim2.new(0, 1700, 0, 1000);
	BackgroundTransparency = 1;
	Image = "rbxasset://textures/ui/VR/notifier_glow.png";
	ImageTransparency = 0;
	BorderSizePixel = 0;
})
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CreateNotificationEffect_result1_upvr = (function() -- Line 30, Named "CreateNotificationEffect"
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: var4_upvr (readonly)
		[3]: RobloxGui_upvr (readonly)
	]]
	local module = {}
	local var7_upvw
	function module.Init(arg1, arg2) -- Line 39
		--[[ Upvalues[4]:
			[1]: var7_upvw (read and write)
			[2]: RunService_upvr (copied, readonly)
			[3]: var4_upvr (copied, readonly)
			[4]: RobloxGui_upvr (copied, readonly)
		]]
		local tick_result1_upvr = tick()
		if var7_upvw then
			var7_upvw:disconnect()
			var7_upvw = nil
		end
		local var10_upvr = tick_result1_upvr + arg2
		var7_upvw = RunService_upvr.RenderStepped:connect(function() -- Line 47
			--[[ Upvalues[5]:
				[1]: var10_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: var4_upvr (copied, readonly)
				[4]: RobloxGui_upvr (copied, readonly)
				[5]: tick_result1_upvr (readonly)
			]]
			if var10_upvr <= tick() then
				arg1:Cancel()
			else
				var4_upvr.Parent = RobloxGui_upvr
				var4_upvr.ImageTransparency = (math.sin((tick() - tick_result1_upvr) * 2.5 + (math.pi/2)) + 1) / 2 * 0.5 + 0.5
			end
		end)
	end
	function module.Cancel(arg1) -- Line 62
		--[[ Upvalues[2]:
			[1]: var7_upvw (read and write)
			[2]: var4_upvr (copied, readonly)
		]]
		if var7_upvw then
			var7_upvw:disconnect()
			var7_upvw = nil
		end
		var4_upvr.Parent = nil
	end
	return module
end)()
function module_2.BeginNotification(arg1, arg2) -- Line 75
	--[[ Upvalues[1]:
		[1]: CreateNotificationEffect_result1_upvr (readonly)
	]]
	arg1:CancelNotification()
	local var12 = arg2
	if not var12 then
		var12 = arg1.DEFAULT_DURATION
	end
	CreateNotificationEffect_result1_upvr:Init(var12)
end
function module_2.CancelNotification(arg1) -- Line 80
	--[[ Upvalues[1]:
		[1]: CreateNotificationEffect_result1_upvr (readonly)
	]]
	CreateNotificationEffect_result1_upvr:Cancel()
end
return module_2