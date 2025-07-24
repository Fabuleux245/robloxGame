-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:41
-- Luau version 6, Types version 3
-- Time taken: 0.010287 seconds

local Parent = script.Parent.Parent.Parent
local BodyScaleValues_upvr = require(Parent.CatalogClient.Libraries.BodyScaleValues)
local module_upvr = require(Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local Value_upvr = module_upvr.Value
local New_upvr = module_upvr.New
local Children_upvr = module_upvr.Children
local Ref_upvr = module_upvr.Ref
local tbl_upvr = {
	ListOfColors = {Color3.new(1, 0.8, 0.6), Color3.new(0.843137, 0.772549, 0.603922), Color3.new(0.8, 1, 0.8), Color3.new(0.431373, 0.6, 0.792157), Color3.new(0.356863, 0.603922, 0.298039), Color3.new(0.337255, 0.258824, 0.211765), Color3.new(0.0666667, 0.0666667, 0.0666667), Color3.new(0, 1, 1), Color3.new(0.384314, 0.145098, 0.819608), Color3.new(0.0705882, 0.933333, 0.831373), Color3.new(0.639216, 0.635294, 0.647059), Color3.new(1, 0.4, 0.8), Color3.new(0.694118, 0.654902, 1), Color3.new(0.803922, 0.803922, 0.803922), Color3.new(0.854902, 0.521569, 0.254902), Color3.new(0, 0.560784, 0.611765), Color3.new(0.0509804, 0.411765, 0.67451), Color3.new(0.498039, 0.556863, 0.392157), Color3.new(0.666667, 0, 0.666667), Color3.new(0.486275, 0.360784, 0.27451), Color3.new(0.294118, 0.592157, 0.294118), Color3.new(0.886275, 0.607843, 0.25098), Color3.new(0.666667, 0.333333, 0), Color3.new(0.705882, 0.501961, 1), Color3.new(0, 0, 1), Color3.new(0.501961, 0.733333, 0.862745), Color3.new(0.705882, 0.823529, 0.894118), Color3.new(0.8, 0.556863, 0.411765), Color3.new(0.321569, 0.486275, 0.682353), Color3.new(0.470588, 0.564706, 0.509804), Color3.new(0.686275, 0.580392, 0.513726), Color3.new(0.152941, 0.27451, 0.176471), Color3.new(0.0156863, 0.686275, 0.92549), Color3.new(0.411765, 0.25098, 0.156863), Color3.new(0.54902, 0.356863, 0.623529), Color3.new(0.631373, 0.768627, 0.54902), Color3.new(0.643137, 0.741176, 0.278431), Color3.new(0.454902, 0.52549, 0.615686), Color3.new(0.352941, 0.298039, 0.258824), Color3.new(0.654902, 0.368627, 0.607843), Color3.new(0.972549, 0.85098, 0.427451), Color3.new(0.909804, 0.729412, 0.784314), Color3.new(0.129412, 0.329412, 0.72549), Color3.new(0.639216, 0.294118, 0.294118), Color3.new(0.388235, 0.372549, 0.384314), Color3.new(0, 1, 0), Color3.new(0.627451, 0.372549, 0.207843), Color3.new(1, 0.686275, 0), Color3.new(0.835294, 0.45098, 0.239216), Color3.new(0.737255, 0.607843, 0.364706), Color3.new(1, 0, 0), Color3.new(1, 0, 0.74902), Color3.new(0.972549, 0.972549, 0.972549), Color3.new(0.94902, 0.952941, 0.952941), Color3.new(0.623529, 0.952941, 0.913725), Color3.new(0.756863, 0.745098, 0.258824), Color3.new(0.854902, 0.52549, 0.478431), Color3.new(1, 0.596078, 0.862745), Color3.new(0.419608, 0.196078, 0.486275), Color3.new(1, 1, 0), Color3.new(0.780392, 0.67451, 0.470588), Color3.new(0.768627, 0.156863, 0.109804), Color3.new(0.960784, 0.803922, 0.188235), Color3.new(0.486275, 0.611765, 0.419608), Color3.new(0.156863, 0.498039, 0.278431), Color3.new(1, 0.788235, 0.788235), Color3.new(0.584314, 0.47451, 0.466667), Color3.new(1, 1, 0.8), Color3.new(0.992157, 0.917647, 0.552941), Color3.new(0.898039, 0.894118, 0.87451), Color3.new(0.227451, 0.490196, 0.0823529), Color3.new(0.105882, 0.164706, 0.207843), Color3.new(0, 0.12549, 0.376471), Color3.new(0.686275, 0.866667, 1), Color3.new(0.917647, 0.721569, 0.57254)};
	ScalesOrder = {"HeadScale", "HeightScale", "WidthScale", "BodyTypeScale", "ProportionScale"};
	Color = {
		Default = Color3.fromRGB(79, 84, 95);
		MouseDown = Color3.fromRGB(15, 15, 15);
		Hover = Color3.fromRGB(128, 128, 128);
	};
	TextColor = {
		Disabled = Color3.fromRGB(128, 128, 128);
		Default = Color3.fromRGB(255, 255, 255);
	};
}
local Cleanup_upvr = module_upvr.Cleanup
local function ScaleSlider_upvr() -- Line 119, Named "ScaleSlider"
	--[[ Upvalues[6]:
		[1]: Value_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Cleanup_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: Children_upvr (readonly)
		[6]: Ref_upvr (readonly)
	]]
	local Value_upvr_result1_2 = Value_upvr()
	local Value_upvr_result1_3 = Value_upvr()
	local Value_upvr_result1 = Value_upvr()
	return New_upvr("Frame")({
		Name = "BodyType";
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(0.95, 0.125);
		[Cleanup_upvr] = module_upvr.cleanup;
		[Children_upvr] = {New_upvr("TextLabel")({
			Name = "Info";
			Text = "";
			TextColor3 = Color3.fromRGB(255, 255, 255);
			TextScaled = true;
			TextSize = 14;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0, 0.2);
			Size = UDim2.fromScale(1, 0.25);
			[Ref_upvr] = Value_upvr_result1_3;
		}), New_upvr("Frame")({
			Name = "Bar";
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundColor3 = Color3.fromRGB(102, 102, 102);
			BorderSizePixel = 0;
			Position = UDim2.fromScale(0.5, 0.8);
			Size = UDim2.fromScale(1, 0.1);
			[Ref_upvr] = Value_upvr_result1_2;
			[Children_upvr] = {New_upvr("Frame")({
				Name = "DragBar";
				AnchorPoint = Vector2.new(0, 0.5);
				BackgroundColor3 = Color3.fromRGB(82, 172, 255);
				BorderSizePixel = 0;
				Position = UDim2.fromScale(0, 0.5);
				Size = UDim2.fromScale(1, 1);
				[Ref_upvr] = Value_upvr_result1;
			}), New_upvr("ImageButton")({
				Name = "Slider";
				Image = "rbxassetid://10451411298";
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Position = UDim2.fromScale(1, 0.5);
				Size = UDim2.fromScale(3, 3);
				SizeConstraint = Enum.SizeConstraint.RelativeYY;
			})};
		})};
	}), Value_upvr_result1_2:get(), Value_upvr_result1_3:get(), Value_upvr_result1:get()
end
local OnEvent_upvr = module_upvr.OnEvent
local function ColorButton_upvr(arg1, arg2) -- Line 191, Named "ColorButton"
	--[[ Upvalues[3]:
		[1]: New_upvr (readonly)
		[2]: OnEvent_upvr (readonly)
		[3]: Children_upvr (readonly)
	]]
	local module = {
		Name = "ColorButton";
		Image = "rbxassetid://10451411298";
	}
	module.ImageColor3 = arg1
	module.AnchorPoint = Vector2.new(0.5, 0.5)
	module.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	module.BackgroundTransparency = 1
	module.BorderSizePixel = 0
	module.Position = UDim2.fromScale(1, 0.5)
	module.Size = UDim2.fromScale(0.1, 0.1)
	module.SizeConstraint = Enum.SizeConstraint.RelativeXX
	module[OnEvent_upvr("Activated")] = function() -- Line 204
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		arg2()
	end
	module[Children_upvr] = {New_upvr("UIAspectRatioConstraint")({
		Name = "UIAspectRatioConstraint";
	})}
	return New_upvr("ImageButton")(module)
end
local function GetSkinToneFrame_upvr() -- Line 216, Named "GetSkinToneFrame"
	--[[ Upvalues[4]:
		[1]: Value_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: Ref_upvr (readonly)
	]]
	local Value_upvr_result1_5 = Value_upvr()
	return New_upvr("Frame")({
		Name = "SkinTone";
		AnchorPoint = Vector2.new(1, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Position = UDim2.fromScale(1, 0.5);
		Size = UDim2.fromScale(0.495, 1);
		[Children_upvr] = {New_upvr("Frame")({
			Name = "Colors";
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Position = UDim2.fromScale(0.5, 0.075);
			Size = UDim2.fromScale(1, 0.925);
			[Ref_upvr] = Value_upvr_result1_5;
			[Children_upvr] = {New_upvr("UIGridLayout")({
				Name = "UIGridLayout";
				CellPadding = UDim2.fromScale(0.05, 0);
				CellSize = UDim2.fromScale(0.09, 0.085);
				SortOrder = Enum.SortOrder.LayoutOrder;
			})};
		}), New_upvr("TextLabel")({
			Name = "TextLabel";
			Text = "Skin Tone";
			TextColor3 = Color3.fromRGB(255, 255, 255);
			TextScaled = true;
			TextSize = 14;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0, 0.025);
			Size = UDim2.fromScale(0.258, 0.032);
		})};
	}), Value_upvr_result1_5:get()
end
local function GetBodyScalesFrame_upvr() -- Line 268, Named "GetBodyScalesFrame"
	--[[ Upvalues[4]:
		[1]: Value_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: Ref_upvr (readonly)
	]]
	local Value_upvr_result1_4 = Value_upvr()
	return New_upvr("Frame")({
		Name = "BodyScale";
		AnchorPoint = Vector2.new(0, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Position = UDim2.fromScale(0, 0.5);
		Size = UDim2.fromScale(0.495, 1);
		[Children_upvr] = {New_upvr("Frame")({
			Name = "Scales";
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Position = UDim2.fromScale(0.5, 0.075);
			Size = UDim2.fromScale(1, 0.925);
			[Ref_upvr] = Value_upvr_result1_4;
			[Children_upvr] = {New_upvr("UIListLayout")({
				Name = "UIListLayout";
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			})};
		}), New_upvr("TextLabel")({
			Name = "TextLabel";
			Text = "Body Scale";
			TextColor3 = Color3.fromRGB(255, 255, 255);
			TextScaled = true;
			TextSize = 14;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0, 0.025);
			Size = UDim2.fromScale(0.27, 0.04);
		})};
	}), Value_upvr_result1_4:get()
end
local function ParentFrame_upvr() -- Line 320, Named "ParentFrame"
	--[[ Upvalues[1]:
		[1]: New_upvr (readonly)
	]]
	return New_upvr("Frame")({
		Name = "BodyFrame";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(20, 20, 20);
		BorderSizePixel = 0;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
	})
end
local module_upvr_2 = {}
module_upvr_2.__index = module_upvr_2
function module_upvr_2.new(arg1) -- Line 334
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr_2)
	setmetatable_result1.Enabled = false
	setmetatable_result1.Container = arg1
	setmetatable_result1.Observers = {}
	setmetatable_result1.GuiObjects = {}
	return setmetatable_result1
end
local Slider_2_upvr = require(script.Parent.Parent.Classes.Slider)
function module_upvr_2.Init(arg1, arg2) -- Line 345
	--[[ Upvalues[8]:
		[1]: ParentFrame_upvr (readonly)
		[2]: GetSkinToneFrame_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: ColorButton_upvr (readonly)
		[5]: GetBodyScalesFrame_upvr (readonly)
		[6]: BodyScaleValues_upvr (readonly)
		[7]: ScaleSlider_upvr (readonly)
		[8]: Slider_2_upvr (readonly)
	]]
	arg1.Controllers = arg2
	local ParentFrame_result1 = ParentFrame_upvr()
	ParentFrame_result1.Visible = false
	ParentFrame_result1.Parent = arg1.Container:WaitForChild("FrameContainer")
	local GetSkinToneFrame_result1, GetSkinToneFrame_result2 = GetSkinToneFrame_upvr()
	for _, v_upvr in pairs(tbl_upvr.ListOfColors) do
		ColorButton_upvr(v_upvr, function() -- Line 355
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: v_upvr (readonly)
			]]
			if arg1.Enabled then
				arg1.Controllers.AvatarPreviewController:UpdateColor(v_upvr)
			end
		end).Parent = GetSkinToneFrame_result2
	end
	local GetBodyScalesFrame_upvr_result1, GetBodyScalesFrame_result2 = GetBodyScalesFrame_upvr()
	for i_2 = 1, #tbl_upvr.ScalesOrder do
		local var63 = tbl_upvr.ScalesOrder[i_2]
		local var64 = BodyScaleValues_upvr[var63]
		local string_gsub_result1_upvr = string.gsub(var63, "Scale", "")
		local ScaleSlider_result1, ScaleSlider_result2, ScaleSlider_upvr_result3_upvr, ScaleSlider_upvr_result4_upvr = ScaleSlider_upvr()
		ScaleSlider_result1.Name = string_gsub_result1_upvr
		local any_new_result1_upvr = Slider_2_upvr.new(ScaleSlider_result2, {
			SliderData = {
				Start = var64.Min;
				End = var64.Max;
				Increment = 0.01;
				DefaultValue = math.max(var64.Min, var64.Default);
			};
			MoveType = "Instant";
			MoveInfo = TweenInfo.new(0.1);
			Padding = 0;
			Axis = 'X';
			AllowBackgroundClick = true;
		})
		any_new_result1_upvr:Track()
		any_new_result1_upvr.Changed:Connect(function(arg1_2) -- Line 392
			--[[ Upvalues[5]:
				[1]: ScaleSlider_upvr_result3_upvr (readonly)
				[2]: string_gsub_result1_upvr (readonly)
				[3]: ScaleSlider_upvr_result4_upvr (readonly)
				[4]: any_new_result1_upvr (readonly)
				[5]: arg1 (readonly)
			]]
			ScaleSlider_upvr_result3_upvr.Text = string.format("%s (%d%%)", string_gsub_result1_upvr, arg1_2 * 100)
			ScaleSlider_upvr_result4_upvr.Size = UDim2.fromScale(any_new_result1_upvr._data._percent, 1)
			arg1.Controllers.AvatarPreviewController:UpdateScale(string_gsub_result1_upvr, arg1_2)
		end)
		;({})[var63] = {
			Slider = any_new_result1_upvr;
			Instance = ScaleSlider_result1;
		}
		local var75
	end
	GetSkinToneFrame_result1.Parent = ParentFrame_result1
	GetBodyScalesFrame_upvr_result1.Parent = ParentFrame_result1
	arg1.GuiObjects.Frame = ParentFrame_result1
	arg1.GuiObjects.ScalesHolder = GetBodyScalesFrame_result2
	arg1.GuiObjects.BodyScaleFrame = GetBodyScalesFrame_upvr_result1
	arg1.GuiObjects.SkinFrame = GetSkinToneFrame_result1
	arg1.GuiObjects.Sliders = var75
end
function module_upvr_2.Start(arg1) -- Line 415
	for _, v_2 in pairs(arg1.GuiObjects.Sliders) do
		v_2.Instance.Parent = arg1.GuiObjects.ScalesHolder
	end
end
function module_upvr_2.UpdateSliders(arg1, arg2) -- Line 423
	--[[ Upvalues[1]:
		[1]: BodyScaleValues_upvr (readonly)
	]]
	arg1.SettingDefault = true
	for i_4, v_3 in pairs(BodyScaleValues_upvr) do
		local Slider = arg1.GuiObjects.Sliders[i_4].Slider
		if Slider then
			Slider:OverrideValue(math.clamp(arg2[i_4], v_3.Min, v_3.Max))
		end
	end
	arg1.SettingDefault = false
end
function module_upvr_2.Enable(arg1) -- Line 440
	arg1.Enabled = true
	arg1.GuiObjects.Frame.Visible = true
	arg1.Controllers.TopBarController:ResetSearchBar()
	arg1.Controllers.OutfitFeedController:Disable()
end
function module_upvr_2.Disable(arg1) -- Line 448
	arg1.Enabled = false
	arg1.GuiObjects.Frame.Visible = false
end
return module_upvr_2