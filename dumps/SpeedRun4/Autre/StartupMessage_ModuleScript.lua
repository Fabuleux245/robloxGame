-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:18
-- Luau version 6, Types version 3
-- Time taken: 0.001908 seconds

local Parent = script:FindFirstAncestor("AppStartup").Parent
local UIBlox = require(Parent.UIBlox)
local Dash_upvr = require(Parent.Dash)
local React_upvr = require(Parent.React)
local LinkButton_upvr = UIBlox.App.Button.LinkButton
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local Images_upvr = UIBlox.App.ImageSet.Images
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 40, Named "StartupMessage"
	--[[ Upvalues[6]:
		[1]: Dash_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: LinkButton_upvr (readonly)
		[4]: InteractiveAlert_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
	]]
	local localizedStrings = arg1.localizedStrings
	local message = arg1.message
	local overlayColor = arg1.overlayColor
	local module = {
		Size = UDim2.new(1, 0, 1, 0);
	}
	local udim2 = UDim2.new(0, 0, 0, 0)
	module.Position = udim2
	local middleContent
	if message.isBlocking then
		udim2 = 0
	else
		udim2 = overlayColor.Transparency
	end
	module.BackgroundTransparency = udim2
	module.BackgroundColor3 = overlayColor.Color3
	module.Active = true
	local module_2 = {}
	local tbl = {
		screenSize = arg1.screenSize;
	}
	middleContent = localizedStrings.titleText or ""
	tbl.title = middleContent
	middleContent = localizedStrings.bodyText or ""
	tbl.bodyText = middleContent
	middleContent = Images_upvr["icons/status/error_large"]
	tbl.titleIcon = middleContent
	local any_map_result1_upvr = Dash_upvr.map(arg1.localizedLinks, function(arg1_2) -- Line 47
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: LinkButton_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return React_upvr.createElement(LinkButton_upvr, {
			text = arg1_2.label;
			onActivated = function() -- Line 50, Named "onActivated"
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_2 (readonly)
				]]
				arg1.onOpenUrl(arg1_2.url, arg1_2.label)
			end;
		})
	end)
	function middleContent() -- Line 68
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: Dash_upvr (copied, readonly)
			[3]: any_map_result1_upvr (readonly)
		]]
		return React_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
		}, Dash_upvr.append({React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		})}, any_map_result1_upvr))
	end
	tbl.middleContent = middleContent
	if message.isBlocking then
		middleContent = nil
	else
		middleContent = {}
		middleContent.buttons = {{
			buttonType = ButtonType_upvr.PrimarySystem;
			props = {
				onActivated = arg1.onDismissed;
				text = localizedStrings.buttonText;
			};
		}}
	end
	tbl.buttonStackInfo = middleContent
	module_2.InteractiveAlert = React_upvr.createElement(InteractiveAlert_upvr, tbl)
	return React_upvr.createElement("Frame", module, module_2)
end