-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:46
-- Luau version 6, Types version 3
-- Time taken: 0.003744 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local Foundation = require(VirtualEvents.Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(VirtualEvents.Parent.React)
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
local udim_upvr = UDim.new(0, -8)
local Image_upvr = Foundation.Image
return function(arg1) -- Line 21, Named "EventSocialProof"
	--[[ Upvalues[5]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: udim_upvr (readonly)
		[5]: Image_upvr (readonly)
	]]
	local var3_result1 = useTokens_upvr()
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 24
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
		]]
		if arg1.desiredFirstUserId and Cryo_upvr.List.find(arg1.userIds, arg1.desiredFirstUserId) then
			return arg1.desiredFirstUserId
		end
		return arg1.userIds[1]
	end, {arg1.userIds, arg1.desiredFirstUserId})
	local any_useMemo_result1_2 = React_upvr.useMemo(function() -- Line 35
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.userIds[2] or nil
	end, {arg1.userIds})
	local module = {}
	local any_createElement_result1 = React_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		Padding = udim_upvr;
	})
	module.Layout = any_createElement_result1
	if any_useMemo_result1 then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("Frame", {
			BackgroundColor3 = var3_result1.Inverse.Surface.Surface_300.Color3;
			Size = UDim2.fromOffset(25, 25);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			ZIndex = 3;
		}, {
			Corner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0);
			});
			FirstUserFace = React_upvr.createElement(Image_upvr, {
				ZIndex = 4;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				tag = "radius-circle";
				Image = "rbxthumb://type=AvatarHeadShot&id=%s&w=100&h=100":format(any_useMemo_result1);
				backgroundStyle = {
					Color3 = var3_result1.Color.Shift.Shift_200.Color3;
					Transparency = 0;
				};
				Size = UDim2.fromOffset(20, 20);
			});
		})
	else
		any_createElement_result1 = nil
	end
	module.FirstUser = any_createElement_result1
	if any_useMemo_result1_2 then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("Frame", {
			BackgroundColor3 = var3_result1.Inverse.Surface.Surface_300.Color3;
			Size = UDim2.fromOffset(25, 25);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			ZIndex = 1;
		}, {
			Corner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0);
			});
			SecondUserFace = React_upvr.createElement(Image_upvr, {
				ZIndex = 2;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				tag = "radius-circle";
				Image = "rbxthumb://type=AvatarHeadShot&id=%s&w=100&h=100":format(any_useMemo_result1_2);
				backgroundStyle = {
					Color3 = var3_result1.Color.Shift.Shift_200.Color3;
					Transparency = 0;
				};
				Size = UDim2.fromOffset(20, 20);
			});
		})
	else
		any_createElement_result1 = nil
	end
	module.SecondUser = any_createElement_result1
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
	}, module)
end