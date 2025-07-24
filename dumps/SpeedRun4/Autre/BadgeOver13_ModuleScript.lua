-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:21
-- Luau version 6, Types version 3
-- Time taken: 0.001192 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local useAnalytics_upvr = require(script.Parent.useAnalytics)
local createElement_upvr = React_upvr.createElement
local Badge_upvr = require(script.Parent.Badge)
local Popup_upvr = require(script.Parent.Popup)
return function(arg1) -- Line 23
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: useAnalytics_upvr (readonly)
		[3]: createElement_upvr (readonly)
		[4]: Badge_upvr (readonly)
		[5]: Popup_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2 = React_upvr.useState(false)
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	React_upvr.useEffect(function() -- Line 27
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: useAnalytics_upvr_result1_upvr (readonly)
		]]
		if arg1.visible then
			useAnalytics_upvr_result1_upvr.fireEvent("badgeImpression", {
				badgeType = "13Plus";
			})
		end
	end, {arg1.visible})
	return createElement_upvr("Frame", {
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.X;
		Size = UDim2.fromOffset(0, 32);
		LayoutOrder = arg1.layoutOrder;
		Visible = arg1.visible;
	}, {
		layout = createElement_upvr("UIListLayout", {
			Padding = UDim.new(0, 14);
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		badge = createElement_upvr(Badge_upvr, {
			isPopupVisible = any_useState_result1;
			setIsPopupVisible = any_useState_result2;
			layoutOrder = 1;
		});
		popup = createElement_upvr(Popup_upvr, {
			bodyText = arg1.bodyText;
			linkText = arg1.linkText;
			openWebview = arg1.openWebview;
			visible = any_useState_result1;
			analyticsCopyType = arg1.analyticsCopyType;
			layoutOrder = 2;
		});
	})
end