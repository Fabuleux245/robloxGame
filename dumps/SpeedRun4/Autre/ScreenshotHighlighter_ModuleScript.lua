-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:51
-- Luau version 6, Types version 3
-- Time taken: 0.004115 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local React_upvr = require(CorePackages.Packages.React)
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 25, Named "ScreenshotHighlighter"
	--[[ Upvalues[4]:
		[1]: RobloxGui_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ImageSetButton_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local AbsoluteSize = RobloxGui_upvr.AbsoluteSize
	local var16
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var16 = AbsoluteSize.X
		return var16
	end
	if AbsoluteSize.X >= AbsoluteSize.Y or not INLINED() then
		var16 = AbsoluteSize.Y
	end
	local var17_upvr = var16 / 5
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local function var20_upvr(arg1_2, arg2) -- Line 35
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var17_upvr (readonly)
		]]
		local insert = table.insert
		insert(arg1.annotationPoints, (Vector2.new(arg2.X, arg2.Y) - arg1_2.AbsolutePosition) / arg1_2.AbsoluteSize)
		if arg1_2.AbsoluteSize.Y < arg1_2.AbsoluteSize.X then
			insert = arg1_2.AbsoluteSize.X
		else
			insert = arg1_2.AbsoluteSize.Y
		end
		arg1.setAnnotationCircleRadius(var17_upvr * 0.5 / insert)
		arg1.setAnnotationAreaDimensions(arg1_2.AbsoluteSize.X, arg1_2.AbsoluteSize.Y)
		arg1.handleAnnotationPoints(arg1.annotationPoints)
	end
	local module = {}
	for i, v in ipairs(arg1.annotationPoints) do
		module["point"..i] = React_upvr.createElement("Frame", {
			Position = UDim2.fromScale(v.X, v.Y);
			BackgroundTransparency = 1;
			Size = UDim2.fromOffset(var17_upvr, var17_upvr);
		}, {
			Border = React_upvr.createElement(ImageSetButton_upvr, {
				Size = UDim2.fromOffset(var17_upvr, var17_upvr);
				AnchorPoint = Vector2.new(0.5, 0.5);
				Image = Images_upvr["component_assets/circle_49_stroke_1"];
				ImageColor3 = Color3.fromHex("#3CF3E9");
				ImageTransparency = 0;
				BackgroundTransparency = 1;
			});
			Background = React_upvr.createElement(ImageSetButton_upvr, {
				Size = UDim2.fromOffset(var17_upvr, var17_upvr);
				AnchorPoint = Vector2.new(0.5, 0.5);
				Image = Images_upvr["component_assets/circle_49"];
				ImageColor3 = Color3.fromHex("#3CF3E9");
				ImageTransparency = 0.6;
				BackgroundTransparency = 1;
			});
		})
		local _
	end
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		[React_upvr.Event.InputBegan] = function(arg1_3, arg2) -- Line 47
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: any_useState_result2_upvr (readonly)
				[3]: var20_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
			local var23
			if arg2.UserInputState ~= Enum.UserInputState.Begin then
				var23 = false
			else
				var23 = true
			end
			if arg2.UserInputType ~= Enum.UserInputType.Touch then
				-- KONSTANTWARNING: GOTO [16] #11
			end
			-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [15] 10. Error Block 30 start (CF ANALYSIS FAILED)
			if arg2.UserInputType ~= Enum.UserInputType.MouseButton1 then
			else
			end
			if var23 and (true or true) then
				if #arg1.annotationPoints < 25 then
					any_useState_result2_upvr(true)
					var20_upvr(arg1_3, arg2.Position)
				end
			end
			-- KONSTANTERROR: [15] 10. Error Block 30 end (CF ANALYSIS FAILED)
		end;
		[React_upvr.Event.InputChanged] = function(arg1_4, arg2) -- Line 57
			--[[ Upvalues[1]:
				[1]: var20_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
			do
				return
			end
			local var25
			if arg2.UserInputState ~= Enum.UserInputState.Change then
				var25 = false
			else
				var25 = true
			end
			if arg2.UserInputType ~= Enum.UserInputType.MouseMovement then
				-- KONSTANTWARNING: GOTO [17] #12
			end
			-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [16] 11. Error Block 28 start (CF ANALYSIS FAILED)
			if arg2.UserInputType ~= Enum.UserInputType.Touch then
			else
			end
			if var25 and (true or true) then
				var20_upvr(arg1_4, arg2.Position)
			end
			-- KONSTANTERROR: [16] 11. Error Block 28 end (CF ANALYSIS FAILED)
		end;
		[React_upvr.Event.InputEnded] = function(arg1_5, arg2) -- Line 69
			--[[ Upvalues[2]:
				[1]: any_useState_result1_upvr (readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			if any_useState_result1_upvr then
				any_useState_result2_upvr(false)
			end
		end;
		ZIndex = 3;
	}, module)
end