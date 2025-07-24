-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:35
-- Luau version 6, Types version 3
-- Time taken: 0.004561 seconds

local Parent = script.Parent.Parent.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local module_upvr = require(Utils:WaitForChild("Fusion"))
local module_4_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_upvr.Value
local module_2_upvr = require(Utils:WaitForChild("Promise"))
local tbl_upvr = {}
local Utils_2_upvr = require(Utils)
local UserService_upvr = game:GetService("UserService")
local tbl_upvr_2 = {}
local Players_upvr = game:GetService("Players")
local Computed_upvr = module_upvr.Computed
local New_upvr = module_upvr.New
local Out_upvr = module_upvr.Out
local Cleanup_upvr = module_upvr.Cleanup
local Children_upvr = module_upvr.Children
local ScaledText_upvr = require(Parent:WaitForChild("CatalogClient").Components.ScaledText)
return function(arg1) -- Line 37
	--[[ Upvalues[15]:
		[1]: module_4_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: Utils_2_upvr (readonly)
		[6]: UserService_upvr (readonly)
		[7]: tbl_upvr_2 (readonly)
		[8]: Players_upvr (readonly)
		[9]: module_upvr (readonly)
		[10]: Computed_upvr (readonly)
		[11]: New_upvr (readonly)
		[12]: Out_upvr (readonly)
		[13]: Cleanup_upvr (readonly)
		[14]: Children_upvr (readonly)
		[15]: ScaledText_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_4_upvr.GetValues(arg1, {
		Parent = module_4_upvr.Nil;
		AnchorPoint = Vector2.zero;
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		PlayerId = module_4_upvr.Required;
	})
	local var8_result1_upvr_2 = Value_upvr()
	local var8_result1_upvr_3 = Value_upvr("")
	local function getPlayerInfo_upvr(arg1_2) -- Line 50, Named "getPlayerInfo"
		--[[ Upvalues[8]:
			[1]: module_2_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: var8_result1_upvr_2 (readonly)
			[4]: Utils_2_upvr (copied, readonly)
			[5]: UserService_upvr (copied, readonly)
			[6]: tbl_upvr_2 (copied, readonly)
			[7]: var8_result1_upvr_3 (readonly)
			[8]: Players_upvr (copied, readonly)
		]]
		module_2_upvr.all({module_2_upvr.new(function(arg1_3) -- Line 51
			--[[ Upvalues[5]:
				[1]: tbl_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: var8_result1_upvr_2 (copied, readonly)
				[4]: Utils_2_upvr (copied, readonly)
				[5]: UserService_upvr (copied, readonly)
			]]
			if tbl_upvr[arg1_2] then
				var8_result1_upvr_2:set(tbl_upvr[arg1_2])
				return arg1_3(tbl_upvr[arg1_2])
			end
			local _1 = Utils_2_upvr.callWithRetry(function() -- Line 57
				--[[ Upvalues[2]:
					[1]: UserService_upvr (copied, readonly)
					[2]: arg1_2 (copied, readonly)
				]]
				local module = {}
				module[1] = arg1_2
				return UserService_upvr:GetUserInfosByUserIdsAsync(module)
			end, 5)[1]
			var8_result1_upvr_2:set(_1)
			tbl_upvr[arg1_2] = _1
			arg1_3(_1)
		end), module_2_upvr.new(function(arg1_4) -- Line 66
			--[[ Upvalues[4]:
				[1]: tbl_upvr_2 (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: var8_result1_upvr_3 (copied, readonly)
				[4]: Players_upvr (copied, readonly)
			]]
			if tbl_upvr_2[arg1_2] then
				var8_result1_upvr_3:set(tbl_upvr_2[arg1_2])
				return arg1_4(tbl_upvr_2[arg1_2])
			end
			local any_GetUserThumbnailAsync_result1 = Players_upvr:GetUserThumbnailAsync(arg1_2, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
			var8_result1_upvr_3:set(any_GetUserThumbnailAsync_result1)
			tbl_upvr_2[arg1_2] = any_GetUserThumbnailAsync_result1
			arg1_4(any_GetUserThumbnailAsync_result1)
		end)}):await()
	end
	task.spawn(getPlayerInfo_upvr, any_GetValues_result1_upvw.PlayerId:get())
	local var8_result1_upvr = Value_upvr(Vector2.zero)
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 89
		--[[ Upvalues[1]:
			[1]: var8_result1_upvr (readonly)
		]]
		local any_get_result1 = var8_result1_upvr:get()
		if not any_get_result1 then
			any_get_result1 = Vector2.zero
		end
		return any_get_result1
	end)
	local module_3 = {
		Name = "PlayerInfo";
		Parent = any_GetValues_result1_upvw.Parent;
		AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
		Position = any_GetValues_result1_upvw.Position;
		Size = any_GetValues_result1_upvw.Size;
		BackgroundTransparency = 1;
		[Out_upvr("AbsoluteSize")] = var8_result1_upvr;
	}
	local any_onChange_result1_upvr = module_upvr.Observer(any_GetValues_result1_upvw.PlayerId):onChange(function() -- Line 84
		--[[ Upvalues[2]:
			[1]: getPlayerInfo_upvr (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		task.spawn(getPlayerInfo_upvr, any_GetValues_result1_upvw.PlayerId:get())
	end)
	module_3[Cleanup_upvr] = function() -- Line 104
		--[[ Upvalues[2]:
			[1]: module_upvr (copied, readonly)
			[2]: any_onChange_result1_upvr (readonly)
		]]
		module_upvr.cleanup(any_onChange_result1_upvr)
	end
	module_3[Children_upvr] = {New_upvr("UIListLayout")({
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		Padding = Computed_upvr(function() -- Line 115
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr (readonly)
			]]
			return UDim.new(0, Computed_upvr_result1_upvr:get().Y / 4)
		end);
	}), New_upvr("CanvasGroup")({
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		[Children_upvr] = {New_upvr("UICorner")({
			CornerRadius = UDim.new(0.5, 0);
		}), New_upvr("UIAspectRatioConstraint")({
			AspectRatio = 1;
			DominantAxis = Enum.DominantAxis.Height;
		}), New_upvr("ImageLabel")({
			Size = UDim2.fromScale(1, 1);
			BackgroundColor3 = Color3.new(1, 1, 1);
			Image = var8_result1_upvr_3;
		})};
	}), New_upvr("Frame")({
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		Size = Computed_upvr(function() -- Line 146
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr (readonly)
			]]
			return UDim2.new(1, -Computed_upvr_result1_upvr:get().Y * 5 / 4, 1, 0)
		end);
		[Children_upvr] = {ScaledText_upvr({
			Size = UDim2.fromScale(1, 0.5);
			TextXAlignment = Enum.TextXAlignment.Left;
			Text = Computed_upvr(function() -- Line 155
				--[[ Upvalues[1]:
					[1]: var8_result1_upvr_2 (readonly)
				]]
				local any_get_result1_3 = var8_result1_upvr_2:get()
				if not any_get_result1_3 then
					return "..."
				end
				local DisplayName = any_get_result1_3.DisplayName
				if not DisplayName then
					DisplayName = any_get_result1_3.Username
				end
				return DisplayName
			end);
		}), ScaledText_upvr({
			AnchorPoint = Vector2.new(0, 1);
			Position = UDim2.fromScale(0, 1);
			Size = UDim2.fromScale(1, 0.4);
			TextXAlignment = Enum.TextXAlignment.Left;
			Text = Computed_upvr(function() -- Line 171
				--[[ Upvalues[1]:
					[1]: var8_result1_upvr_2 (readonly)
				]]
				local any_get_result1_2 = var8_result1_upvr_2:get()
				if not any_get_result1_2 then
					return "..."
				end
				return '@'..any_get_result1_2.Username
			end);
			TextColor3 = Color3.new(0.7, 0.7, 0.7);
		})};
	})}
	return New_upvr("Frame")(module_3)
end