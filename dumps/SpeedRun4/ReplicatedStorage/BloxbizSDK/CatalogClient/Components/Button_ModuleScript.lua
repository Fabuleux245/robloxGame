-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:28
-- Luau version 6, Types version 3
-- Time taken: 0.002341 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local New_upvr = module.New
local Computed_upvr = module.Computed
local OnEvent_upvr = module.OnEvent
local Children_upvr = module.Children
local ScaledText_upvr = require(script.Parent.ScaledText)
return function(arg1) -- Line 22
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: OnEvent_upvr (readonly)
		[5]: Children_upvr (readonly)
		[6]: ScaledText_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		Parent = module_upvr.Nil;
		LayoutOrder = 0;
		AnchorPoint = Vector2.zero;
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		BackgroundColor3 = Color3.new(1, 1, 1);
		TextColor3 = Color3.new(0, 0, 0);
		Text = "";
		Disabled = false;
		OnClick = module_upvr.Callback;
	})
	return New_upvr("TextButton")({
		Parent = any_GetValues_result1_upvw.Parent;
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
		Position = any_GetValues_result1_upvw.Position;
		Size = any_GetValues_result1_upvw.Size;
		BackgroundColor3 = any_GetValues_result1_upvw.BackgroundColor3;
		AutoButtonColor = Computed_upvr(function() -- Line 46
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return not any_GetValues_result1_upvw.Disabled:get()
		end);
		Text = "";
		[OnEvent_upvr("Activated")] = function() -- Line 51
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			if not any_GetValues_result1_upvw.Disabled:get() then
				any_GetValues_result1_upvw.OnClick:get()()
			end
		end;
		[Children_upvr] = {New_upvr("UICorner")({
			CornerRadius = UDim.new(0.2, 0);
		}), ScaledText_upvr({
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(0.8, 0.5);
			TextColor3 = any_GetValues_result1_upvw.TextColor3;
			Text = any_GetValues_result1_upvw.Text;
		})};
	})
end