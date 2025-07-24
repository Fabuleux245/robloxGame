-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:49
-- Luau version 6, Types version 3
-- Time taken: 0.002056 seconds

local Fusion = require(script.Parent.Parent.Parent.Gui.Parent.Parent.Utils.Fusion)
local Value_upvr = Fusion.Value
local Tween_upvr = Fusion.Tween
local TweenInfo_new_result1_upvr = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
local New_upvr = Fusion.New
local Computed_upvr = Fusion.Computed
local Children_upvr = Fusion.Children
return function(arg1) -- Line 16
	--[[ Upvalues[6]:
		[1]: Value_upvr (readonly)
		[2]: Tween_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
		[4]: New_upvr (readonly)
		[5]: Computed_upvr (readonly)
		[6]: Children_upvr (readonly)
	]]
	local udim2_upvr = UDim2.fromScale(0, 0)
	local var3_result1_upvr = Value_upvr(udim2_upvr)
	var3_result1_upvr:set(UDim2.fromScale(0.9, 0.175))
	task.delay(1, function() -- Line 24
		--[[ Upvalues[3]:
			[1]: var3_result1_upvr (readonly)
			[2]: udim2_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		var3_result1_upvr:set(udim2_upvr)
		task.wait(0.2)
		arg1.EnablePopupMessage:set(false)
	end)
	local module = {
		Name = "Popup";
		Position = UDim2.fromScale(0.5, 0.1);
		AnchorPoint = Vector2.new(0.5, 0);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundColor3 = Color3.fromRGB(25, 25, 25);
		ZIndex = 10;
	}
	local Tween_upvr_result1_upvr = Tween_upvr(var3_result1_upvr, TweenInfo_new_result1_upvr)
	module.Size = Computed_upvr(function() -- Line 40
		--[[ Upvalues[1]:
			[1]: Tween_upvr_result1_upvr (readonly)
		]]
		return Tween_upvr_result1_upvr:get()
	end)
	module[Children_upvr] = {New_upvr("TextLabel")({
		Size = UDim2.fromScale(0.8, 0.6);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Text = "Popfeed actions aren't supported in this experience.";
		TextScaled = true;
		FontFace = Font.fromEnum(Enum.Font.Arial);
		TextColor3 = Color3.fromRGB(255, 255, 255);
		ZIndex = 10;
	}), New_upvr("UICorner")({
		CornerRadius = UDim.new(0.5, 0);
	}), New_upvr("UIStroke")({
		Color = Color3.fromRGB(50, 50, 50);
		Thickness = 2;
	})}
	return New_upvr("Frame")(module)
end