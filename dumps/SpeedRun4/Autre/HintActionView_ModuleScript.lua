-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:50
-- Luau version 6, Types version 3
-- Time taken: 0.002965 seconds

local CorePackages = game:GetService("CorePackages")
local Shell = game:GetService("CoreGui"):FindFirstChild("RobloxGui"):FindFirstChild("Modules"):FindFirstChild("Shell")
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local module_upvr = require(Shell:FindFirstChild("GlobalSettings"))
local TextService_upvr = game:GetService("TextService")
local module_upvr_2 = require(Shell:FindFirstChild("Utility"))
local ContextActionService_upvr = game:GetService("ContextActionService")
local getFFlagDebugLuaAppAlwaysUseGamepad_upvr = require(CorePackages.Workspace.Packages.SharedFlags).getFFlagDebugLuaAppAlwaysUseGamepad
local RoactGamepad_upvr = require(CorePackages.Packages.RoactGamepad)
return function(arg1, arg2, arg3) -- Line 26, Named "createHintActionView"
	--[[ Upvalues[7]:
		[1]: Create_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: TextService_upvr (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: ContextActionService_upvr (readonly)
		[6]: getFFlagDebugLuaAppAlwaysUseGamepad_upvr (readonly)
		[7]: RoactGamepad_upvr (readonly)
	]]
	if arg3 == nil then
	end
	local module = {}
	if arg2 == nil or #arg2 == 0 then
		local const_string_upvw = "DefaultHintAction"
	end
	local tbl = {
		Name = "HintActionContainer";
		Size = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
	}
	tbl.Parent = arg1
	local var13_upvr = Create_upvr("Frame")(tbl)
	local var15_upvr = Create_upvr("TextLabel")({
		Name = "HintActionText";
		BackgroundTransparency = 1;
		Font = module_upvr.RegularFont;
		FontSize = module_upvr.TitleSize;
		TextColor3 = module_upvr.WhiteTextColor;
		TextXAlignment = Enum.TextXAlignment.Right;
		Text = "";
		ZIndex = 10;
		Parent = var13_upvr;
	})
	local var17_upvr = Create_upvr("ImageLabel")({
		Name = "HintActionImage";
		Size = UDim2.new(0, 83, 0, 83);
		BackgroundTransparency = 1;
		Image = "";
		ZIndex = 10;
		Parent = var13_upvr;
	})
	local udim2_upvw = UDim2.new(1, -1, 1, -1)
	local function updateLayout_upvr() -- Line 69, Named "updateLayout"
		--[[ Upvalues[6]:
			[1]: TextService_upvr (copied, readonly)
			[2]: var15_upvr (readonly)
			[3]: module_upvr_2 (copied, readonly)
			[4]: var17_upvr (readonly)
			[5]: var13_upvr (readonly)
			[6]: udim2_upvw (read and write)
		]]
		local any_GetTextSize_result1 = TextService_upvr:GetTextSize(var15_upvr.Text, module_upvr_2.ConvertFontSizeEnumToInt(var15_upvr.FontSize), var15_upvr.Font, Vector2.new(0, 0))
		var15_upvr.Size = UDim2.new(0, any_GetTextSize_result1.x, 0, var17_upvr.Size.Y.Offset)
		var15_upvr.Position = UDim2.new(1, -any_GetTextSize_result1.x, 0, -4)
		var13_upvr.Size = UDim2.new(0, any_GetTextSize_result1.x + var17_upvr.Size.X.Offset + 8, 0, var17_upvr.Size.Y.Offset)
		var13_upvr.Position = UDim2.new(udim2_upvw.X.Scale, udim2_upvw.X.Offset * var13_upvr.Size.X.Offset, udim2_upvw.Y.Scale, udim2_upvw.Y.Offset * var13_upvr.Size.Y.Offset)
	end
	function module.BindAction(arg1_2, arg2_2, arg3_2) -- Line 86
		--[[ Upvalues[4]:
			[1]: ContextActionService_upvr (copied, readonly)
			[2]: const_string_upvw (read and write)
			[3]: getFFlagDebugLuaAppAlwaysUseGamepad_upvr (copied, readonly)
			[4]: RoactGamepad_upvr (copied, readonly)
		]]
		if not arg2_2 then
		else
			ContextActionService_upvr:UnbindCoreAction(const_string_upvw)
			if getFFlagDebugLuaAppAlwaysUseGamepad_upvr() and RoactGamepad_upvr.Config.DebugKeyboardBindings then
				local var20 = RoactGamepad_upvr.Config.DebugKeyboardBindings[arg3_2]
				if not var20 then
					var20 = {}
				end
				ContextActionService_upvr:BindCoreAction(const_string_upvw, arg2_2, false, arg3_2, table.unpack(var20))
				return
			end
			ContextActionService_upvr:BindCoreAction(const_string_upvw, arg2_2, false, arg3_2)
		end
	end
	function module.UnbindAction(arg1_3) -- Line 100
		--[[ Upvalues[2]:
			[1]: ContextActionService_upvr (copied, readonly)
			[2]: const_string_upvw (read and write)
		]]
		ContextActionService_upvr:UnbindCoreAction(const_string_upvw)
	end
	function module.SetParent(arg1_4, arg2_3) -- Line 104
		--[[ Upvalues[1]:
			[1]: var13_upvr (readonly)
		]]
		var13_upvr.Parent = arg2_3
	end
	function module.SetVisible(arg1_5, arg2_4) -- Line 108
		--[[ Upvalues[1]:
			[1]: var13_upvr (readonly)
		]]
		var13_upvr.Visible = arg2_4
	end
	function module.SetTransparency(arg1_6, arg2_5) -- Line 112
		--[[ Upvalues[2]:
			[1]: var15_upvr (readonly)
			[2]: var17_upvr (readonly)
		]]
		var15_upvr.TextTransparency = arg2_5
		var17_upvr.ImageTransparency = arg2_5
	end
	function module.SetVisibleWithTween(arg1_7, arg2_6) -- Line 117
		--[[ Upvalues[3]:
			[1]: module_upvr_2 (copied, readonly)
			[2]: var15_upvr (readonly)
			[3]: var17_upvr (readonly)
		]]
		module_upvr_2.PropertyTweener(var15_upvr, "TextTransparency", var15_upvr.TextTransparency, arg2_6, 0.25, module_upvr_2.EaseOutQuad, true)
		module_upvr_2.PropertyTweener(var17_upvr, "ImageTransparency", var17_upvr.ImageTransparency, arg2_6, 0.25, module_upvr_2.EaseOutQuad, true)
	end
	function module.SetText(arg1_8, arg2_7) -- Line 122
		--[[ Upvalues[2]:
			[1]: var15_upvr (readonly)
			[2]: updateLayout_upvr (readonly)
		]]
		if arg2_7 == var15_upvr.Text then
		else
			var15_upvr.Text = arg2_7
			updateLayout_upvr()
		end
	end
	function module.SetImage(arg1_9, arg2_8) -- Line 131
		--[[ Upvalues[1]:
			[1]: var17_upvr (readonly)
		]]
		if arg2_8 == var17_upvr.Image then
		else
			var17_upvr.Image = arg2_8
		end
	end
	return module
end