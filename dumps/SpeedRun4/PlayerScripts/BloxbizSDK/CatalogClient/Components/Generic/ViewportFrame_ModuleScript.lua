-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:30
-- Luau version 6, Types version 3
-- Time taken: 0.006451 seconds

local Utils = script.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local tbl_2_upvr = {}
local var1_2_upvr = require(Utils)
local mouse_upvr = game:GetService("Players").LocalPlayer:GetMouse()
game:GetService("RunService"):BindToRenderStep("VIEWPORT_ROTATE", Enum.RenderPriority.Last.Value, function(arg1) -- Line 43
	--[[ Upvalues[3]:
		[1]: tbl_2_upvr (readonly)
		[2]: var1_2_upvr (readonly)
		[3]: mouse_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("Feed Preview Rotate")
	local pairs_result1_2, pairs_result2, pairs_result3 = pairs(tbl_2_upvr)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [107] 78. Error Block 33 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [110.5]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.Orientation = CFrame.fromEulerAnglesYXZ(-0.3490658503988659, nil.Theta, 0)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil.IsVisible then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
		nil.Camera.CFrame = CFrame.new(nil.Source) * nil.Orientation * CFrame.new(0, 0, 6)
	end
	debug.profileend()
	-- KONSTANTERROR: [107] 78. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.7]
	-- KONSTANTERROR: [9] 8. Error Block 2 end (CF ANALYSIS FAILED)
end)
local function BindRotateModel_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 107, Named "BindRotateModel"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if arg3 and arg4 and arg3.PrimaryPart then
		local tbl = {}
		tbl.AutoRotate = arg5
		tbl.ManualRotate = arg6
		tbl.MouseDown = arg2
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.Source = arg3.PrimaryPart.Position
		tbl.Camera = arg4
		tbl.Theta = 2.356194490192345
		tbl.Rotate = 0
		tbl.Orientation = CFrame.new()
		tbl.Frame = arg7
		tbl.Track = arg8
		tbl_2_upvr[arg1] = tbl
	end
end
local function _(arg1) -- Line 131, Named "UnbindRotateModel"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	tbl_2_upvr[arg1] = nil
end
local HttpService_upvr = game:GetService("HttpService")
local module_upvr = require(Utils:WaitForChild("Fusion"))
return function(arg1) -- Line 135
	--[[ Upvalues[4]:
		[1]: HttpService_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: BindRotateModel_upvr (readonly)
	]]
	local var16_upvr = "AvatarModelRotation"..HttpService_upvr:GenerateGUID()
	local any_Value_result1_upvr = module_upvr.Value(false)
	local Model_upvw = arg1.Model
	local var19 = module_upvr.New("Camera")({})
	local var20_upvw
	local tbl_3 = {
		Name = "ViewportFrame";
	}
	local AnchorPoint = arg1.AnchorPoint
	if not AnchorPoint then
		AnchorPoint = Vector2.new(0.5, 0.5)
	end
	tbl_3.AnchorPoint = AnchorPoint
	tbl_3.BackgroundColor3 = Color3.fromRGB(145, 155, 175)
	tbl_3.BackgroundTransparency = 1
	local Position = arg1.Position
	if not Position then
		Position = UDim2.fromScale(0.5, 0.5)
	end
	tbl_3.Position = Position
	Position = arg1.Size
	local var24 = Position
	if not var24 then
		var24 = UDim2.fromScale(1, 1)
	end
	tbl_3.Size = var24
	tbl_3.CurrentCamera = var19
	tbl_3[module_upvr.Cleanup] = function() -- Line 156
		--[[ Upvalues[2]:
			[1]: var16_upvr (readonly)
			[2]: tbl_2_upvr (copied, readonly)
		]]
		tbl_2_upvr[var16_upvr] = nil
	end
	tbl_3[module_upvr.Children] = {var19, module_upvr.New("WorldModel")({
		Name = "WorldModel";
		[module_upvr.Ref] = module_upvr.Value(nil);
		[module_upvr.Children] = {Model_upvw};
		[module_upvr.OnEvent("ChildAdded")] = function(arg1_2) -- Line 174
			--[[ Upvalues[1]:
				[1]: Model_upvw (read and write)
			]]
			local var30 = Model_upvw
			if var30 then
				var30:Destroy()
				Model_upvw = nil
			end
			if arg1_2:IsA("Model") or arg1_2:IsA("Accessory") then
				Model_upvw = nil
			end
		end;
	}), module_upvr.New("TextButton")({
		Name = "RotateButton";
		Text = "";
		TextSize = 14;
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		[module_upvr.OnEvent("InputBegan")] = function(arg1_3) -- Line 197
			--[[ Upvalues[2]:
				[1]: any_Value_result1_upvr (readonly)
				[2]: var20_upvw (read and write)
			]]
			if arg1_3.UserInputType == Enum.UserInputType.Touch or arg1_3.UserInputType == Enum.UserInputType.MouseButton1 then
				any_Value_result1_upvr:set(true)
				var20_upvw = Vector2.new(arg1_3.Position.X, arg1_3.Position.Y)
			end
		end;
		[module_upvr.OnEvent("InputEnded")] = function(arg1_4) -- Line 205
			--[[ Upvalues[3]:
				[1]: any_Value_result1_upvr (readonly)
				[2]: var20_upvw (read and write)
				[3]: arg1 (readonly)
			]]
			if arg1_4.UserInputType == Enum.UserInputType.Touch or arg1_4.UserInputType == Enum.UserInputType.MouseButton1 then
				any_Value_result1_upvr:set(false)
				if var20_upvw and (Vector2.new(arg1_4.Position.X, arg1_4.Position.Y) - var20_upvw).Magnitude <= 5 and arg1.OnClick then
					arg1.OnClick()
				end
			end
		end;
		[module_upvr.OnEvent("MouseLeave")] = function() -- Line 216
			--[[ Upvalues[1]:
				[1]: any_Value_result1_upvr (readonly)
			]]
			any_Value_result1_upvr:set(false)
		end;
	})}
	local var35 = module_upvr.New("ViewportFrame")(tbl_3)
	if Model_upvw then
		BindRotateModel_upvr(var16_upvr, any_Value_result1_upvr, Model_upvw, var19, arg1.AutoRotateEnabled or false, arg1.RotateEnabled or false, var35, arg1.AnimTrack)
	end
	return var35
end