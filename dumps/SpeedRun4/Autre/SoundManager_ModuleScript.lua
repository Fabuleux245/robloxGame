-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:26
-- Luau version 6, Types version 3
-- Time taken: 0.004283 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local tbl_upvr_3 = {
	BackgroundLoop = "RobloxMusic.ogg";
	Error = "Error.mp3";
	ButtonPress = "ButtonPress.mp3";
	MoveSelection = "MoveSelection.mp3";
	OverlayOpen = "OverlayOpen.mp3";
	PopUp = "PopUp.mp3";
	PurchaseSuccess = "PurchaseSuccess.mp3";
	ScreenChange = "ScreenChange.mp3";
	SideMenuSlideIn = "SideMenuSlideIn.mp3";
}
local function _(arg1, arg2, arg3, arg4) -- Line 33, Named "EaseOutCirc"
	local var3 = arg1 / arg4 - 1
	return arg3 * math.sqrt(1 - var3 * var3) + arg2
end
local RunService_upvr = game:GetService("RunService")
local function IsGameRunning_upvr() -- Line 39, Named "IsGameRunning"
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if not UserSettings().GameSettings:InStudioMode() or game:GetService("UserInputService"):GetPlatform() == Enum.Platform.Windows then
		return true
	end
	return RunService_upvr:IsRunning()
end
local tbl_upvr_2 = {}
local module_upvr_2 = require(CoreGui_upvr:FindFirstChild("RobloxGui"):FindFirstChild("Modules"):FindFirstChild("Shell"):FindFirstChild("Utility"))
local GuiService_upvr = game:GetService("GuiService")
function GetSoundManager() -- Line 46
	--[[ Upvalues[6]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: IsGameRunning_upvr (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: CoreGui_upvr (readonly)
		[6]: GuiService_upvr (readonly)
	]]
	local module_upvr = {
		SoundHolder = nil;
	}
	local tbl_upvr = {}
	local function _(arg1) -- Line 53, Named "FindSoundObjectForName"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_2 (copied, readonly)
		]]
		if tbl_upvr_2[arg1] then
			local popped_2 = table.remove(tbl_upvr_2[arg1], 1)
			if popped_2 then
				table.insert(tbl_upvr_2[arg1], popped_2)
				return popped_2
			end
		end
	end
	function module_upvr.CreateSound(arg1, arg2) -- Line 63
		--[[ Upvalues[1]:
			[1]: tbl_upvr_3 (copied, readonly)
		]]
		local Sound = Instance.new("Sound")
		Sound.Name = arg2
		Sound.SoundId = "rbxasset://sounds/ui/Shell/"..tbl_upvr_3[arg2]
		return Sound
	end
	function module_upvr.Play(arg1, arg2, arg3, arg4, arg5, ...) -- Line 74
		--[[ Upvalues[4]:
			[1]: tbl_upvr_3 (copied, readonly)
			[2]: tbl_upvr_2 (copied, readonly)
			[3]: tbl_upvr (readonly)
			[4]: IsGameRunning_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 6. Error Block 16 start (CF ANALYSIS FAILED)
		if tbl_upvr_2[arg2] then
			local popped = table.remove(tbl_upvr_2[arg2], 1)
			if popped then
				table.insert(tbl_upvr_2[arg2], popped)
				-- KONSTANTWARNING: GOTO [26] #24
			end
		end
		-- KONSTANTERROR: [5] 6. Error Block 16 end (CF ANALYSIS FAILED)
	end
	function module_upvr.IsPlaying(arg1, arg2) -- Line 103
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		local SOME_2 = module_upvr.SoundHolder:FindFirstChild(arg2)
		if SOME_2 then
			return SOME_2.IsPlaying
		end
		return false
	end
	function module_upvr.Stop(arg1, arg2, ...) -- Line 111
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: tbl_upvr_3 (copied, readonly)
		]]
		if module_upvr.SoundHolder then
			if tbl_upvr_3[arg2] then
				local SOME = module_upvr.SoundHolder:FindFirstChild(arg2)
				if SOME then
					SOME:Stop()
				end
			end
		end
	end
	function module_upvr.TweenSound(arg1, arg2, arg3, arg4) -- Line 120
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: module_upvr_2 (copied, readonly)
			[3]: IsGameRunning_upvr (copied, readonly)
		]]
		tbl_upvr[arg2] = nil
		module_upvr_2.PropertyTweener(arg2, "Volume", arg2.Volume, arg3, arg4, function(...) -- Line 123
			--[[ Upvalues[2]:
				[1]: IsGameRunning_upvr (copied, readonly)
				[2]: module_upvr_2 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 5. Error Block 6 start (CF ANALYSIS FAILED)
			local any_EaseInOutQuad_result1 = module_upvr_2.EaseInOutQuad(...)
			if not any_EaseInOutQuad_result1 then
				-- KONSTANTERROR: [10] 10. Error Block 3 start (CF ANALYSIS FAILED)
				any_EaseInOutQuad_result1 = 0
				-- KONSTANTERROR: [10] 10. Error Block 3 end (CF ANALYSIS FAILED)
			end
			do
				return any_EaseInOutQuad_result1
			end
			-- KONSTANTERROR: [4] 5. Error Block 6 end (CF ANALYSIS FAILED)
		end, true, function() -- Line 127
			--[[ Upvalues[3]:
				[1]: tbl_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
			]]
			tbl_upvr[arg2] = arg3
		end)
	end
	;(function() -- Line 138, Named "Initialize"
		--[[ Upvalues[7]:
			[1]: CoreGui_upvr (copied, readonly)
			[2]: module_upvr (readonly)
			[3]: tbl_upvr_3 (copied, readonly)
			[4]: tbl_upvr_2 (copied, readonly)
			[5]: GuiService_upvr (copied, readonly)
			[6]: IsGameRunning_upvr (copied, readonly)
			[7]: tbl_upvr (readonly)
		]]
		local Folder_2 = Instance.new("Folder")
		Folder_2.Name = "AppShellSounds"
		Folder_2.Parent = CoreGui_upvr
		module_upvr.SoundHolder = Folder_2
		for i, _ in pairs(tbl_upvr_3) do
			local Folder = Instance.new("Folder")
			Folder.Name = i
			Folder.Parent = module_upvr.SoundHolder
			tbl_upvr_2[i] = {}
			local any_CreateSound_result1_2 = module_upvr:CreateSound(i)
			any_CreateSound_result1_2.Parent = Folder
			table.insert(tbl_upvr_2[i], any_CreateSound_result1_2)
			local any_CreateSound_result1 = module_upvr:CreateSound(i)
			any_CreateSound_result1.Parent = Folder
			table.insert(tbl_upvr_2[i], any_CreateSound_result1)
			local any_CreateSound_result1_3 = module_upvr:CreateSound(i)
			any_CreateSound_result1_3.Parent = Folder
			table.insert(tbl_upvr_2[i], any_CreateSound_result1_3)
		end
		local var34_upvw
		GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject"):connect(function() -- Line 159
			--[[ Upvalues[2]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: var34_upvw (read and write)
			]]
			local SelectedCoreObject_2 = GuiService_upvr.SelectedCoreObject
			if SelectedCoreObject_2 then
				if var34_upvw then
					local MoveSelection = SelectedCoreObject_2:FindFirstChild("MoveSelection")
					if MoveSelection and MoveSelection:IsA("Sound") then
						MoveSelection.Volume = 0.35
						MoveSelection:Play()
					end
				end
			end
			var34_upvw = SelectedCoreObject_2
		end)
		if not IsGameRunning_upvr() then
			spawn(function() -- Line 172
				--[[ Upvalues[2]:
					[1]: IsGameRunning_upvr (copied, readonly)
					[2]: tbl_upvr (copied, readonly)
				]]
				while not IsGameRunning_upvr() do
					wait(0.1)
				end
				for i_2, v_2 in pairs(tbl_upvr) do
					i_2.Volume = v_2
				end
			end)
		end
	end)()
	return module_upvr
end
return GetSoundManager()