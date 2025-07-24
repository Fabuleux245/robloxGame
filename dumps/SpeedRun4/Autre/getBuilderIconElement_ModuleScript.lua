-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:02
-- Luau version 6, Types version 3
-- Time taken: 0.005802 seconds

local Parent = script.Parent
local Parent_2 = Parent.Parent.Parent.Parent
local migrationSizeExceptions_upvr = require(Parent.migrationSizeExceptions)
local module_upvr = {
	ImageLabel = "TextLabel";
	ImageButton = "TextButton";
}
local tbl_upvr = {
	["icons/common/goldrobux"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.97, 0.93, 0.72)), ColorSequenceKeypoint.new(0.6, Color3.new(0.67, 0.58, 0.36)), ColorSequenceKeypoint.new(1, Color3.new(0.99, 0.88, 0.64))});
	["icons/common/goldrobux_small"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.78, 0.71, 0.43)), ColorSequenceKeypoint.new(0.5, Color3.new(0.65, 0.55, 0.32)), ColorSequenceKeypoint.new(1, Color3.new(0.83, 0.71, 0.44))});
}
local function _(arg1) -- Line 28
	if not arg1 then
		return true
	end
	if arg1.X.Offset == 0 or arg1.Y.Scale == 0 or arg1.Y.Offset ~= 0 then
		if arg1.X.Scale == 0 then
		else
		end
	end
	return true
end
local function var9_upvr(arg1) -- Line 35
	local var10 = arg1
	local var11
	if not var10 then
		var11 = true
	else
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var11 = true
			return var10.Y.Scale == 0
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var11 = false
			return var10.Y.Offset ~= 0
		end
		if var10.X.Offset == 0 or INLINED() or INLINED_2() then
			if var10.X.Scale == 0 then
				var11 = false
			else
				var11 = true
				local var12
			end
		end
	end
	if not var11 and (var12.X.Offset ~= var12.Y.Offset or var12.X.Scale ~= var12.Y.Scale) then
		if var12.X.Offset ~= 0 then
			local minimum = math.min(var12.X.Offset, var12.Y.Offset)
			var12 = UDim2.fromOffset(minimum, minimum)
			return var12
		end
		var11 = true
	end
	return var12
end
local function var14_upvr(arg1) -- Line 48
	if not arg1 then
	elseif arg1.X.Offset == 0 or arg1.Y.Scale == 0 or arg1.Y.Offset ~= 0 then
		if arg1.X.Scale == 0 then
		else
			local var15
		end
	end
	if not var15 and arg1.X.Offset == 0 then
		var15 = true
	end
	return var15
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 58
	--[[ Upvalues[1]:
		[1]: migrationSizeExceptions_upvr (readonly)
	]]
	local Offset_2 = arg1.Y.Offset
	if Offset_2 ~= 0 and not arg2 and not migrationSizeExceptions_upvr[arg4.name] then
		local Size_100_2 = arg3.Size.Size_100
		local Size_600_3 = arg3.Size.Size_600
		if Size_600_3 <= Offset_2 and Offset_2 <= arg5 * 38 then
			Offset_2 = Size_600_3
			return Offset_2
		end
		Offset_2 = math.round(Offset_2 / Size_100_2) * Size_100_2
	end
	return Offset_2
end
local BuilderIcons_upvr = require(Parent_2.BuilderIcons)
local Roact_upvr = require(Parent_2.Roact)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 74, Named "getBuilderIconElement"
	--[[ Upvalues[7]:
		[1]: var9_upvr (readonly)
		[2]: var14_upvr (readonly)
		[3]: migrationSizeExceptions_upvr (readonly)
		[4]: BuilderIcons_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: tbl_upvr (readonly)
	]]
	local var22 = false
	if arg1.ImageRectOffset == nil then
		if arg1.ImageRectSize ~= nil then
			var22 = false
		else
			var22 = true
		end
	end
	assert(var22, "ImageRect props not supported for migration icons")
	var22 = false
	if arg1.SliceCenter == nil then
		if arg1.SliceScale ~= nil then
			var22 = false
		else
			var22 = true
		end
	end
	local _
	assert(var22, "Image slices not supported for migration icons")
	var22 = arg1
	local clone = table.clone(var22)
	var22 = typeof(clone.Size)
	if var22 == "table" then
		var22 = clone.Size
		clone.Size = var22:map(var9_upvr)
		clone.TextScaled = var22:map(var14_upvr)
		clone.TextSize = var22:map(function(arg1_2) -- Line 97
			--[[ Upvalues[4]:
				[1]: arg5 (readonly)
				[2]: arg3 (readonly)
				[3]: arg7 (readonly)
				[4]: migrationSizeExceptions_upvr (copied, readonly)
			]]
			if not arg1_2 then
			elseif arg1_2.X.Offset == 0 or arg1_2.Y.Scale == 0 or arg1_2.Y.Offset ~= 0 then
				if arg1_2.X.Scale == 0 then
				else
					local var26
				end
			end
			if not var26 and arg1_2.X.Offset == 0 then
				var26 = true
			end
			var26 = arg5
			local Offset = arg1_2.Y.Offset
			if Offset ~= 0 and not var26 and not migrationSizeExceptions_upvr[arg3.name] then
				local Size_100 = var26.Size.Size_100
				local Size_600 = var26.Size.Size_600
				if Size_600 <= Offset and Offset <= (arg7 or 1) * 38 then
					Offset = Size_600
				else
					Offset = math.round(Offset / Size_100) * Size_100
				end
			end
			return Offset
		end)
	else
		var22 = clone.Size
		clone.Size = var9_upvr(var22)
		if not var22 then
		elseif var22.X.Offset == 0 or var22.Y.Scale == 0 or var22.Y.Offset ~= 0 then
			if var22.X.Scale == 0 then
			else
			end
		end
		if not true and var22.X.Offset == 0 then
		end
		local var30 = true
		clone.TextScaled = var30
		local Offset_3 = var22.Y.Offset
		if Offset_3 ~= 0 and not var30 and not migrationSizeExceptions_upvr[arg3.name] then
			local Size_100_3 = arg5.Size.Size_100
			local Size_600_2 = arg5.Size.Size_600
			if Size_600_2 <= Offset_3 and Offset_3 <= (arg7 or 1) * 38 then
				Offset_3 = Size_600_2
			else
				Offset_3 = math.round(Offset_3 / Size_100_3) * Size_100_3
			end
		end
		clone.TextSize = Offset_3
	end
	var22 = arg3.name
	clone.Text = var22
	var22 = BuilderIcons_upvr.Font[arg3.variant]
	clone.FontFace = var22
	var22 = clone.ImageColor3
	if not var22 then
		var22 = arg5.Color.Content.Emphasis.Color3
	end
	clone.TextColor3 = var22
	if not clone.ImageTransparency then
	end
	clone.TextTransparency = arg5.Color.Content.Emphasis.Transparency
	clone.ImageColor3 = nil
	clone.ImageTransparency = nil
	clone.ResampleMode = nil
	clone.ScaleType = nil
	clone.TileSize = nil
	clone.Image = nil
	if module_upvr[arg2] == nil then
		error("Unsupported inner component for image set icon migration: "..arg2)
	end
	local var34
	if 0 < arg6 then
		if var34 == nil then
			var34 = {}
		end
		var34.UITextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
			MaxTextSize = clone.TextSize;
		})
	end
	local var36 = tbl_upvr[arg4]
	if var36 then
		if var34 == nil then
			var34 = {}
		end
		clone.TextColor3 = Color3.new(1, 1, 1)
		var34.UIGradient = Roact_upvr.createElement("UIGradient", {
			Color = var36;
			Rotation = 90;
		})
	end
	if var34 ~= nil then
		var34.Children = Roact_upvr.createFragment(arg1[Roact_upvr.Children])
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Roact_upvr.createElement(module_upvr[arg2], clone, var34)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Roact_upvr.createElement(module_upvr[arg2], clone)
end