-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:32
-- Luau version 6, Types version 3
-- Time taken: 0.000928 seconds

local Button_upvr = require(script.Parent.Parent.Generic.Button)
return function(arg1) -- Line 16
	--[[ Upvalues[1]:
		[1]: Button_upvr (readonly)
	]]
	return Button_upvr({
		Position = UDim2.fromScale(1, 0.5);
		Size = UDim2.fromScale(0.15, 1);
		AnchorPoint = Vector2.new(1, 0.5);
		Enabled = arg1.Enabled;
		Visible = arg1.Visible;
		Text = "Share Outfit";
		TextPosition = UDim2.fromScale(0.9, 0.5);
		TextSize = UDim2.fromScale(0.6, 0.8);
		Name = "Share";
		Image = "rbxassetid://13930689959";
		ImageTransparency = {
			Default = 0;
			Hover = 0.2;
			MouseDown = 0.5;
			Disabled = 0.3;
		};
		BackgroundTransparency = {
			Default = 1;
			Hover = 0.8;
			MouseDown = 0.5;
			Disabled = 0.6;
		};
		BackgroundColor3 = Color3.new(0.1, 0.1, 0.1);
		TextTransparency = {
			Default = 0;
			Hover = 0.2;
			MouseDown = 0.5;
			Disabled = 0.5;
		};
		Stroke = true;
		Callback = function(arg1_2, arg2) -- Line 56, Named "Callback"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not arg1.Creating:get() then
				arg1.Callback()
			end
		end;
	})
end