-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:38
-- Luau version 6, Types version 3
-- Time taken: 0.006221 seconds

local AdPlayer = script:FindFirstAncestor("AdPlayer")
if not require(AdPlayer.Flags).GetEnableLuaRewardTimerUI() then
	return nil
end
local function transparencyGradient_upvr(arg1) -- Line 33, Named "transparencyGradient"
	return NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(arg1 - 0.001, 0), NumberSequenceKeypoint.new(arg1 + 0.001, 1), NumberSequenceKeypoint.new(1, 1)})
end
local function rightRotation_upvr(arg1) -- Line 42, Named "rightRotation"
	return math.clamp(arg1 * 360, 0, 180)
end
local function _(arg1) -- Line 46, Named "leftRotation"
	return math.clamp(arg1 * 360 - 180, 0, 180)
end
local React_upvr = require(AdPlayer.Parent.React)
return function(arg1) -- Line 50
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: rightRotation_upvr (readonly)
		[3]: transparencyGradient_upvr (readonly)
	]]
	local thickness = arg1.thickness
	local var6 = thickness or 3
	if arg1.children then
		thickness = table.clone(arg1.children)
	else
		thickness = {}
	end
	thickness.rightClipper = React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(0.5, 1);
		ClipsDescendants = true;
		AnchorPoint = Vector2.new(1, 0.5);
		Position = UDim2.fromScale(1, 0.5);
		BackgroundTransparency = 1;
		ZIndex = 0;
	}, {
		arc = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, -var6 * 2, 1, -var6 * 2);
			BackgroundTransparency = 1;
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0, 0.5);
		}, {
			corner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0.5, 0);
			});
			stroke = React_upvr.createElement("UIStroke", {
				Color = arg1.ImageColor3;
				Transparency = arg1.ImageTransparency;
				Thickness = var6;
				Enabled = arg1.alpha:map(function(arg1_2) -- Line 76
					local var14
					if 0 >= math.clamp(arg1_2 * 360, 0, 180) then
						var14 = false
					else
						var14 = true
					end
					return var14
				end);
			}, {
				gradient = React_upvr.createElement("UIGradient", {
					Rotation = arg1.alpha:map(rightRotation_upvr);
					Transparency = transparencyGradient_upvr(0.5);
				});
			});
		});
	})
	thickness.leftClipper = React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(0.5, 1);
		ClipsDescendants = true;
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.fromScale(0, 0.5);
		BackgroundTransparency = 1;
		ZIndex = 0;
	}, {
		arc = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, -var6 * 2, 1, -var6 * 2);
			BackgroundTransparency = 1;
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(1, 0.5);
		}, {
			corner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0.5, 0);
			});
			stroke = React_upvr.createElement("UIStroke", {
				Color = arg1.ImageColor3;
				Transparency = arg1.ImageTransparency;
				Thickness = var6;
				Enabled = arg1.alpha:map(function(arg1_3) -- Line 110
					local var24
					if 0 >= math.clamp(arg1_3 * 360 - 180, 0, 180) then
						var24 = false
					else
						var24 = true
					end
					return var24
				end);
			}, {
				gradient = React_upvr.createElement("UIGradient", {
					Rotation = arg1.alpha:map(function(arg1_4) -- Line 115
						return math.clamp(arg1_4 * 360 - 180, 0, 180) - 180
					end);
					Transparency = arg1.alpha:map(function(arg1_5) -- Line 118
						--[[ Upvalues[1]:
							[1]: transparencyGradient_upvr (copied, readonly)
						]]
						return transparencyGradient_upvr(math.clamp(math.clamp(arg1_5 * 360 - 180, 0, 180) / 180, 0, 1) * 0.02 + 0.5)
					end);
				});
			});
		});
	})
	return React_upvr.createElement("Frame", {
		Position = arg1.Position;
		AnchorPoint = arg1.AnchorPoint;
		Size = arg1.Size;
		SizeConstraint = arg1.SizeConstraint;
		BackgroundTransparency = arg1.BackgroundTransparency;
		BackgroundColor3 = arg1.BackgroundColor3;
		Rotation = arg1.Rotation;
		ZIndex = arg1.ZIndex;
		LayoutOrder = arg1.LayoutOrder;
		Visible = arg1.Visible;
	}, thickness)
end