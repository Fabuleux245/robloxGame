-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:06
-- Luau version 6, Types version 3
-- Time taken: 0.001928 seconds

local Parent = script:FindFirstAncestor("Foundation").Parent
local React_upvr = require(Parent.React)
local ReactIs_upvr = require(Parent.ReactIs)
local function getPadding_upvr(arg1) -- Line 12, Named "getPadding"
	--[[ Upvalues[1]:
		[1]: ReactIs_upvr (readonly)
	]]
	if ReactIs_upvr.isBinding(arg1) then
		local module = {}
		module.PaddingTop = arg1
		module.PaddingBottom = arg1
		module.PaddingLeft = arg1
		module.PaddingRight = arg1
		return module
	end
	if typeof(arg1) == "table" then
		return {
			PaddingTop = arg1.top;
			PaddingBottom = arg1.bottom;
			PaddingLeft = arg1.left;
			PaddingRight = arg1.right;
		}
	end
	if typeof(arg1) == "number" then
		return {
			PaddingTop = UDim.new(0, arg1);
			PaddingBottom = UDim.new(0, arg1);
			PaddingLeft = UDim.new(0, arg1);
			PaddingRight = UDim.new(0, arg1);
		}
	end
	if typeof(arg1) == "Vector2" then
		return {
			PaddingTop = UDim.new(0, arg1.Y);
			PaddingBottom = UDim.new(0, arg1.Y);
			PaddingLeft = UDim.new(0, arg1.X);
			PaddingRight = UDim.new(0, arg1.X);
		}
	end
	if typeof(arg1) == "UDim" then
		local module_2 = {}
		module_2.PaddingTop = arg1
		module_2.PaddingBottom = arg1
		module_2.PaddingLeft = arg1
		module_2.PaddingRight = arg1
		return module_2
	end
	if typeof(arg1) == "UDim2" then
		return {
			PaddingTop = arg1.Y;
			PaddingBottom = arg1.Y;
			PaddingLeft = arg1.X;
			PaddingRight = arg1.X;
		}
	end
	return {}
end
return React_upvr.memo(function(arg1) -- Line 70, Named "Padding"
	--[[ Upvalues[2]:
		[1]: getPadding_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	return React_upvr.createElement("UIPadding", getPadding_upvr(arg1.value))
end)