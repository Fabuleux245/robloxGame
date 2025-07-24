-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:24
-- Luau version 6, Types version 3
-- Time taken: 0.001729 seconds

local Parent = script.Parent.Parent
local LinkingProtocol_upvr = require(Parent.LinkingProtocol).LinkingProtocol
local Roact_upvr = require(Parent.Roact)
local Interactable_upvr = require(Parent.UIBlox).Core.Control.Interactable
local any_FormatByKey_result1_upvr = require(Parent.RobloxTranslator):FormatByKey("CoreScripts.Ads.Label.IllegalContentReportingLink")
function ReportAdFooter(arg1) -- Line 18
	--[[ Upvalues[4]:
		[1]: LinkingProtocol_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Interactable_upvr (readonly)
		[4]: any_FormatByKey_result1_upvr (readonly)
	]]
	local module = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		UIPadding = Roact_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 16);
		});
		Border = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 1);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 0.8;
			LayoutOrder = 1;
		});
	}
	local tbl = {
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}
	local default_upvr = LinkingProtocol_upvr.default
	local var14_upvr = "https://www.roblox.com/illegal-content-reporting?contentURL=".."https://create.roblox.com/store/asset/"..arg1.assetId
	tbl[Roact_upvr.Event.Activated] = function() -- Line 46
		--[[ Upvalues[2]:
			[1]: default_upvr (readonly)
			[2]: var14_upvr (readonly)
		]]
		default_upvr:openURL(var14_upvr)
	end
	module.InteractableText = Roact_upvr.createElement(Interactable_upvr, tbl, {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		FooterText = Roact_upvr.createElement("TextLabel", {
			Text = any_FormatByKey_result1_upvr;
			TextColor3 = Color3.fromRGB(82, 173, 244);
			BackgroundTransparency = 1;
			Font = Enum.Font.GothamBold;
			TextSize = 16;
			TextScaled = false;
			TextWrapped = false;
			AutomaticSize = Enum.AutomaticSize.XY;
			AnchorPoint = Vector2.new(0.5, 0.5);
		}, {
			UIPadding = Roact_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 16);
			});
		});
	})
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 48);
		BackgroundTransparency = 1;
	}, module)
end
return ReportAdFooter