-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:22
-- Luau version 6, Types version 3
-- Time taken: 0.002662 seconds

local module_upvr = {}
function round(arg1, arg2) -- Line 3
	local var2 = 10 ^ (arg2 or 0)
	return math.floor(arg1 * var2 + 0.5) / var2
end
function module_upvr.scaleTextToMaxAlpha(arg1) -- Line 10
	local var3 = 0
	arg1.TextSize = var3
	arg1.TextScaled = false
	repeat
		local var4 = var3 + 1
		arg1.TextSize = var4
	until arg1.TextFits == false and 100 < var4
	local var5 = var4 - 1
	arg1.TextSize = var5
	return var5
end
function module_upvr.descendantsUniformTextSize(arg1, arg2, arg3) -- Line 26
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local tbl = {}
	local var18
	for _, v in pairs(arg1:GetDescendants()) do
		local var19
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var19 = v:IsA("TextLabel")
			return var19
		end
		if var19 or INLINED() then
			var19 = module_upvr.scaleTextToMaxAlpha(v)
			local var20 = var19
			tbl[v] = var20
			if arg2 then
				var20 = math.min(var20, math.ceil(v.AbsoluteSize.Y * arg2))
				tbl[v] = var20
			end
			if var20 < var18 then
				var18 = var20
			end
		end
	end
	for i_2, _ in pairs(tbl) do
		i_2.TextSize = var18
	end
	return var18
end
function module_upvr.setTextSizeWithAlpha(arg1, arg2, arg3, arg4) -- Line 59
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.TextScaled = false
	arg1.TextWrapped = true
	arg1.TextSize = math.ceil(arg1.AbsoluteSize.Y * arg2)
	if not arg1.TextFits and not arg3 then
		module_upvr.scaleTextToMaxAlpha(arg1)
	end
	return arg1.TextSize
end
function module_upvr.resizeParentXToFitTextWithAlpha(arg1, arg2, arg3, arg4, arg5) -- Line 78
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.Text = arg2
	arg1.TextScaled = false
	arg1.TextWrapped = true
	local Size = arg1.Parent.Size
	local var25
	repeat
		var25 += 0.01
		arg1.Parent.Size = UDim2.new(var25, Size.X.Offset, Size.Y.Scale, Size.Y.Offset)
	until arg1.TextFits
	if arg4 then
		arg1.Parent.Size = arg1.Parent.Size + UDim2.new(arg4, 0, 0, 0)
		var25 += arg4
	end
	return var25
end
function module_upvr.resizeParentYToFitTextWithAlpha(arg1, arg2, arg3, arg4, arg5) -- Line 101
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.Text = arg2
	arg1.TextScaled = false
	arg1.TextWrapped = true
	local Size_2_upvr = arg1.Parent.Size
	local var27_upvw = arg4 or 0
	local var28_upvw = 0
	arg1.Parent.Size = UDim2.new(Size_2_upvr.X.Scale, Size_2_upvr.X.Offset, var27_upvw, Size_2_upvr.Y.Offset)
	module_upvr.setTextSizeWithAlpha(arg1, arg3, true, arg5)
	repeat
		(function() -- Line 115, Named "expandUntilTextFits"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: var27_upvw (read and write)
				[3]: var28_upvw (read and write)
				[4]: Size_2_upvr (readonly)
			]]
			while not arg1.TextFits do
				var27_upvw += 0.005
				var28_upvw += 0.005
				arg1.Parent.Size = UDim2.new(Size_2_upvr.X.Scale, Size_2_upvr.X.Offset, var27_upvw, Size_2_upvr.Y.Offset)
			end
		end)()
		task.wait()
	until arg1.TextFits
	return var28_upvw
end
return module_upvr