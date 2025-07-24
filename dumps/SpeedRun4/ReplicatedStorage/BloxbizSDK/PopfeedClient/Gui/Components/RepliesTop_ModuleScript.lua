-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:42
-- Luau version 6, Types version 3
-- Time taken: 0.001743 seconds

local Components = script.Parent.Parent.Components
local TextButton_upvr = require(Components.TextButton)
local SelectButton_upvr = require(Components.SelectButton)
local Line_upvr = require(Components.Line)
return function(arg1) -- Line 8
	--[[ Upvalues[3]:
		[1]: TextButton_upvr (readonly)
		[2]: SelectButton_upvr (readonly)
		[3]: Line_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6
	if arg1.Config.permissions ~= "read_only" then
		var6 = false
	else
		var6 = true
	end
	local module = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl.OnActivated = OnActivated
		local function OnActivated() -- Line 26
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.LastLocalPlayerProfileData:get() == nil then
				arg1.getLocalPlayerProfileData()
			end
			arg1.OnCommentButtonClicked()
		end
		tbl.Text = "Reply"
		tbl.Color = Color3.fromRGB(0, 170, 255)
		tbl.TextColor = Color3.fromRGB(255, 255, 255)
		tbl.Bold = true
		tbl.ZIndex = 1
		tbl.CornerRadius = UDim.new(1, 0)
		tbl.TextSize = UDim2.fromScale(0.9, 0.6)
		tbl.AnchorPoint = Vector2.new(1, 0.5)
		tbl.Position = UDim2.fromScale(0.95, 0.5)
		tbl.Size = UDim2.fromScale(0.204, 0.657)
		tbl.Name = "ReplyButton"
		local tbl = {}
		return TextButton_upvr(tbl)
	end
	if not not var6 or not INLINED() then
	end
	module[1] = nil
	module[2] = SelectButton_upvr({
		Name = "Back";
		Text = "< Back";
		Size = UDim2.fromScale(0, 0.41);
		Color = Color3.fromRGB(255, 255, 255);
		Position = UDim2.fromScale(0.05, 0.5);
		AnchorPoint = Vector2.new(0, 0.5);
		AutomaticSize = Enum.AutomaticSize.X;
		Bold = true;
		OnActivated = function() -- Line 46, Named "OnActivated"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.OnBackButtonClicked()
		end;
	})
	module[3] = Line_upvr({
		Size = UDim2.fromScale(1, 0.02);
	})
	return module
end