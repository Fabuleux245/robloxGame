-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:59
-- Luau version 6, Types version 3
-- Time taken: 0.005277 seconds

local Workspace_upvr = game:GetService("Workspace")
local UserInputService_upvr = game:GetService("UserInputService")
local ObservableValue = require(script:FindFirstAncestor("ChromeShared").Service.ChromeUtils).ObservableValue
local any_new_result1_upvr_2 = ObservableValue.new(Vector2.new(0, 0))
local any_new_result1_upvr_3 = ObservableValue.new(false)
function createViewportInfo(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var11
	if arg1.X >= arg1.Y then
		var11 = false
	else
		var11 = true
	end
	local any_GetPlatform_result1_3 = UserInputService_upvr:GetPlatform()
	if any_GetPlatform_result1_3 ~= Enum.Platform.IOS then
		if any_GetPlatform_result1_3 ~= Enum.Platform.Android then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	end
	local module = {}
	module.size = arg1
	module.portraitOrientation = var11
	if true then
		if var11 then
			if arg1.X >= 360 then
			else
			end
		end
	end
	module.tinyPortrait = true
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.isMobileDevice = true
	return module
end
local any_new_result1_upvr = ObservableValue.new(createViewportInfo(Vector2.zero))
function updateViewportSize(arg1) -- Line 39
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr_2 (readonly)
		[2]: any_new_result1_upvr (readonly)
	]]
	local vector2 = Vector2.new(arg1.X, arg1.Y)
	any_new_result1_upvr_2:set(vector2)
	any_new_result1_upvr:set(createViewportInfo(vector2))
end
local var17_upvw
function setCurrentCamera(arg1) -- Line 45
	--[[ Upvalues[3]:
		[1]: var17_upvw (read and write)
		[2]: UserInputService_upvr (readonly)
		[3]: any_new_result1_upvr_3 (readonly)
	]]
	if var17_upvw then
		pcall(function() -- Line 47
			--[[ Upvalues[1]:
				[1]: var17_upvw (copied, read and write)
			]]
			var17_upvw:Disconnect()
		end)
		var17_upvw = nil
	end
	if arg1 then
		local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
		local var20 = true
		if any_GetPlatform_result1 ~= Enum.Platform.IOS then
			if any_GetPlatform_result1 ~= Enum.Platform.Android then
				var20 = false
			else
				var20 = true
			end
		end
		any_new_result1_upvr_3:set(var20)
		var17_upvw = arg1:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 56
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			updateViewportSize(arg1.ViewportSize)
		end)
		updateViewportSize(arg1.ViewportSize)
	end
end
Workspace_upvr:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 63
	--[[ Upvalues[1]:
		[1]: Workspace_upvr (readonly)
	]]
	setCurrentCamera(Workspace_upvr.CurrentCamera)
end)
setCurrentCamera(Workspace_upvr.CurrentCamera)
return {
	screenSize = any_new_result1_upvr_2;
	mobileDevice = any_new_result1_upvr_3;
	viewport = any_new_result1_upvr;
	isSmallTouchScreen = function() -- Line 72, Named "isSmallTouchScreen"
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr_2 (readonly)
			[2]: UserInputService_upvr (readonly)
		]]
		local any_get_result1 = any_new_result1_upvr_2:get()
		local TouchEnabled = UserInputService_upvr.TouchEnabled
		if TouchEnabled then
			TouchEnabled = true
			if any_get_result1.Y >= 500 then
				if any_get_result1.X >= 700 then
					TouchEnabled = false
				else
					TouchEnabled = true
				end
			end
		end
		return TouchEnabled
	end;
}