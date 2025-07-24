-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:01
-- Luau version 6, Types version 3
-- Time taken: 0.002420 seconds

local Parent_3 = script.Parent
local Parent = Parent_3.Parent
local Parent_2 = Parent.Parent
local Foundation = require(Parent_2.Parent.Foundation)
local ButtonVariant = Foundation.Enums.ButtonVariant
local InputSize_upvr = Foundation.Enums.InputSize
local ButtonType = require(Parent_3.Enum.ButtonType)
local StandardButtonSize = require(Parent_2.Core.Button.Enum.StandardButtonSize)
local tbl_upvr_2 = {
	[StandardButtonSize.Regular] = InputSize_upvr.Large;
	[StandardButtonSize.Small] = InputSize_upvr.Small;
	[StandardButtonSize.XSmall] = InputSize_upvr.XSmall;
}
local tbl_upvr = {
	[StandardButtonSize.Regular] = false;
	[StandardButtonSize.Small] = false;
	[StandardButtonSize.XSmall] = true;
}
local ImagesInverse_upvr = require(Parent.ImageSet.ImagesInverse)
return {
	buttonMapping = {
		[ButtonType.Alert] = ButtonVariant.Alert;
		[ButtonType.PrimaryContextual] = ButtonVariant.Emphasis;
		[ButtonType.PrimarySystem] = ButtonVariant.SubEmphasis;
		[ButtonType.Secondary] = ButtonVariant.Subtle;
	};
	sizeMapping = tbl_upvr_2;
	findIcon = function(arg1) -- Line 35, Named "findIcon"
		--[[ Upvalues[1]:
			[1]: ImagesInverse_upvr (readonly)
		]]
		if not arg1 then
			return nil
		end
		local var13 = ImagesInverse_upvr[arg1]
		if var13 == nil then
			warn("Icon not found")
		end
		return var13
	end;
	getSizeMapping = function(arg1, arg2, arg3) -- Line 46, Named "getSizeMapping"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_2 (readonly)
			[2]: InputSize_upvr (readonly)
		]]
		if arg1 then
			return tbl_upvr_2[arg1]
		end
		if arg2 then
			if arg3.Size.Size_1200 <= arg2.Y.Offset then
				return InputSize_upvr.Large
			end
			if 0 < arg2.Y.Scale then
				return InputSize_upvr.Medium
			end
			if arg3.Size.Size_1000 <= arg2.Y.Offset then
				return InputSize_upvr.Medium
			end
			if arg3.Size.Size_800 <= arg2.Y.Offset then
				return InputSize_upvr.Small
			end
			return InputSize_upvr.XSmall
		end
		return nil
	end;
	getWidth = function(arg1, arg2, arg3, arg4) -- Line 65, Named "getWidth"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var14 = arg3 or 640
		local var15
		if arg1 then
			if var15 == nil then
				var15 = tbl_upvr[arg1]
			end
			if var15 then
				return nil
			end
			local udim2 = UDim2.fromScale(1, 0)
			if var14 and udim2 and 0 < udim2.X.Offset then
				return UDim.new(0, math.min(udim2.X.Offset, var14))
			end
			return UDim.new(0, var14)
		end
		if udim2 then
			return udim2.X
		end
		if var15 then
			return nil
		end
		return UDim.new(1, 0)
	end;
	getTestId = function(arg1) -- Line 96, Named "getTestId"
		if not arg1 or #arg1 == 0 then
			return nil
		end
		return arg1:match("data%-testid=([^%s]+)")
	end;
}