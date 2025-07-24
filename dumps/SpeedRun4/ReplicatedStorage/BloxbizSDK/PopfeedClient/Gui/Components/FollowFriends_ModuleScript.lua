-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:48
-- Luau version 6, Types version 3
-- Time taken: 0.003935 seconds

local Players_upvr = game:GetService("Players")
local Parent = script.Parent.Parent
local Fusion_upvr = require(Parent.Parent.Parent.Utils.Fusion)
local Components = Parent.Components
local Font_fromEnum_result1_upvr = Font.fromEnum(Enum.Font.Arial)
Font_fromEnum_result1_upvr.Bold = true
local function pagesToTable_upvr(arg1) -- Line 23, Named "pagesToTable"
	local module = {}
	while true do
		table.insert(module, arg1:GetCurrentPage())
		if arg1.IsFinished then break end
		arg1:AdvanceToNextPageAsync()
	end
	return module
end
local function _(arg1) -- Line 37, Named "iterPageItems"
	--[[ Upvalues[1]:
		[1]: pagesToTable_upvr (readonly)
	]]
	local pagesToTable_result1_upvr_2 = pagesToTable_upvr(arg1)
	local var9_upvw = 1
	local len_upvr_2 = #pagesToTable_result1_upvr_2
	return coroutine.wrap(function() -- Line 43
		--[[ Upvalues[3]:
			[1]: var9_upvw (read and write)
			[2]: len_upvr_2 (readonly)
			[3]: pagesToTable_result1_upvr_2 (readonly)
		]]
		while var9_upvw <= len_upvr_2 do
			for _, v in pagesToTable_result1_upvr_2[var9_upvw] do
				coroutine.yield(v, var9_upvw)
			end
			var9_upvw += 1
		end
	end)
end
local var13_upvw
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local function getPlayersFriends_upvr() -- Line 55, Named "getPlayersFriends"
	--[[ Upvalues[4]:
		[1]: var13_upvw (read and write)
		[2]: Players_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: pagesToTable_upvr (readonly)
	]]
	if not var13_upvw then
		var13_upvw = {}
		local pagesToTable_result1_upvr = pagesToTable_upvr(Players_upvr:GetFriendsAsync(LocalPlayer_upvr.UserId))
		local var18_upvw = 1
		local len_upvr = #pagesToTable_result1_upvr
		for i_3 in coroutine.wrap(function() -- Line 43
			--[[ Upvalues[3]:
				[1]: var18_upvw (read and write)
				[2]: len_upvr (readonly)
				[3]: pagesToTable_result1_upvr (readonly)
			]]
			while var18_upvw <= len_upvr do
				for _, v_2 in pagesToTable_result1_upvr[var18_upvw] do
					coroutine.yield(v_2, var18_upvw)
				end
				var18_upvw += 1
			end
		end) do
			table.insert(var13_upvw, i_3)
		end
	end
	return var13_upvw
end
local Value_upvr = Fusion_upvr.Value
local New_upvr = Fusion_upvr.New
local Children_upvr = Fusion_upvr.Children
local ActionButton_upvr = require(Components.ActionButton)
local Ref_upvr = Fusion_upvr.Ref
local ForPairs_upvr = Fusion_upvr.ForPairs
local FollowFriendsEntry_upvr = require(Components.FollowFriendsEntry)
local Line_upvr = require(Components.Line)
return function(arg1) -- Line 67
	--[[ Upvalues[11]:
		[1]: Value_upvr (readonly)
		[2]: getPlayersFriends_upvr (readonly)
		[3]: New_upvr (readonly)
		[4]: Children_upvr (readonly)
		[5]: ActionButton_upvr (readonly)
		[6]: Font_fromEnum_result1_upvr (readonly)
		[7]: Ref_upvr (readonly)
		[8]: ForPairs_upvr (readonly)
		[9]: FollowFriendsEntry_upvr (readonly)
		[10]: Fusion_upvr (readonly)
		[11]: Line_upvr (readonly)
	]]
	local Value_upvr_result1_upvr_2 = Value_upvr()
	local Value_upvr_result1_upvr = Value_upvr()
	local Value_upvr_result1_upvr_3 = Value_upvr({})
	task.spawn(function() -- Line 73
		--[[ Upvalues[4]:
			[1]: getPlayersFriends_upvr (copied, readonly)
			[2]: Value_upvr_result1_upvr_3 (readonly)
			[3]: Value_upvr_result1_upvr (readonly)
			[4]: Value_upvr_result1_upvr_2 (readonly)
		]]
		Value_upvr_result1_upvr_3:set(getPlayersFriends_upvr())
		task.wait()
		task.defer(function() -- Line 79
			--[[ Upvalues[2]:
				[1]: Value_upvr_result1_upvr (copied, readonly)
				[2]: Value_upvr_result1_upvr_2 (copied, readonly)
			]]
			local any_get_result1_2 = Value_upvr_result1_upvr:get()
			local any_get_result1 = Value_upvr_result1_upvr_2:get()
			if not any_get_result1_2 or not any_get_result1 then
			else
				any_get_result1.CanvasSize = UDim2.new(0, any_get_result1_2.AbsoluteContentSize.X, 0, 0)
			end
		end)
	end)
	return New_upvr("Frame")({
		Name = "FollowFriends";
		Size = arg1.Size;
		LayoutOrder = arg1.LayoutOrder;
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundTransparency = 1;
		[Children_upvr] = {New_upvr("Frame")({
			Name = "TitleContainer";
			Size = UDim2.fromScale(1, 0.0675);
			Position = UDim2.fromScale(0, 0.03);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundTransparency = 1;
			[Children_upvr] = {ActionButton_upvr({
				Name = "Title";
				Text = "Follow Roblox Friends";
				Icon = "rbxassetid://13468517870";
				IconSize = UDim2.fromScale(0.75, 0.75);
				MiddleOffset = 0.1;
				Padding = 0.015;
				Font = Font_fromEnum_result1_upvr;
			})};
		}), New_upvr("ScrollingFrame")({
			Name = "List";
			Size = UDim2.fromScale(1, 0.695);
			Position = UDim2.fromScale(0, 0.2);
			CanvasSize = UDim2.fromScale(2, 0);
			ScrollingDirection = Enum.ScrollingDirection.X;
			ScrollBarThickness = 10;
			ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			[Ref_upvr] = Value_upvr_result1_upvr_2;
			[Children_upvr] = {New_upvr("Frame")({
				Name = "Container";
				Size = UDim2.new(3.24, 0, 1, -16);
				SizeConstraint = Enum.SizeConstraint.RelativeYY;
				BackgroundTransparency = 1;
				[Children_upvr] = {New_upvr("UIListLayout")({
					Padding = UDim.new(0.02, 0);
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Left;
					[Ref_upvr] = Value_upvr_result1_upvr;
				}), ForPairs_upvr(Value_upvr_result1_upvr_3, function(arg1_2, arg2) -- Line 148
					--[[ Upvalues[2]:
						[1]: FollowFriendsEntry_upvr (copied, readonly)
						[2]: arg1 (readonly)
					]]
					return arg1_2, FollowFriendsEntry_upvr(arg1.FeedProps, arg2)
				end, Fusion_upvr.cleanup)};
			})};
		}), Line_upvr({
			Size = arg1.LineSize;
			Position = UDim2.fromScale(0.5, 1);
			AnchorPoint = Vector2.new(0.5, 1);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
		})};
	})
end