-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:37
-- Luau version 6, Types version 3
-- Time taken: 0.001483 seconds

local Utils = script.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local module_3 = require(Utils:WaitForChild("Fusion"))
local module_2_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_3.Value
local New_upvr = module_3.New
local Children_upvr = module_3.Children
local Spring_upvr = module_3.Spring
local Computed_upvr = module_3.Computed
local Ref_upvr = module_3.Ref
local OnEvent_upvr = module_3.OnEvent
return function(arg1) -- Line 27
	--[[ Upvalues[8]:
		[1]: module_2_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: New_upvr (readonly)
		[4]: Children_upvr (readonly)
		[5]: Spring_upvr (readonly)
		[6]: Computed_upvr (readonly)
		[7]: Ref_upvr (readonly)
		[8]: OnEvent_upvr (readonly)
	]]
	local Value_upvr_result1_upvr = Value_upvr(false)
	local module = {
		Name = "Item";
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	}
	local tbl = {}
	local tbl_2 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = Spring_upvr(Computed_upvr(function() -- Line 47
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			if Value_upvr_result1_upvr:get() then
				return UDim2.fromScale(1, 1)
			end
			return UDim2.fromScale(1, 1)
		end), 30);
		BackgroundTransparency = 1;
		[Ref_upvr] = Value_upvr();
		[OnEvent_upvr("MouseEnter")] = function() -- Line 57
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:set(true)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 58
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:set(false)
		end;
	}
	local any_GetValues_result1_upvw = module_2_upvr.GetValues(arg1, {
		ItemId = 0;
		IsBundle = false;
	})
	tbl_2.Image = Computed_upvr(function() -- Line 60
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local var23
		if any_GetValues_result1_upvw.IsBundle:get() then
			var23 = "BundleThumbnail"
		else
			var23 = "Asset"
		end
		return string.format("rbxthumb://type=%s&id=%s&w=420&h=420", var23, any_GetValues_result1_upvw.ItemId:get())
	end)
	tbl[1] = New_upvr("ImageLabel")(tbl_2)
	module[Children_upvr] = tbl
	return New_upvr("Frame")(module)
end