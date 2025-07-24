-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:47
-- Luau version 6, Types version 3
-- Time taken: 0.001586 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local React_upvr = require(VirtualEvents.Parent.React)
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
local udim_upvr = UDim.new(0, 12)
return function(arg1) -- Line 19, Named "FacePile"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: udim_upvr (readonly)
	]]
	local tbl = {}
	for i, v in React_upvr.useMemo(function() -- Line 22
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
		]]
		if arg1.desiredFirstUserId then
			local any_find_result1_2 = Cryo_upvr.List.find(arg1.userIds, arg1.desiredFirstUserId)
			if any_find_result1_2 then
				local clone = table.clone(arg1.userIds)
				table.remove(clone, any_find_result1_2)
				table.insert(clone, 1, arg1.desiredFirstUserId)
				return clone
			end
		end
		return arg1.userIds
	end, {arg1.userIds, arg1.desiredFirstUserId}), nil do
		tbl[v] = React_upvr.createElement("ImageLabel", {
			LayoutOrder = i;
			BackgroundColor3 = Color3.fromRGB(209, 209, 209);
			Image = "rbxthumb://type=AvatarHeadShot&id=%s&w=100&h=100":format(v);
			Size = UDim2.fromOffset(36, 36);
		}, {
			BorderRadius = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0.5, 0);
			});
		})
	end
	return React_upvr.createElement("Frame", {
		LayoutOrder = arg1.layoutOrder;
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			Padding = udim_upvr;
		});
		Faces = React_upvr.createElement(React_upvr.Fragment, nil, tbl);
	})
end