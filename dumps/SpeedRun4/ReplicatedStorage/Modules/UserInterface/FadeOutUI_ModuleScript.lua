-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:27
-- Luau version 6, Types version 3
-- Time taken: 0.002148 seconds

local module_upvr_5 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("Tweens"))
local tbl_upvr = {
	FadeUI = nil;
}
function module_upvr_5.FadeCancel() -- Line 33
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local FadeUI_2 = tbl_upvr.FadeUI
	if FadeUI_2 then
		FadeUI_2.ScreenGui:Destroy()
		tbl_upvr.FadeUI = nil
	end
end
function module_upvr_5.FadeIn() -- Line 45
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local FadeUI_3 = tbl_upvr.FadeUI
	if FadeUI_3 then
		module_upvr.Begin(FadeUI_3.Tween, os.clock(), 1)
	end
end
local module_upvr_3 = require(Modules:WaitForChild("Utility"))
local module_upvr_4 = require(Modules:WaitForChild("UIShared"))
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Theme"))
function module_upvr_5.FadeOut() -- Line 55
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: module_upvr_4 (readonly)
		[5]: module_upvr_2 (readonly)
	]]
	local FadeUI = tbl_upvr.FadeUI
	if not FadeUI then
		local tbl = {
			Tween = module_upvr.new(1, 0.5);
			ScreenGui = module_upvr_3.I("ScreenGui", module_upvr_4.Properties.ScreenGui, {
				Name = "FadeOutUI";
				DisplayOrder = module_upvr_2.DisplayOrder_FadeOutUI;
				Parent = module_upvr_4.PlayerGui;
			});
			Frame = module_upvr_3.I("Frame", module_upvr_4.Properties.Centered, {
				BackgroundColor3 = module_upvr_2.Black;
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(2, 2);
				Parent = tbl.ScreenGui;
			});
		}
		tbl_upvr.FadeUI = tbl
		FadeUI = tbl
	end
	assert(FadeUI)
	module_upvr.Begin(FadeUI.Tween, os.clock(), 0)
end
function module_upvr_5.RenderStepped(arg1, arg2) -- Line 91
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_upvr_5 (readonly)
	]]
	local FadeUI_4 = tbl_upvr.FadeUI
	if FadeUI_4 then
		module_upvr.Update(FadeUI_4.Tween, arg2)
		if module_upvr.IsAtTarget(FadeUI_4.Tween, 1) then
			module_upvr_5.FadeCancel()
			return
		end
		if FadeUI_4.Tween.Dirty then
			FadeUI_4.Frame.BackgroundTransparency = FadeUI_4.Tween.Value
		end
	end
end
return module_upvr_5