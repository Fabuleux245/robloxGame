-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:06
-- Luau version 6, Types version 3
-- Time taken: 0.001084 seconds

local Parent = script.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local _ = require(Utils:WaitForChild("Fusion"))
local CurrentCamera_upvr = workspace.CurrentCamera
local UserInputService_upvr = game:GetService("UserInputService")
local function _() -- Line 20, Named "IsMobile"
	--[[ Upvalues[2]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	local ViewportSize = CurrentCamera_upvr.ViewportSize
	local var7
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var7 = false
		return ViewportSize.Y <= 800
	end
	if ViewportSize.X <= 1200 or INLINED() then
		var7 = UserInputService_upvr.TouchEnabled
	end
	return var7
end
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local ActionButton_upvr = require(Parent:WaitForChild("CatalogClient"):WaitForChild("Components").ActionButton)
return function(arg1) -- Line 28
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: ActionButton_upvr (readonly)
	]]
	local any_GetValues_result1 = module_upvr.GetValues(arg1, {
		Parent = module_upvr.Nil;
		OnClose = module_upvr.Callback;
		Visible = true;
		LayoutOrder = 2;
	})
	local ActionButton_upvr_result1 = ActionButton_upvr({
		Parent = any_GetValues_result1.Parent;
		AnchorPoint = Vector2.new(1, 0.5);
		LayoutOrder = any_GetValues_result1.LayoutOrder;
		Position = UDim2.new(1, -60, 0, 20);
		Size = UDim2.new(0, 80, 1, 0);
		Image = "rbxassetid://14542644751";
		Text = "Close";
		Visible = any_GetValues_result1.Visible;
		OnClick = any_GetValues_result1.OnClose;
	})
	ActionButton_upvr_result1.Name = "Close"
	return ActionButton_upvr_result1
end