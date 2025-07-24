-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:17
-- Luau version 6, Types version 3
-- Time taken: 0.004981 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local React_upvr = require(AppChat.Parent.React)
local Frame_upvr = require(AppChat.Components.Common.Frame)
local AvatarThumbnail_upvr = require(script.Parent.AvatarThumbnail)
local UIListLayout_upvr = require(AppChat.Components.Common.UIListLayout)
local CircleMask_upvr = require(script.Parent.CircleMask)
return function(arg1) -- Line 25, Named "AvatarGroup"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: Frame_upvr (readonly)
		[3]: AvatarThumbnail_upvr (readonly)
		[4]: UIListLayout_upvr (readonly)
		[5]: CircleMask_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local len = #arg1.thumbnails
	local var16 = len / 2
	local var17
	if len % 2 ~= 0 then
		var17 = false
	else
		var17 = true
	end
	if not var17 or not var16 then
		local floored = math.floor(var16)
	end
	local var19 = len - floored
	for i, v in arg1.thumbnails do
		local var20
		local var21 = 0
		local var22
		local var23
		if i <= floored then
			var20 = UDim2.new(1 / floored, 0, 1 / floored, 0)
			var22 = {}
			if len == 3 then
				var21 = 0.125
			elseif len == 2 then
				var21 = 0.125
			end
			var23 = React_upvr.createElement(Frame_upvr, {
				Size = UDim2.fromScale(1, 1);
				ZIndex = 2;
			}, {
				border = React_upvr.createElement(Frame_upvr, {
					Size = UDim2.new(1, 0, 0, 2);
					Position = UDim2.new(0, 0, 1, -1);
					BackgroundColor3 = arg1.circleDividerColor3;
					BackgroundTransparency = arg1.circleDividerTransparency;
				});
				borderVertical = React_upvr.createElement(Frame_upvr, {
					Size = UDim2.new(0, 2, 1, 0);
					Position = UDim2.new(0, -1, 0, 0);
					BackgroundColor3 = arg1.circleDividerColor3;
					BackgroundTransparency = arg1.circleDividerTransparency;
				});
			})
		else
			var20 = UDim2.new(1 / var19, 0, 1 / var19, 0)
			var22 = {}
			if len == 2 then
				var21 = -0.125
			end
			var23 = React_upvr.createElement(Frame_upvr, {
				ZIndex = 2;
			}, {
				border = React_upvr.createElement(Frame_upvr, {
					Size = UDim2.new(1, 0, 0, 2);
					Position = UDim2.new(0, 0, 0, -1);
					BackgroundColor3 = arg1.circleDividerColor3;
					BackgroundTransparency = arg1.circleDividerTransparency;
				});
				borderVertical = React_upvr.createElement(Frame_upvr, {
					Size = UDim2.new(0, 2, 1, 0);
					Position = UDim2.new(0, -1, 0, 0);
					BackgroundColor3 = arg1.circleDividerColor3;
					BackgroundTransparency = arg1.circleDividerTransparency;
				});
			})
		end
		var22["thumbnail-"..tostring(i)] = React_upvr.createElement(Frame_upvr, {
			Size = var20;
			ClipsDescendants = true;
			LayoutOrder = i;
		}, {
			headshotContainer = React_upvr.createElement(Frame_upvr, {
				Size = UDim2.fromScale(1, 1);
				Position = UDim2.new(var21, 0, 0, 0);
			}, {
				headshot = React_upvr.createElement(AvatarThumbnail_upvr, {
					thumbnail = v;
				});
			});
			borderObject = var23;
		})
	end
	return React_upvr.createElement(CircleMask_upvr, {
		circleColor3 = arg1.circleColor3;
		circleTransparency = arg1.circleTransparency;
		circleInteriorBackgroundColor3 = arg1.circleInteriorBackgroundColor3;
		circleInteriorBackgroundTransparency = arg1.circleInteriorBackgroundTransparency;
		circleDividerColor3 = arg1.circleDividerColor3;
		circleDividerTransparency = arg1.circleDividerTransparency;
		overlaySize = arg1.overlaySize;
		onActivated = arg1.onActivated;
	}, {
		fragment = React_upvr.createElement(React_upvr.Fragment, {}, {
			uiCorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0);
			});
			left = React_upvr.createElement(Frame_upvr, {
				Size = UDim2.new(1, -1, 1, 0);
				Position = UDim2.fromScale(-0.5, 0);
			}, {
				elementContainer = React_upvr.createElement(Frame_upvr, {
					Size = UDim2.fromScale(1, 1);
				}, {
					layout = React_upvr.createElement(UIListLayout_upvr, {
						HorizontalAlignment = Enum.HorizontalAlignment.Right;
					});
				}, {});
			});
			right = React_upvr.createElement(Frame_upvr, {
				Size = UDim2.new(1, -1, 1, 0);
				Position = UDim2.new(0.5, -2, 0, 0);
			}, {
				elementContainer = React_upvr.createElement(Frame_upvr, {
					Size = UDim2.fromScale(1, 1);
				}, {
					layout = React_upvr.createElement(UIListLayout_upvr, {
						HorizontalAlignment = Enum.HorizontalAlignment.Left;
					});
				}, {});
			});
		});
	})
end