-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:39
-- Luau version 6, Types version 3
-- Time taken: 0.005427 seconds

local Parent = script.Parent.Parent
local Fusion = require(Parent.Parent.Parent.Utils.Fusion)
local Font_fromEnum_result1_upvr = Font.fromEnum(Enum.Font.Arial)
Font_fromEnum_result1_upvr.Bold = true
local Value_upvr = Fusion.Value
local tbl_2_upvr = {}
local New_upvr = Fusion.New
local OnEvent_upvr = Fusion.OnEvent
local Children_upvr = Fusion.Children
local SelectButton_upvr = require(Parent.Components.SelectButton)
local Computed_upvr = Fusion.Computed
return function(arg1, arg2) -- Line 21
	--[[ Upvalues[8]:
		[1]: Value_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: New_upvr (readonly)
		[4]: OnEvent_upvr (readonly)
		[5]: Children_upvr (readonly)
		[6]: Font_fromEnum_result1_upvr (readonly)
		[7]: SelectButton_upvr (readonly)
		[8]: Computed_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var12
	if arg1.Config.permissions ~= "read_only" then
	else
	end
	local Id_upvr = arg2.Id
	if tbl_2_upvr[Id_upvr] ~= true then
		var12 = false
	else
		var12 = true
	end
	local Value_upvr_result1_upvr = Value_upvr(var12)
	var12 = New_upvr("TextButton")
	local tbl_3 = {
		Size = UDim2.fromScale(0.25, 1);
		BackgroundColor3 = Color3.fromRGB(63, 63, 63);
		[OnEvent_upvr("Activated")] = function() -- Line 32
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Id_upvr (readonly)
			]]
			arg1.OnSwitchFeedClicked(arg1.initialProfileFeed, Id_upvr)
		end;
	}
	local tbl_4 = {}
	local tbl = {
		Name = "Follow";
		Size = UDim2.fromScale(0, 0.14);
		Position = UDim2.fromScale(0.1, 0.775);
		Color = Color3.fromRGB(85, 170, 255);
		AutomaticSize = Enum.AutomaticSize.X;
		TextXAlignment = Enum.TextXAlignment.Left;
		Bold = true;
		Text = Computed_upvr(function() -- Line 87
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			if Value_upvr_result1_upvr:get() then
				return "Following"
			end
			return "Follow"
		end);
	}
	local var26_upvr = true
	function tbl.OnActivated() -- Line 91
		--[[ Upvalues[5]:
			[1]: var26_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: tbl_2_upvr (copied, readonly)
			[4]: Id_upvr (readonly)
			[5]: Value_upvr_result1_upvr (readonly)
		]]
		if var26_upvr then
			arg1.EnablePopupMessage:set(true)
		else
			if tbl_2_upvr[Id_upvr] then return end
			arg1.OnFollowButtonClicked(Id_upvr, true)
			tbl_2_upvr[Id_upvr] = true
			Value_upvr_result1_upvr:set(true)
		end
	end
	tbl_4[1] = New_upvr("ImageLabel")({
		Name = "ProfilePicture";
		Size = UDim2.fromScale(0.4, 0.4);
		Position = UDim2.fromScale(0.1, 0.075);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		Image = arg1.GetUserProfilePicture(Id_upvr);
		BackgroundTransparency = 1;
		ZIndex = 2;
		[Children_upvr] = {New_upvr("UICorner")({
			CornerRadius = UDim.new(1, 0);
		}), New_upvr("Frame")({
			Name = "Background";
			Position = UDim2.new(0, 0, 0, -1);
			Size = UDim2.fromScale(1, 1);
			ZIndex = 1;
			[Children_upvr] = New_upvr("UICorner")({
				CornerRadius = UDim.new(1, 0);
			});
		})};
	})
	tbl_4[2] = New_upvr("TextLabel")({
		Name = "DisplayName";
		Text = arg2.DisplayName;
		Size = UDim2.fromScale(0.8, 0.14);
		Position = UDim2.fromScale(0.5, 0.55);
		AnchorPoint = Vector2.new(0.5, 0);
		TextColor3 = Color3.fromRGB(255, 255, 255);
		TextXAlignment = Enum.TextXAlignment.Left;
		BackgroundTransparency = 1;
		TextScaled = true;
		FontFace = Font_fromEnum_result1_upvr;
		AutomaticSize = Enum.AutomaticSize.X;
	})
	tbl_4[3] = SelectButton_upvr(tbl)
	tbl_4[4] = New_upvr("UICorner")({
		CornerRadius = UDim.new(0.07, 0);
	})
	tbl_3[Children_upvr] = tbl_4
	var12 = var12(tbl_3)
	return var12
end