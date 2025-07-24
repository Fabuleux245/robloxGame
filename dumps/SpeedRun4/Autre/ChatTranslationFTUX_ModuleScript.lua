-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:12
-- Luau version 6, Types version 3
-- Time taken: 0.004346 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Roact_upvr = require(Parent.Roact)
local Otter_upvr = require(Parent.Otter)
local UIBlox = require(Parent.UIBlox)
local any_extend_result1 = Roact_upvr.Component:extend("ChatTranslationFTUX")
any_extend_result1.defaultProps = {
	timer = require(ExpChat.Timer).new(10);
}
local module_2_upvr = {
	dampingRatio = 1;
	frequency = 2;
}
if game:GetEngineFeature("TextChatServiceSettingsSaved") then
	UserSettings().GameSettings.ChatTranslationFTUXShown = true
end
function any_extend_result1.init(arg1) -- Line 35
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(1)
	arg1.transparency = any_createBinding_result1
	arg1.updateTransparency = any_createBinding_result2
	arg1.transparencyMotor = Otter_upvr.createSingleMotor(1)
	arg1.transparencyMotor:onStep(arg1.updateTransparency)
end
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local Font_new_result1_upvr_2 = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
local Font_new_result1_upvr = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
function any_extend_result1.render(arg1) -- Line 41
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetLabel_upvr (readonly)
		[3]: Images_upvr (readonly)
		[4]: Font_new_result1_upvr_2 (readonly)
		[5]: Font_new_result1_upvr (readonly)
	]]
	local module = {
		BubbleTail = Roact_upvr.createElement(ImageSetLabel_upvr, {
			Size = UDim2.new(0, 15, 0, 10);
			BackgroundTransparency = 1;
			ImageTransparency = arg1.transparency;
			ImageColor3 = Color3.new(0.5, 0.5, 0.5);
			Image = Images_upvr["component_assets/triangleUp_16"];
			Position = UDim2.new(0, 15, 0, -10);
			ZIndex = 100;
		});
	}
	local tbl = {
		RoundCorners = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 5);
		});
		SizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(300, 400);
		});
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingRight = UDim.new(0, 10);
			PaddingTop = UDim.new(0, 10);
			PaddingBottom = UDim.new(0, 10);
			PaddingLeft = UDim.new(0, 10);
		});
		Layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			Padding = UDim.new(0, 10);
		});
	}
	local tbl_3 = {
		AutomaticSize = Enum.AutomaticSize.Y;
	}
	local udim2 = UDim2.new(1, 0, 0, 0)
	tbl_3.Size = udim2
	if arg1.props.FTUXTitle ~= "" then
		udim2 = arg1.props.FTUXTitle
	else
		udim2 = "Chat translation is on for supported languages"
	end
	tbl_3.Text = udim2
	udim2 = Enum.TextXAlignment.Left
	tbl_3.TextXAlignment = udim2
	udim2 = Enum.TextYAlignment.Top
	tbl_3.TextYAlignment = udim2
	udim2 = arg1.transparency
	tbl_3.TextTransparency = udim2
	udim2 = Font_new_result1_upvr_2
	tbl_3.FontFace = udim2
	udim2 = 16
	tbl_3.TextSize = udim2
	udim2 = true
	tbl_3.TextWrapped = udim2
	udim2 = 1
	tbl_3.BackgroundTransparency = udim2
	udim2 = Color3.new(1, 1, 1)
	tbl_3.TextColor3 = udim2
	udim2 = 101
	tbl_3.ZIndex = udim2
	udim2 = 1
	tbl_3.LayoutOrder = udim2
	tbl.Title = Roact_upvr.createElement("TextLabel", tbl_3)
	local tbl_2 = {}
	udim2 = Enum.AutomaticSize.Y
	tbl_2.AutomaticSize = udim2
	udim2 = UDim2.new(1, 0, 0, 0)
	tbl_2.Size = udim2
	if arg1.props.FTUXBody ~= "" then
		udim2 = arg1.props.FTUXBody
	else
		udim2 = "Messages you send and receive will be translated automatically"
	end
	tbl_2.Text = udim2
	udim2 = Enum.TextXAlignment.Left
	tbl_2.TextXAlignment = udim2
	udim2 = Enum.TextYAlignment.Top
	tbl_2.TextYAlignment = udim2
	udim2 = arg1.transparency
	tbl_2.TextTransparency = udim2
	udim2 = Font_new_result1_upvr
	tbl_2.FontFace = udim2
	udim2 = 16
	tbl_2.TextSize = udim2
	udim2 = true
	tbl_2.TextWrapped = udim2
	udim2 = 1
	tbl_2.BackgroundTransparency = udim2
	udim2 = Color3.new(1, 1, 1)
	tbl_2.TextColor3 = udim2
	udim2 = 101
	tbl_2.ZIndex = udim2
	udim2 = 2
	tbl_2.LayoutOrder = udim2
	tbl.Body = Roact_upvr.createElement("TextLabel", tbl_2)
	module.BubbleBody = Roact_upvr.createElement("Frame", {
		Active = true;
		BackgroundTransparency = arg1.transparency;
		BackgroundColor3 = Color3.new(0.5, 0.5, 0.5);
		AutomaticSize = Enum.AutomaticSize.XY;
		ZIndex = 100;
		Style = Enum.FrameStyle.Custom;
		[Roact_upvr.Event.TouchTap] = function() -- Line 64
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:fadeOut()
		end;
		[Roact_upvr.Event.InputEnded] = function(arg1_2, arg2) -- Line 67
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg2.UserInputType == Enum.UserInputType.MouseButton1 then
				arg1:fadeOut()
			end
		end;
	}, tbl)
	return Roact_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY;
		Position = UDim2.new(0, 10, 0, 20);
		Size = UDim2.new(0.25, 0, 0, 0);
		BackgroundTransparency = 1;
	}, module)
end
function any_extend_result1.fadeOut(arg1) -- Line 128
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	if not arg1.isFadingOut then
		arg1.isFadingOut = true
		arg1.transparencyMotor:setGoal((function(arg1_3) -- Line 132
			--[[ Upvalues[2]:
				[1]: Otter_upvr (copied, readonly)
				[2]: module_2_upvr (copied, readonly)
			]]
			return Otter_upvr.spring(arg1_3, module_2_upvr)
		end)(1))
	end
end
function any_extend_result1.didMount(arg1) -- Line 139
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	arg1.transparencyMotor:setGoal((function(arg1_4) -- Line 140
		--[[ Upvalues[2]:
			[1]: Otter_upvr (copied, readonly)
			[2]: module_2_upvr (copied, readonly)
		]]
		return Otter_upvr.spring(arg1_4, module_2_upvr)
	end)(0))
	arg1.props.timer:start():andThen(function() -- Line 146
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:fadeOut()
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 151
	arg1.transparencyMotor:destroy()
end
return require(ExpChat.Localization).connect(function() -- Line 155
	return {
		FTUXTitle = "CoreScripts.TextChat.ChatTranslation.FTUX.TitleNew";
		FTUXBody = "CoreScripts.TextChat.ChatTranslation.FTUX.BodyNew";
	}
end)(any_extend_result1)