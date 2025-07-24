-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:05
-- Luau version 6, Types version 3
-- Time taken: 0.002986 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local module_upvr = {
	[Enum.Platform.XBoxOne] = true;
	[Enum.Platform.XBox360] = true;
	[Enum.Platform.WiiU] = true;
	[Enum.Platform.PS3] = true;
	[Enum.Platform.PS4] = true;
	[Enum.Platform.PS5] = true;
	[Enum.Platform.Ouya] = true;
	[Enum.Platform.AndroidTV] = true;
}
local any_new_result1_upvr = require(script.Parent.Parent.AppCommonLib).Signal.new()
local var4_upvw
local var5_upvw
local module_upvw = {
	left = 0;
	top = 0;
	right = 0;
	bottom = 0;
}
function diffInsets(arg1, arg2) -- Line 42
	local var9 = true
	if arg1.top == arg2.top then
		var9 = true
		if arg1.bottom == arg2.bottom then
			var9 = true
			if arg1.left == arg2.left then
				if arg1.right == arg2.right then
					var9 = false
				else
					var9 = true
				end
			end
		end
	end
	return var9
end
local var10_upvw
function handleSizeChange() -- Line 47
	--[[ Upvalues[3]:
		[1]: module_upvw (read and write)
		[2]: var10_upvw (read and write)
		[3]: any_new_result1_upvr (readonly)
	]]
	local getHardwareSafeAreaInsets_result1_upvr = getHardwareSafeAreaInsets()
	if diffInsets(getHardwareSafeAreaInsets_result1_upvr, module_upvw) then
		module_upvw = getHardwareSafeAreaInsets_result1_upvr
		if var10_upvw then
			task.cancel(var10_upvw)
		end
		var10_upvw = task.defer(function() -- Line 54
			--[[ Upvalues[3]:
				[1]: var10_upvw (copied, read and write)
				[2]: any_new_result1_upvr (copied, readonly)
				[3]: getHardwareSafeAreaInsets_result1_upvr (readonly)
			]]
			var10_upvw = nil
			any_new_result1_upvr:fire(getHardwareSafeAreaInsets_result1_upvr)
		end)
	end
end
local var13_upvw = false
local CoreGui_upvr = game:GetService("CoreGui")
function init() -- Line 61
	--[[ Upvalues[4]:
		[1]: var13_upvw (read and write)
		[2]: var4_upvw (read and write)
		[3]: CoreGui_upvr (readonly)
		[4]: var5_upvw (read and write)
	]]
	if var13_upvw then
	else
		if not var4_upvw then
			var4_upvw = Instance.new("ScreenGui")
			var4_upvw.Name = "_FullscreenTestGui"
			var4_upvw.Parent = CoreGui_upvr
			var4_upvw.ScreenInsets = Enum.ScreenInsets.None
			var4_upvw:GetPropertyChangedSignal("AbsoluteSize"):Connect(handleSizeChange)
			var4_upvw:GetPropertyChangedSignal("AbsolutePosition"):Connect(handleSizeChange)
		end
		if not var5_upvw then
			var5_upvw = Instance.new("ScreenGui")
			var5_upvw.Name = "_DeviceTestGui"
			var5_upvw.Parent = CoreGui_upvr
			var5_upvw.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
			var5_upvw:GetPropertyChangedSignal("AbsoluteSize"):Connect(handleSizeChange)
			var5_upvw:GetPropertyChangedSignal("AbsolutePosition"):Connect(handleSizeChange)
		end
		handleSizeChange()
		var13_upvw = true
	end
end
function getHardwareSafeAreaInsets() -- Line 88
	--[[ Upvalues[4]:
		[1]: var4_upvw (read and write)
		[2]: var5_upvw (read and write)
		[3]: module_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
	]]
	local AbsolutePosition = var4_upvw.AbsolutePosition
	local AbsolutePosition_2 = var5_upvw.AbsolutePosition
	local var17 = AbsolutePosition_2 - AbsolutePosition
	local var18 = (AbsolutePosition + var4_upvw.AbsoluteSize) - (AbsolutePosition_2 + var5_upvw.AbsoluteSize)
	if module_upvr[UserInputService_upvr:GetPlatform()] then
		local var19 = var4_upvw.AbsoluteSize * 0.05
		var17 += var19
		var18 += var19
	end
	return {
		left = math.round(var17.X);
		top = math.round(var17.Y);
		right = math.round(var18.X);
		bottom = math.round(var18.Y);
	}
end
return {
	connect = function(arg1, arg2) -- Line 112, Named "connect"
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		init()
		return any_new_result1_upvr:connect(arg2)
	end;
	deviceInsets = function() -- Line 116, Named "deviceInsets"
		--[[ Upvalues[1]:
			[1]: module_upvw (read and write)
		]]
		init()
		return module_upvw
	end;
	diffInsets = diffInsets;
	hasExtraPlatformInset = function() -- Line 121, Named "hasExtraPlatformInset"
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: UserInputService_upvr (readonly)
		]]
		return module_upvr[UserInputService_upvr:GetPlatform()]
	end;
	fullscreenGui = function() -- Line 124, Named "fullscreenGui"
		--[[ Upvalues[1]:
			[1]: var4_upvw (read and write)
		]]
		init()
		return var4_upvw
	end;
}