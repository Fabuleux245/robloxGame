-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:34
-- Luau version 6, Types version 3
-- Time taken: 0.004137 seconds

local Parent = script.Parent.Parent
local Fusion = require(Parent.Parent.Parent.Utils.Fusion)
local Value_upvr = Fusion.Value
local Observer_upvr = Fusion.Observer
local RunService_upvr = game:GetService("RunService")
local New_upvr = Fusion.New
local Computed_upvr = Fusion.Computed
local Children_upvr = Fusion.Children
local Ref_upvr = Fusion.Ref
local UICorner_upvr = require(Parent.Components.UICorner)
return function(arg1) -- Line 18
	--[[ Upvalues[8]:
		[1]: Value_upvr (readonly)
		[2]: Observer_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: New_upvr (readonly)
		[5]: Computed_upvr (readonly)
		[6]: Children_upvr (readonly)
		[7]: Ref_upvr (readonly)
		[8]: UICorner_upvr (readonly)
	]]
	local Font_fromEnum_result1 = Font.fromEnum(Enum.Font.Arial)
	Font_fromEnum_result1.Bold = true
	local Value_upvr_result1_upvr = Value_upvr(false)
	local Value_upvr_result1_upvr_2 = Value_upvr()
	local var16_upvw
	Observer_upvr(arg1.IsLoading):onChange(function() -- Line 27
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: var16_upvw (read and write)
			[3]: RunService_upvr (copied, readonly)
			[4]: Value_upvr_result1_upvr_2 (readonly)
			[5]: Value_upvr_result1_upvr (readonly)
		]]
		if arg1.IsLoading:get() == true then
			var16_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 29
				--[[ Upvalues[1]:
					[1]: Value_upvr_result1_upvr_2 (copied, readonly)
				]]
				local any_get_result1_2 = Value_upvr_result1_upvr_2:get()
				if not any_get_result1_2 then
				else
					any_get_result1_2.Rotation += 1
				end
			end)
			task.delay(0, function() -- Line 38
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: Value_upvr_result1_upvr (copied, readonly)
				]]
				if not arg1.IsLoading:get() then
				else
					Value_upvr_result1_upvr:set(true)
				end
			end)
		elseif arg1.IsLoading:get() == false then
			if var16_upvw then
				var16_upvw:Disconnect()
				var16_upvw = nil
			end
			Value_upvr_result1_upvr:set(false)
		end
	end)
	return New_upvr("TextButton")({
		Name = "LoadingState";
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundColor3 = Color3.fromRGB(25, 25, 25);
		BackgroundTransparency = 0.05;
		AutoButtonColor = false;
		ZIndex = 100;
		Size = Computed_upvr(function() -- Line 62
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.IsPosting:get() then
				return UDim2.fromScale(1, 0.85)
			end
			if arg1.isFeedTypeHomeFeed(arg1.FetchingFeedTypeValue:get()) then
				return UDim2.fromScale(1, 0.763)
			end
			return UDim2.fromScale(1, 0.82)
		end);
		Position = Computed_upvr(function() -- Line 74
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.IsPosting:get() then
				return UDim2.fromScale(0.5, 0.145)
			end
			if arg1.isFeedTypeHomeFeed(arg1.FetchingFeedTypeValue:get()) then
				return UDim2.fromScale(0.5, 0.151)
			end
			return UDim2.fromScale(0.5, 0.1)
		end);
		Visible = Computed_upvr(function() -- Line 86
			--[[ Upvalues[2]:
				[1]: Value_upvr_result1_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			local any_get_result1 = Value_upvr_result1_upvr:get()
			if any_get_result1 then
				any_get_result1 = arg1.IsLoading:get()
			end
			return any_get_result1
		end);
		[Children_upvr] = {New_upvr("TextLabel")({
			Name = "Info";
			Text = "Loading...";
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(0.5, 0.05);
			Position = UDim2.fromScale(0.5, 0.525);
			AnchorPoint = Vector2.new(0.5, 0.5);
			TextScaled = true;
			FontFace = Font_fromEnum_result1;
			TextColor3 = Color3.fromRGB(230, 230, 230);
			ZIndex = 101;
		}), New_upvr("ImageLabel")({
			Name = "Spinner";
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(0.1, 0.1);
			Position = UDim2.fromScale(0.5, 0.425);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Image = "rbxassetid://11304130802";
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			ZIndex = 101;
			[Ref_upvr] = Value_upvr_result1_upvr_2;
		}), UICorner_upvr({})};
	})
end