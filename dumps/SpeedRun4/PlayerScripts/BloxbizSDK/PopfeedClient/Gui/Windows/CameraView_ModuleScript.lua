-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:45
-- Luau version 6, Types version 3
-- Time taken: 0.015685 seconds

local Parent = script.Parent.Parent.Parent
local Gui = Parent.Gui
local Fusion_upvr = require(Gui.Parent.Parent.Utils.Fusion)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local CurrentCamera_upvr = workspace.CurrentCamera
local OverlapParams_new_result1_upvr = OverlapParams.new()
OverlapParams_new_result1_upvr.BruteForceAllSlow = true
local var7_upvw
local function specialMeshIt_upvr(arg1) -- Line 31, Named "specialMeshIt"
	local Part = Instance.new("Part")
	local SpecialMesh = Instance.new("SpecialMesh")
	SpecialMesh.MeshId = arg1.MeshId
	SpecialMesh.TextureId = arg1.TextureID
	SpecialMesh.Scale = arg1.Size / arg1.MeshSize
	SpecialMesh.Parent = Part
	Part.Anchored = true
	Part.Name = arg1.Name
	Part.CFrame = arg1.CFrame
	Part.BrickColor = arg1.BrickColor
	Part.Parent = arg1.Parent
	arg1:Destroy()
	return Part
end
local function getBackground_upvr(arg1) -- Line 51, Named "getBackground"
	--[[ Upvalues[2]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: specialMeshIt_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var10
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [91] 69. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [91] 69. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 31 start (CF ANALYSIS FAILED)
	if not var10 then
	end
	if var10 then
		-- KONSTANTWARNING: GOTO [91] #69
	end
	-- KONSTANTERROR: [10] 9. Error Block 31 end (CF ANALYSIS FAILED)
end
local function _() -- Line 91, Named "stopAnimation"
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	if var7_upvw then
		var7_upvw:Stop()
		var7_upvw = nil
	end
end
local function playAnimation_upvr(arg1) -- Line 98, Named "playAnimation"
	--[[ Upvalues[2]:
		[1]: var7_upvw (read and write)
		[2]: LocalPlayer_upvr (readonly)
	]]
	if var7_upvw then
		var7_upvw:Stop()
		var7_upvw = nil
	end
	if arg1 == "" then
	else
		local Character = LocalPlayer_upvr.Character
		if not Character then return end
		local Humanoid = Character:FindFirstChild("Humanoid")
		if not Humanoid then return end
		local Animation = Instance.new("Animation")
		Animation.AnimationId = arg1
		var7_upvw = Humanoid:WaitForChild("Animator"):LoadAnimation(Animation)
		var7_upvw.Looped = true
		var7_upvw:Play()
	end
end
local tbl_upvw = {}
local function hideAllGuis_upvr() -- Line 127, Named "hideAllGuis"
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: tbl_upvw (read and write)
	]]
	for _, v in LocalPlayer_upvr.PlayerGui:GetChildren() do
		if v:IsA("ScreenGui") and v.Name ~= "CameraView" and v.Enabled == true then
			v.Enabled = false
			table.insert(tbl_upvw, v)
		end
	end
end
local function _() -- Line 136, Named "enableGuis"
	--[[ Upvalues[1]:
		[1]: tbl_upvw (read and write)
	]]
	for _, v_2 in tbl_upvw do
		v_2.Enabled = true
	end
	tbl_upvw = {}
end
local function prepareHumanoids_upvr(arg1, arg2) -- Line 143, Named "prepareHumanoids"
	for i_3 in arg1 do
		local class_Model = i_3:FindFirstAncestorOfClass("Model")
		if class_Model then
			for _, v_3 in class_Model:GetChildren() do
				if v_3:IsA("BasePart") then
					({})[v_3.Name] = {v_3.CFrame:GetComponents()}
				end
			end
			class_Model.Archivable = true
			local clone = class_Model:Clone()
			local Animate = clone:FindFirstChild("Animate", true)
			if Animate then
				Animate:Destroy()
			end
			local class_Animator = clone:FindFirstChildWhichIsA("Animator", true)
			if class_Animator then
				class_Animator:Destroy()
			end
			local class_FaceControls = clone:FindFirstChildWhichIsA("FaceControls", true)
			if class_FaceControls then
				class_FaceControls:Destroy()
			end
			for i_5, v_4 in {} do
				local SOME = clone:FindFirstChild(i_5)
				if SOME then
					local class_Motor6D = SOME:FindFirstChildOfClass("Motor6D")
					if class_Motor6D then
						class_Motor6D:Destroy()
					end
					SOME.Anchored = true
					SOME.CFrame = CFrame.new(table.unpack(v_4))
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			clone.Parent = arg2
			class_Model.Archivable = false
		end
	end
end
local Value_upvr = Fusion_upvr.Value
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local RBLXSerialize_upvr = require(Parent.Parent.Utils.RBLXSerialize)
local Screen_upvr = require(Gui.Components.Screen)
local Computed_upvr = Fusion_upvr.Computed
local New_upvr = Fusion_upvr.New
local Ref_upvr = Fusion_upvr.Ref
local Children_upvr = Fusion_upvr.Children
local ForValues_upvr = Fusion_upvr.ForValues
local OnEvent_upvr = Fusion_upvr.OnEvent
local ForPairs_upvr = Fusion_upvr.ForPairs
return function(arg1) -- Line 192
	--[[ Upvalues[20]:
		[1]: hideAllGuis_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: CurrentCamera_upvr (readonly)
		[5]: OverlapParams_new_result1_upvr (readonly)
		[6]: getBackground_upvr (readonly)
		[7]: RBLXSerialize_upvr (readonly)
		[8]: prepareHumanoids_upvr (readonly)
		[9]: var7_upvw (read and write)
		[10]: Screen_upvr (readonly)
		[11]: Computed_upvr (readonly)
		[12]: tbl_upvw (read and write)
		[13]: New_upvr (readonly)
		[14]: Ref_upvr (readonly)
		[15]: Children_upvr (readonly)
		[16]: ForValues_upvr (readonly)
		[17]: OnEvent_upvr (readonly)
		[18]: Fusion_upvr (readonly)
		[19]: ForPairs_upvr (readonly)
		[20]: playAnimation_upvr (readonly)
	]]
	hideAllGuis_upvr()
	local var39_result1_upvr_3 = Value_upvr()
	local var39_result1_upvr = Value_upvr(true)
	local var39_result1_upvr_4 = Value_upvr(false)
	local var39_result1_upvr_2 = Value_upvr(false)
	local function _(arg1_2) -- Line 214, Named "changeOutfit"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.ChangeOutfit:FireServer(arg1_2)
	end
	return Screen_upvr({
		Name = "CameraView";
		Enabled = Computed_upvr(function() -- Line 269
			--[[ Upvalues[1]:
				[1]: var39_result1_upvr (readonly)
			]]
			return var39_result1_upvr:get()
		end);
		Cleanup = function() -- Line 273, Named "Cleanup"
			--[[ Upvalues[1]:
				[1]: tbl_upvw (copied, read and write)
			]]
			for _, v_5 in tbl_upvw do
				v_5.Enabled = true
			end
			tbl_upvw = {}
		end;
		Children = {New_upvr("ViewportFrame")({
			Size = UDim2.fromScale(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			Visible = false;
			[Ref_upvr] = var39_result1_upvr_3;
			[Children_upvr] = {New_upvr("UICorner")({
				CornerRadius = UDim.new(0, 8);
			})};
		}), New_upvr("Frame")({
			Name = "Outfits";
			Size = UDim2.fromScale(0.25, 0.6);
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			BackgroundTransparency = 1;
			Visible = Computed_upvr(function() -- Line 302
				--[[ Upvalues[1]:
					[1]: var39_result1_upvr_4 (readonly)
				]]
				return var39_result1_upvr_4:get()
			end);
			[Children_upvr] = {New_upvr("UIListLayout")({
				Padding = UDim.new(0, 0);
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				VerticalAlignment = Enum.VerticalAlignment.Top;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			}), ForValues_upvr(Value_upvr(ReplicatedStorage_upvr.Outfits:GetChildren()), function(arg1_3) -- Line 315
				--[[ Upvalues[3]:
					[1]: New_upvr (copied, readonly)
					[2]: OnEvent_upvr (copied, readonly)
					[3]: arg1 (readonly)
				]]
				local Name_upvr = arg1_3.Name
				return New_upvr("TextButton")({
					Text = Name_upvr;
					Name = Name_upvr;
					Size = UDim2.fromScale(1, 0.14285714285714285);
					LayoutOrder = tonumber(Name_upvr:match("%d+"));
					AutoButtonColor = true;
					BackgroundTransparency = 0.5;
					[OnEvent_upvr("Activated")] = function() -- Line 326
						--[[ Upvalues[2]:
							[1]: Name_upvr (readonly)
							[2]: arg1 (copied, readonly)
						]]
						arg1.ChangeOutfit:FireServer(Name_upvr)
					end;
				})
			end, Fusion_upvr.cleanup)};
		}), New_upvr("Frame")({
			Name = "Animations";
			Size = UDim2.fromScale(0.25, 0.6);
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			BackgroundTransparency = 1;
			Visible = Computed_upvr(function() -- Line 342
				--[[ Upvalues[1]:
					[1]: var39_result1_upvr_2 (readonly)
				]]
				return var39_result1_upvr_2:get()
			end);
			[Children_upvr] = {New_upvr("UIListLayout")({
				Padding = UDim.new(0, 0);
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				VerticalAlignment = Enum.VerticalAlignment.Top;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			}), ForPairs_upvr(Value_upvr({
				Wave = "http://www.roblox.com/asset/?id=507770239";
				Point = "http://www.roblox.com/asset/?id=507770453";
				Cheer = "http://www.roblox.com/asset/?id=507770677";
				Laugh = "http://www.roblox.com/asset/?id=507770818";
				Dance1 = "http://www.roblox.com/asset/?id=507771019";
				Dance2 = "http://www.roblox.com/asset/?id=507776043";
				Dance3 = "http://www.roblox.com/asset/?id=507777268";
				Stop = "";
			}), function(arg1_4, arg2) -- Line 355
				--[[ Upvalues[3]:
					[1]: New_upvr (copied, readonly)
					[2]: OnEvent_upvr (copied, readonly)
					[3]: playAnimation_upvr (copied, readonly)
				]]
				if arg1_4 ~= "Stop" then
					local _ = false
					-- KONSTANTWARNING: Skipped task `defvar` above
				else
				end
				local module = {}
				module.Text = arg1_4
				module.Name = arg1_4
				module.Size = UDim2.fromScale(1, 0.125)
				module.AutoButtonColor = true
				module.BackgroundTransparency = 0.5
				if true then
				else
				end
				module.LayoutOrder = 1
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not true or not Color3.fromRGB(255, 0, 0) then
				end
				module.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				module[OnEvent_upvr("Activated")] = function() -- Line 367
					--[[ Upvalues[2]:
						[1]: playAnimation_upvr (copied, readonly)
						[2]: arg2 (readonly)
					]]
					playAnimation_upvr(arg2)
				end
				return arg1_4, New_upvr("TextButton")(module)
			end, Fusion_upvr.cleanup)};
		}), New_upvr("TextButton")({
			Name = "Screenshot";
			Size = UDim2.fromScale(0.125, 0.125);
			Position = UDim2.fromScale(0.5, 0.95);
			AnchorPoint = Vector2.new(0.5, 1);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			AutoButtonColor = true;
			[OnEvent_upvr("Activated")] = function() -- Line 218, Named "takeScreenshot"
				--[[ Upvalues[9]:
					[1]: var39_result1_upvr (readonly)
					[2]: var39_result1_upvr_3 (readonly)
					[3]: CurrentCamera_upvr (copied, readonly)
					[4]: OverlapParams_new_result1_upvr (copied, readonly)
					[5]: getBackground_upvr (copied, readonly)
					[6]: arg1 (readonly)
					[7]: RBLXSerialize_upvr (copied, readonly)
					[8]: prepareHumanoids_upvr (copied, readonly)
					[9]: var7_upvw (copied, read and write)
				]]
				var39_result1_upvr:set(false)
				local WorldModel = Instance.new("WorldModel")
				local any_get_result1 = var39_result1_upvr_3:get()
				local getBackground_result1, getBackground_result2 = getBackground_upvr(workspace:GetPartBoundsInRadius(CurrentCamera_upvr.CFrame.Position + CurrentCamera_upvr.CFrame.LookVector * 50, 50, OverlapParams_new_result1_upvr))
				local _, pcall_result2 = pcall(RBLXSerialize_upvr.Encode, getBackground_result1)
				prepareHumanoids_upvr(getBackground_result2, WorldModel)
				getBackground_result1.Parent = WorldModel
				WorldModel.Parent = any_get_result1
				any_get_result1.CurrentCamera = getBackground_result1
				arg1.OnScreenshotTaken({
					Viewport = any_get_result1:Clone();
					Characters = arg1.GetSerializedCharacters(getBackground_result2);
					Background = pcall_result2;
				})
				arg1.ToggleCamera(false)
				arg1.IsOpened:set(true)
				arg1.ChangeOutfit:FireServer(nil)
				if var7_upvw then
					var7_upvw:Stop()
					var7_upvw = nil
				end
			end;
			[Children_upvr] = {New_upvr("UICorner")({
				CornerRadius = UDim.new(1, 0);
			}), New_upvr("UIStroke")({
				Thickness = 2;
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			}), New_upvr("TextButton")({
				Text = 'X';
				Name = "Close";
				Size = UDim2.fromScale(0.4, 0.4);
				Position = UDim2.fromScale(-0.5, 0.5);
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				TextScaled = true;
				[OnEvent_upvr("Activated")] = function() -- Line 404
					--[[ Upvalues[2]:
						[1]: var7_upvw (copied, read and write)
						[2]: arg1 (readonly)
					]]
					if var7_upvw then
						var7_upvw:Stop()
						var7_upvw = nil
					end
					arg1.ChangeOutfit:FireServer(nil)
					arg1.ToggleCamera(false)
					arg1.IsOpened:set(true)
				end;
				[Children_upvr] = {New_upvr("UICorner")({
					CornerRadius = UDim.new(1, 0);
				}), New_upvr("UIStroke")({
					Thickness = 2;
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
				})};
			}), New_upvr("TextButton")({
				Text = "";
				Name = "Outfits";
				Size = UDim2.fromScale(0.4, 0.4);
				Position = UDim2.fromScale(1.5, 0.5);
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				TextScaled = true;
				[OnEvent_upvr("Activated")] = function() -- Line 433
					--[[ Upvalues[2]:
						[1]: var39_result1_upvr_4 (readonly)
						[2]: var39_result1_upvr_2 (readonly)
					]]
					var39_result1_upvr_4:set(not var39_result1_upvr_4:get())
					var39_result1_upvr_2:set(false)
				end;
				[Children_upvr] = {New_upvr("UICorner")({
					CornerRadius = UDim.new(1, 0);
				}), New_upvr("UIStroke")({
					Thickness = 2;
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
				}), New_upvr("ImageLabel")({
					Size = UDim2.fromScale(0.5, 0.5);
					Position = UDim2.fromScale(0.5, 0.5);
					AnchorPoint = Vector2.new(0.5, 0.5);
					BackgroundTransparency = 1;
					Image = "rbxassetid://16568591138";
				})};
			}), New_upvr("TextButton")({
				Text = "";
				Name = "Animations";
				Size = UDim2.fromScale(0.4, 0.4);
				Position = UDim2.fromScale(2.2, 0.5);
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				TextScaled = true;
				[OnEvent_upvr("Activated")] = function() -- Line 467
					--[[ Upvalues[2]:
						[1]: var39_result1_upvr_2 (readonly)
						[2]: var39_result1_upvr_4 (readonly)
					]]
					var39_result1_upvr_2:set(not var39_result1_upvr_2:get())
					var39_result1_upvr_4:set(false)
				end;
				[Children_upvr] = {New_upvr("UICorner")({
					CornerRadius = UDim.new(1, 0);
				}), New_upvr("UIStroke")({
					Thickness = 2;
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
				}), New_upvr("ImageLabel")({
					Size = UDim2.fromScale(0.8, 0.8);
					Position = UDim2.fromScale(0.5, 0.5);
					AnchorPoint = Vector2.new(0.5, 0.5);
					BackgroundTransparency = 1;
					Image = "rbxassetid://16568591411";
				})};
			})};
		})};
	})
end