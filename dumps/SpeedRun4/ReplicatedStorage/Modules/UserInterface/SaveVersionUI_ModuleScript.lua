-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:11
-- Luau version 6, Types version 3
-- Time taken: 0.002743 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local var5_upvw = false
local module_upvr_3 = require(Modules:WaitForChild("Utility"))
local module_upvr_4 = require(Modules:WaitForChild("UIShared"))
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Theme"))
local RunService_upvr = game:GetService("RunService")
require(Modules:WaitForChild("ClientData")).Signals.SaveLoadStateChanged:Connect(function(arg1) -- Line 27
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: module_upvr_3 (readonly)
		[4]: module_upvr_4 (readonly)
		[5]: module_upvr_2 (readonly)
		[6]: RunService_upvr (readonly)
	]]
	if arg1 == module_upvr.SaveLoadState.InvalidVersion and not var5_upvw then
		var5_upvw = true
		local var11_upvr = "Hey. You're in a really old version of the game.\n".."Please leave and join a new server, thank you."
		local any_I_result1_upvr = module_upvr_3.I("TextLabel", module_upvr_4.Properties.Text, {
			FontFace = module_upvr_2.FontFaceBoldItalic;
			Text = var11_upvr;
			TextColor3 = module_upvr_2.TextWarningColor1;
			Parent = module_upvr_3.I("ScreenGui", module_upvr_4.Properties.ScreenGui, {
				Name = "SaveVersionUI";
				DisplayOrder = module_upvr_2.DisplayOrder_SaveVersionUI;
				ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets;
				Parent = module_upvr_4.PlayerGui;
			});
		})
		local any_CachedTextBounds_FromLabel_result1_upvr = module_upvr_4.CachedTextBounds_FromLabel(any_I_result1_upvr)
		local any_I_result1_upvr_3 = module_upvr_3.I("UIStroke", {
			Color = module_upvr_2.TextStrokeColor1;
			Parent = any_I_result1_upvr;
		})
		local var19_upvw = 0
		local any_I_result1_upvr_2 = module_upvr_3.I("UIGradient", {
			Color = module_upvr_4.ColorSequenceCreate(module_upvr_2.Gray80, module_upvr_2.White, function(arg1_2) -- Line 79
				return 1 - (1 - 2 * arg1_2) ^ 2
			end, 10);
			Rotation = 10;
			Parent = any_I_result1_upvr;
		})
		RunService_upvr:BindToRenderStep("SaveVersionUI_UPDATE", Enum.RenderPriority.Last.Value + 1, function(arg1_3) -- Line 91, Named "RenderStepped"
			--[[ Upvalues[7]:
				[1]: module_upvr_4 (copied, readonly)
				[2]: any_CachedTextBounds_FromLabel_result1_upvr (readonly)
				[3]: var11_upvr (readonly)
				[4]: any_I_result1_upvr (readonly)
				[5]: any_I_result1_upvr_3 (readonly)
				[6]: var19_upvw (read and write)
				[7]: any_I_result1_upvr_2 (readonly)
			]]
			local var21 = 2 * module_upvr_4.EmSize
			if module_upvr_4.CachedTextBoundsUpdate(any_CachedTextBounds_FromLabel_result1_upvr, var11_upvr, var21, module_upvr_4.ViewportSize.X * 0.75 // 1) or module_upvr_4.EmSizeDirty then
				any_I_result1_upvr.Position = UDim2.fromOffset((module_upvr_4.ViewportSize.X * 0.5 - any_CachedTextBounds_FromLabel_result1_upvr.X * 0.5) // 1, module_upvr_4.EmSize * 0.5 // 1)
				any_I_result1_upvr.Size = UDim2.fromOffset(any_CachedTextBounds_FromLabel_result1_upvr.X, any_CachedTextBounds_FromLabel_result1_upvr.Y)
				any_I_result1_upvr.TextSize = var21
				any_I_result1_upvr_3.Thickness = module_upvr_4.ScaledSize.StrokeThin
			end
			var19_upvw = (var19_upvw + arg1_3) % 4
			any_I_result1_upvr_2.Offset = Vector2.new(math.sin(var19_upvw / 4 * 2 * math.pi) * 0.5, 0)
		end)
	end
end)
return {}