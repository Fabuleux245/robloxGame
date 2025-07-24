-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:10
-- Luau version 6, Types version 3
-- Time taken: 0.003511 seconds

local Parent = script.Parent.Parent
local Fusion = require(Parent.Parent.Parent.Utils.Fusion)
local Components = Parent.Components
local Value_upvr = Fusion.Value
local Observer_upvr = Fusion.Observer
local New_upvr = Fusion.New
local Computed_upvr = Fusion.Computed
local Children_upvr = Fusion.Children
local TextButton_upvr = require(Components.TextButton)
local UICorner_upvr = require(Components.UICorner)
return function(arg1) -- Line 14
	--[[ Upvalues[7]:
		[1]: Value_upvr (readonly)
		[2]: Observer_upvr (readonly)
		[3]: New_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: Children_upvr (readonly)
		[6]: TextButton_upvr (readonly)
		[7]: UICorner_upvr (readonly)
	]]
	local IsOptions_upvr = arg1.IsOptions
	local var5_result1_upvr = Value_upvr(false)
	local Value_upvr_result1_upvr = Value_upvr(false)
	Observer_upvr(IsOptions_upvr):onChange(function() -- Line 20
		--[[ Upvalues[3]:
			[1]: IsOptions_upvr (readonly)
			[2]: Value_upvr_result1_upvr (readonly)
			[3]: var5_result1_upvr (readonly)
		]]
		if IsOptions_upvr:get() == "NotOwnPost" then
			Value_upvr_result1_upvr:set(true)
		elseif IsOptions_upvr:get() == "OwnPost" then
			Value_upvr_result1_upvr:set(false)
		end
		if IsOptions_upvr:get() == false then
			var5_result1_upvr:set(false)
		end
	end)
	local module = {
		Name = "Options";
		Size = UDim2.fromScale(0.35, 0.225);
		Position = UDim2.fromScale(0.5, 0.4);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(30, 30, 30);
		ZIndex = 3;
		Visible = Computed_upvr(function() -- Line 41
			--[[ Upvalues[1]:
				[1]: IsOptions_upvr (readonly)
			]]
			return IsOptions_upvr:get()
		end);
	}
	local tbl_2 = {}
	local tbl = {
		Color = Color3.fromRGB(255, 255, 255);
		TextColor = Color3.fromRGB(255, 0, 0);
		AnchorPoint = Vector2.new(0.5, 0);
		Position = UDim2.fromScale(0.5, 0.1);
		Size = UDim2.fromScale(0.9, 0.325);
		ZIndex = 5;
		Text = Computed_upvr(function() -- Line 54
			--[[ Upvalues[2]:
				[1]: var5_result1_upvr (readonly)
				[2]: Value_upvr_result1_upvr (readonly)
			]]
			if var5_result1_upvr:get() == true then
				if Value_upvr_result1_upvr:get() == true then
					return "Confirm Report?"
				end
				return "Confirm Delete?"
			end
			if Value_upvr_result1_upvr:get() == true then
				return "Report"
			end
			return "Delete"
		end);
	}
	local function OnActivated() -- Line 62
		--[[ Upvalues[3]:
			[1]: var5_result1_upvr (readonly)
			[2]: Value_upvr_result1_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		if var5_result1_upvr:get() == true then
			if Value_upvr_result1_upvr:get() == true then
				arg1.OnReportPostButtonClicked(arg1.InteractedWithPostId)
			else
				arg1.OnDeletePostButtonClicked(arg1.InteractedWithPostId)
			end
		end
		var5_result1_upvr:set(true)
	end
	tbl.OnActivated = OnActivated
	tbl_2[1] = TextButton_upvr(tbl)
	tbl_2[2] = TextButton_upvr({
		Text = "Cancel";
		Name = "CancelButton";
		Color = Color3.fromRGB(255, 255, 255);
		TextColor = Color3.fromRGB(0, 0, 0);
		AnchorPoint = Vector2.new(0.5, 0);
		Position = UDim2.fromScale(0.5, 0.55);
		Size = UDim2.fromScale(0.9, 0.325);
		ZIndex = 5;
		OnActivated = function() -- Line 85, Named "OnActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var5_result1_upvr (readonly)
			]]
			arg1.IsOptions:set(false)
			var5_result1_upvr:set(false)
		end;
	})
	tbl_2[3] = New_upvr("TextButton")({
		Name = "Background";
		Size = UDim2.fromScale(10, 10);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		BackgroundTransparency = 0.3;
		AutoButtonColor = false;
		ZIndex = 3;
	})
	tbl_2[4] = UICorner_upvr({})
	module[Children_upvr] = tbl_2
	return New_upvr("Frame")(module)
end