-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:22
-- Luau version 6, Types version 3
-- Time taken: 0.001635 seconds

local React_upvr = require(script:FindFirstAncestor("BulkPurchaseApp").Parent.React)
return function(arg1) -- Line 12, Named "Box"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local var2
	if arg1.children then
		var2 = table.clone(arg1.children)
	else
		var2 = {}
	end
	local clone = table.clone(arg1)
	clone.cornerRadius = nil
	clone.padding = nil
	clone.children = nil
	if typeof(arg1.padding) == "number" then
		local tbl_2 = {
			PaddingBottom = UDim.new(0, arg1.padding);
			PaddingLeft = UDim.new(0, arg1.padding);
			PaddingRight = UDim.new(0, arg1.padding);
			PaddingTop = UDim.new(0, arg1.padding);
		}
	elseif typeof(arg1.padding) == "table" then
		local tbl = {}
		local var6
		if arg1.padding and arg1.padding[1] then
			var6 = arg1.padding[1]
		else
			var6 = 0
		end
		tbl.PaddingTop = UDim.new(0, var6)
		if arg1.padding and arg1.padding[2] then
			var6 = arg1.padding[2]
		else
			var6 = 0
		end
		tbl.PaddingRight = UDim.new(0, var6)
		if arg1.padding and arg1.padding[3] then
			var6 = arg1.padding[3]
		else
			var6 = 0
		end
		tbl.PaddingBottom = UDim.new(0, var6)
		if arg1.padding and arg1.padding[4] then
			var6 = arg1.padding[4]
		else
			var6 = 0
		end
		tbl.PaddingLeft = UDim.new(0, var6)
	else
	end
	if nil then
		var6 = nil
		var2.Padding = React_upvr.createElement("UIPadding", var6)
	end
	if arg1.cornerRadius then
		var6 = {}
		local var7 = var6
		var7.CornerRadius = arg1.cornerRadius
		var2.Radius = React_upvr.createElement("UICorner", var7)
	end
	var7 = clone
	return React_upvr.createElement("Frame", var7, var2)
end