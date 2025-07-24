-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:41
-- Luau version 6, Types version 3
-- Time taken: 0.004777 seconds

local Parent = script.Parent.Parent
local Fusion = require(Parent.Parent.Parent.Utils.Fusion)
local Components = Parent.Components
Font.fromEnum(Enum.Font.Arial).Bold = true
local Value_upvr = Fusion.Value
local New_upvr = Fusion.New
local Children_upvr = Fusion.Children
local SelectButton_upvr = require(Components.SelectButton)
local Computed_upvr = Fusion.Computed
local Ref_upvr = Fusion.Ref
local OnChange_upvr = Fusion.OnChange
local OnEvent_upvr = Fusion.OnEvent
local Players_upvr = game:GetService("Players")
local Line_upvr = require(Components.Line)
return function(arg1) -- Line 22
	--[[ Upvalues[10]:
		[1]: Value_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: SelectButton_upvr (readonly)
		[5]: Computed_upvr (readonly)
		[6]: Ref_upvr (readonly)
		[7]: OnChange_upvr (readonly)
		[8]: OnEvent_upvr (readonly)
		[9]: Players_upvr (readonly)
		[10]: Line_upvr (readonly)
	]]
	local var5_result1_upvr_2 = Value_upvr()
	local var5_result1_upvr = Value_upvr(false)
	return {New_upvr("Frame")({
		Name = "Container";
		Size = UDim2.fromScale(0.9, 0.6);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(70, 70, 70);
		ZIndex = 5;
		[Children_upvr] = {SelectButton_upvr({
			Text = "Cancel";
			Name = "CancelButton";
			Size = UDim2.fromScale(0, 0.41);
			Color = Color3.fromRGB(255, 255, 255);
			Position = UDim2.fromScale(0.83, 0.5);
			AnchorPoint = Vector2.new(0, 0.5);
			AutomaticSize = Enum.AutomaticSize.X;
			ZIndex = 5;
			Bold = true;
			Visible = Computed_upvr(function() -- Line 47
				--[[ Upvalues[1]:
					[1]: var5_result1_upvr (readonly)
				]]
				return var5_result1_upvr:get()
			end);
			OnActivated = function() -- Line 51, Named "OnActivated"
				--[[ Upvalues[2]:
					[1]: var5_result1_upvr_2 (readonly)
					[2]: arg1 (readonly)
				]]
				var5_result1_upvr_2:get().Text = ""
				var5_result1_upvr_2:get():CaptureFocus()
				arg1.UserSearchFailed:set(false)
			end;
		}), New_upvr("TextBox")({
			Name = "SearchBox";
			Size = UDim2.fromScale(0.65, 0.45);
			Position = UDim2.fromScale(0.11, 0.5);
			AnchorPoint = Vector2.new(0, 0.5);
			FontFace = Font.fromEnum(Enum.Font.Arial);
			TextXAlignment = Enum.TextXAlignment.Left;
			BackgroundTransparency = 1;
			TextScaled = true;
			TextColor3 = Color3.fromRGB(255, 255, 255);
			PlaceholderText = "Search people";
			PlaceholderColor3 = Color3.fromRGB(154, 154, 154);
			ZIndex = 5;
			[Ref_upvr] = var5_result1_upvr_2;
			[OnChange_upvr("Text")] = function() -- Line 74
				--[[ Upvalues[2]:
					[1]: var5_result1_upvr_2 (readonly)
					[2]: var5_result1_upvr (readonly)
				]]
				if 0 < #var5_result1_upvr_2:get().Text then
					var5_result1_upvr:set(true)
				else
					var5_result1_upvr:set(false)
				end
			end;
			[OnEvent_upvr("FocusLost")] = function(arg1_2) -- Line 82
				--[[ Upvalues[3]:
					[1]: var5_result1_upvr_2 (readonly)
					[2]: Players_upvr (copied, readonly)
					[3]: arg1 (readonly)
				]]
				if not arg1_2 then
				else
					local Text_upvr = var5_result1_upvr_2:get().Text
					local pcall_result1, pcall_result2 = pcall(function() -- Line 89
						--[[ Upvalues[2]:
							[1]: Players_upvr (copied, readonly)
							[2]: Text_upvr (readonly)
						]]
						return Players_upvr:GetUserIdFromNameAsync(Text_upvr)
					end)
					if pcall_result1 and pcall_result2 then
						local any_getUserInfoFromUserIds_result1 = arg1.getUserInfoFromUserIds({pcall_result2})
						if not any_getUserInfoFromUserIds_result1 or not any_getUserInfoFromUserIds_result1[pcall_result2] then
							arg1.UserSearchFailed:set(true)
						else
							any_getUserInfoFromUserIds_result1[pcall_result2].ProfileImage = arg1.GetUserProfilePicture(pcall_result2)
							arg1.OnSwitchFeedClicked(arg1.initialProfileFeed, pcall_result2)
						end
					end
					arg1.UserSearchFailed:set(true)
					return
				end
			end;
		}), New_upvr("ImageLabel")({
			Size = UDim2.fromScale(0.5, 0.5);
			Position = UDim2.fromScale(0.04, 0.5);
			AnchorPoint = Vector2.new(0, 0.5);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			BackgroundTransparency = 1;
			Image = "rbxassetid://13114890388";
			ZIndex = 5;
		}), New_upvr("UICorner")({
			CornerRadius = UDim.new(0.5, 0);
		})};
	}), Line_upvr({
		Size = UDim2.fromScale(1, 0.02);
	})}
end