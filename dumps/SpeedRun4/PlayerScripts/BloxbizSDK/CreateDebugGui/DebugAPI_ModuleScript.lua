-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:57
-- Luau version 6, Types version 3
-- Time taken: 0.007328 seconds

local TweenService_upvr = game:GetService("TweenService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module_upvr = {}
local tbl_upvr = {}
local function tweenGuiColors_upvr(arg1, arg2, arg3) -- Line 11, Named "tweenGuiColors"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	for _, v in pairs(arg1) do
		local tbl_2 = {}
		if v:IsA("ImageLabel") then
			local tbl = {}
			tbl.ImageColor3 = arg2
			tbl_2 = tbl
		elseif v:IsA("Frame") then
			local tbl_4 = {}
			tbl_4.BackgroundColor3 = arg2
			tbl_2 = tbl_4
		end
		TweenService_upvr:Create(v, TweenInfo.new(arg3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), tbl_2):Play()
	end
end
function module_upvr.GiveAdNewColor(arg1) -- Line 27
	for _, v_2 in pairs(script.Parent.Colors:GetChildren()) do
		if v_2.Use.Value == false then
			v_2.Use.Value = true
			arg1:SetAttribute("AdColor", v_2.Value)
			return arg1:GetAttribute("AdColor")
		end
	end
	return nil
end
function module_upvr.RemoveAdColor(arg1) -- Line 40
	if arg1:GetAttribute("AdColor") then
		for _, v_3 in pairs(script.Parent.Colors:GetChildren()) do
			if v_3.Value == arg1:GetAttribute("AdColor") then
				v_3.Use.Value = false
				arg1:SetAttribute("AdColor", Color3.new())
			end
		end
	end
end
function module_upvr.GetAdColor(arg1) -- Line 51
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local AdColor = arg1:GetAttribute("AdColor")
	if not AdColor or AdColor and AdColor == Color3.new() then
		AdColor = module_upvr.GiveAdNewColor(arg1)
	end
	return AdColor
end
function module_upvr.videoDebugModeEnabled() -- Line 61
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	return require(LocalPlayer_upvr:WaitForChild("PlayerScripts"):WaitForChild("BloxbizSDK"):WaitForChild("ConfigReader")):read("DebugModeVideoAd")
end
local var26_upvw = false
function module_upvr.playVideoDebugAd() -- Line 70
	--[[ Upvalues[2]:
		[1]: var26_upvw (read and write)
		[2]: LocalPlayer_upvr (readonly)
	]]
	if var26_upvw then
	else
		var26_upvw = true
		require(LocalPlayer_upvr:WaitForChild("PlayerScripts"):WaitForChild("BloxbizSDK"):WaitForChild("ScreenshotTool")).TurnOnTargeting(require(script.VideoAd))
	end
end
function module_upvr.GetImpressions() -- Line 85
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var31 = 0
	for _, v_4 in pairs(tbl_upvr) do
		var31 += math.floor(v_4 / 10)
	end
	return var31
end
function module_upvr.UpdateImpressions(arg1, arg2) -- Line 95
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if arg1 == nil then
	else
		local Color3_fromRGB_result1 = Color3.fromRGB(255, 255, 255)
		if tbl_upvr[arg2.URL] == nil then
			tbl_upvr[arg2.URL] = 0
		end
		if 1.5 < arg2.Per and arg2.Angle <= 55 and 0.5 < arg2.Time then
			local var36
			if (arg2.Time) - (arg2.Time - tonumber(arg1.Row1.Time.Text)) <= 0.5 and 0.5 < arg2.Time then
				var36 = arg2.Time
			end
			tbl_upvr[arg2.URL] += var36
		end
		if 1.5 <= arg2.Per then
			arg1.Row2.ScreenPercentage.TextColor3 = Color3.fromRGB(43, 236, 12)
		else
			arg1.Row2.ScreenPercentage.TextColor3 = Color3_fromRGB_result1
		end
		if arg2.Angle <= 55 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1.Row2.Angle.TextColor3 = Color3.fromRGB(43, 236, 12)
		else
			arg1.Row2.Angle.TextColor3 = Color3_fromRGB_result1
		end
		arg1.Row1.Time.Text = string.format("%.2f", arg2.Time)
		arg1.Row2.ScreenPercentage.Text = string.format("%.2f", arg2.Per)..'%'
		arg1.Row2.Angle.Text = string.format("%.1f", arg2.Angle).."\xB0"
		if module_upvr.videoDebugModeEnabled() and arg1.Row1:FindFirstChild("VideoTime") then
			arg1.Row1.VideoTime.Text = string.format("%.2f", arg2.VideoTime)
		end
		script.Parent.ImpressionTime.Text = module_upvr.GetImpressions()
	end
end
function module_upvr.StartImpression(arg1, arg2) -- Line 142
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_GetAdColor_result1 = module_upvr.GetAdColor(arg1)
	if any_GetAdColor_result1 == nil then
		warn("[SuperBiz] Can't track ad, too many on screen")
		return nil
	end
	if not arg1:FindFirstChild("Colorize") then
		local clone = script.Parent.Item:Clone()
		local clone_3 = script.Parent.Colorize:Clone()
		clone_3.Parent = arg1
		clone.Parent = script.Parent.Main
		clone.Parent.Visible = true
		clone_3.Visible = true
		clone.Visible = true
		clone_3.BackgroundColor3 = any_GetAdColor_result1
		clone_3.UI.Value = clone
		clone_3.ZIndex = 99
		clone.Row2.BackgroundColor3 = any_GetAdColor_result1
		if arg2 then
			module_upvr.UpdateImpressions(clone, arg2)
		end
		if module_upvr.videoDebugModeEnabled() then
			module_upvr.playVideoDebugAd()
			local clone_2 = clone.Row1.Time:Clone()
			clone_2.Name = "VideoTime"
			clone_2.Parent = clone.Row1
			clone_2.TextXAlignment = Enum.TextXAlignment.Left
			clone_2.TextStrokeTransparency = 0.5
			clone_2.TextColor3 = Color3.fromRGB(0, 255, 255)
			clone.Row1.Time.TextXAlignment = Enum.TextXAlignment.Right
			clone_3.Transparency = 0.5
		end
		return clone
	end
	warn("[SuperBiz] New impression started before old impression ended")
	return nil
end
function module_upvr.EndImpression(arg1) -- Line 193
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg1:FindFirstChild("Colorize") then
		module_upvr.RemoveAdColor(arg1)
		arg1.Colorize.UI.Value:Destroy()
		arg1.Colorize:Destroy()
	end
end
local Workspace_upvr = game:GetService("Workspace")
function module_upvr.UpdateInteraction(arg1, arg2) -- Line 201
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Workspace_upvr (readonly)
		[3]: tweenGuiColors_upvr (readonly)
	]]
	if not arg1.ImageLabel:FindFirstChild("InteractionBorder") then
		local ImageLabel_2 = Instance.new("ImageLabel")
		ImageLabel_2.Name = "InteractionBorder"
		ImageLabel_2.Parent = arg1.ImageLabel
		ImageLabel_2.Size = UDim2.new(1, 0, 1, 0)
		ImageLabel_2.Image = "http://www.roblox.com/asset/?id=8462561342"
		ImageLabel_2.ImageColor3 = module_upvr.GetAdColor(arg1)
		ImageLabel_2.BackgroundTransparency = 1
	end
	if arg2 == "click" then
		arg1:SetAttribute("LastClickTime", Workspace_upvr:GetServerTimeNow())
		local tbl_upvr_2 = {ImageLabel_2}
		if arg1:FindFirstChild("Colorize") then
			table.insert(tbl_upvr_2, arg1.Colorize)
		end
		local Color3_fromRGB_result1_2_upvr = Color3.fromRGB(0, 141, 19)
		local any_GetAdColor_result1_2_upvr = module_upvr.GetAdColor(arg1)
		task.spawn(function() -- Line 226
			--[[ Upvalues[6]:
				[1]: tweenGuiColors_upvr (copied, readonly)
				[2]: tbl_upvr_2 (readonly)
				[3]: Color3_fromRGB_result1_2_upvr (readonly)
				[4]: Workspace_upvr (copied, readonly)
				[5]: arg1 (readonly)
				[6]: any_GetAdColor_result1_2_upvr (readonly)
			]]
			tweenGuiColors_upvr(tbl_upvr_2, Color3_fromRGB_result1_2_upvr, 0.15)
			task.wait(0.15)
			if 0.15 < Workspace_upvr:GetServerTimeNow() - arg1:GetAttribute("LastClickTime") then
				tweenGuiColors_upvr(tbl_upvr_2, any_GetAdColor_result1_2_upvr, 0.15)
			end
		end)
	elseif arg2 == "hover" then
		tbl_upvr_2 = {}
		local var53 = tbl_upvr_2
		var53[1] = ImageLabel_2
		if arg1:FindFirstChild("Colorize") then
			table.insert(var53, arg1.Colorize)
		end
	end
end
function module_upvr.EndInteraction(arg1) -- Line 246
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	local InteractionBorder_upvr = arg1.ImageLabel:FindFirstChild("InteractionBorder")
	if InteractionBorder_upvr then
		if not arg1:FindFirstChild("Colorize") then
			module_upvr.RemoveAdColor(arg1)
		end
		InteractionBorder_upvr.Name = "Destroyed"
		task.spawn(function() -- Line 256
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: InteractionBorder_upvr (readonly)
			]]
			TweenService_upvr:Create(InteractionBorder_upvr, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
				ImageTransparency = 1;
			}):Play()
			task.wait(0.15)
			InteractionBorder_upvr:Destroy()
		end)
	end
end
return module_upvr