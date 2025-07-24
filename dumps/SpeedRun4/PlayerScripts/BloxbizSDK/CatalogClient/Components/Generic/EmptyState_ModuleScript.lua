-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:27
-- Luau version 6, Types version 3
-- Time taken: 0.004109 seconds

local Button_upvr = require(script.Parent.Parent.Generic.Button)
local module_upvr = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
return function(arg1) -- Line 20
	--[[ Upvalues[2]:
		[1]: Button_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var4
	if arg1.Action then
		local tbl = {
			Name = "Action";
			Position = UDim2.fromScale(0.5, 0.75);
			Size = UDim2.fromScale(0.5, 1);
			AnchorPoint = Vector2.new(0.5, 0);
		}
		local udim = UDim.new(0.2, 0)
		tbl.CornerRadius = udim
		if arg1.Enabled ~= nil then
			udim = arg1.Enabled
		else
			udim = true
		end
		tbl.Enabled = udim
		tbl.Text = arg1.Action
		tbl.ImageTransparency = {
			Default = 0;
			Hover = 0.2;
			MouseDown = 0.5;
			Disabled = 0.8;
		}
		tbl.BackgroundColor3 = {
			Default = Color3.new(1, 1, 1);
			Hover = Color3.new(1, 1, 1);
			MouseDown = Color3.new(1, 1, 1);
			Disabled = Color3.new(1, 1, 1);
		}
		tbl.BackgroundTransparency = {
			Default = 0;
			Hover = 0.2;
			MouseDown = 0.5;
			Disabled = 0.8;
		}
		tbl.TextColor3 = {
			Default = Color3.new(0, 0, 0);
			Hover = Color3.new(0, 0, 0);
			MouseDown = Color3.new(0, 0, 0);
			Disabled = Color3.new(0, 0, 0);
		}
		tbl.TextTransparency = {
			Default = 0;
			Hover = 0.2;
			MouseDown = 0.5;
			Disabled = 0.8;
		}
		function tbl.Callback(arg1_2, arg2) -- Line 67
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_2:get() and arg1.Callback then
				arg1.Callback()
			end
		end
		var4 = Button_upvr(tbl)
	end
	return module_upvr.New("Frame")({
		Name = "EmptyStateFrame";
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0.3);
		Visible = arg1.Visible;
		[module_upvr.Children] = {module_upvr.New("Frame")({
			Name = "EmptyStateFrame";
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0.5, 0.3);
			Size = UDim2.new(0.5, 0, 0.2, 0);
			Visible = true;
			[module_upvr.Children] = {module_upvr.New("TextLabel")({
				Name = "Info";
				Text = arg1.Description;
				TextColor3 = Color3.fromRGB(255, 255, 255);
				TextScaled = true;
				TextSize = 14;
				TextWrapped = true;
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				BackgroundTransparency = 1;
				Position = UDim2.fromScale(0.5, 0);
				Size = UDim2.fromScale(1, 0.5);
			}), var4};
		})};
	})
end