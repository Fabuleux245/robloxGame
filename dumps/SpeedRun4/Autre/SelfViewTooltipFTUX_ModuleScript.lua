-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:00
-- Luau version 6, Types version 3
-- Time taken: 0.002438 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local UIBlox = require(CorePackages.Packages.UIBlox)
local React_upvr = require(CorePackages.Packages.React)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local UserInputService_upvr = game:GetService("UserInputService")
local Promise_upvr = require(CorePackages.Packages.Promise)
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
return function(arg1) -- Line 14
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: RobloxTranslator_upvr (readonly)
		[3]: CoreGui_upvr (readonly)
		[4]: TooltipOrientation_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: Promise_upvr (readonly)
		[7]: withTooltip_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(true)
	local fallbackText_upvw = arg1.fallbackText
	pcall(function() -- Line 18
		--[[ Upvalues[3]:
			[1]: fallbackText_upvw (read and write)
			[2]: RobloxTranslator_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		fallbackText_upvw = RobloxTranslator_upvr:FormatByKey(arg1.translationKey)
	end)
	local var17_upvw
	local function _() -- Line 34
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: var17_upvw (read and write)
		]]
		any_useState_result2_upvr(false)
		if var17_upvw then
			var17_upvw:Disconnect()
			var17_upvw = nil
		end
	end
	var17_upvw = UserInputService_upvr.InputBegan:Connect(function(arg1_2) -- Line 43
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: var17_upvw (read and write)
		]]
		local UserInputType = arg1_2.UserInputType
		if UserInputType == Enum.UserInputType.MouseButton1 or UserInputType == Enum.UserInputType.Touch then
			any_useState_result2_upvr(false)
			if var17_upvw then
				var17_upvw:Disconnect()
				var17_upvw = nil
			end
		end
	end)
	Promise_upvr.delay(arg1.tooltipLifetime):andThen(function() -- Line 49
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: var17_upvw (read and write)
		]]
		any_useState_result2_upvr(false)
		if var17_upvw then
			var17_upvw:Disconnect()
			var17_upvw = nil
		end
	end)
	return withTooltip_upvr({
		textAlignment = Enum.TextXAlignment.Left;
		bodyText = fallbackText_upvw;
	}, {
		active = any_useState_result1;
		guiTarget = CoreGui_upvr;
		DisplayOrder = 10;
		preferredOrientation = TooltipOrientation_upvr.Left;
	}, function(arg1_3) -- Line 53
		--[[ Upvalues[1]:
			[1]: React_upvr (copied, readonly)
		]]
		local function var23(arg1_4) -- Line 54
			--[[ Upvalues[1]:
				[1]: arg1_3 (readonly)
			]]
			arg1_3(arg1_4)
		end
		return React_upvr.createElement("Frame", {
			Visible = false;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, 0);
			[React_upvr.Change.AbsoluteSize] = var23;
			[React_upvr.Change.AbsolutePosition] = var23;
		})
	end)
end