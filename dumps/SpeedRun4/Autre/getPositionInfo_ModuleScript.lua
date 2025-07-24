-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:37
-- Luau version 6, Types version 3
-- Time taken: 0.003063 seconds

local TooltipOrientation_upvr = require(script.Parent.Enum.TooltipOrientation)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 22
	--[[ Upvalues[1]:
		[1]: TooltipOrientation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 55 start (CF ANALYSIS FAILED)
	local tbl = {}
	local var4 = arg4 + arg5 * 0.5
	local function INLINED() -- Internal function, doesn't exist in bytecode
		local var5
		return nil == TooltipOrientation_upvr.Top
	end
	if arg3 == TooltipOrientation_upvr.Bottom or INLINED() then
		if not arg7 and arg6.Y - (arg4 + arg5).Y < arg2 + 8 + 12 then
		end
		if arg1 < 40 then
			tbl.caretPosition = UDim2.fromScale(0.5, 0)
		elseif arg7 then
			tbl.caretPosition = UDim2.fromOffset(math.clamp(arg5.X * 0.5 + math.abs(arg5.X * arg7.X.Scale + arg7.X.Offset), 12, arg1 - 12 - 16), 0)
		elseif 12 <= var4.X - arg1 * 0.5 and var4.X + arg1 * 0.5 <= arg6.X - 12 then
			tbl.caretPosition = UDim2.fromScale(0.5, 0)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.caretPosition = UDim2.fromOffset(math.clamp(var4.X - math.clamp(var4.X - arg1 * 0.5, 12, arg6.X - 12 - arg1), 12, arg1 - 12 - 16), 0)
		end
		tbl.caretFrameSize = UDim2.fromOffset(arg1, 8)
		tbl.caretImageSize = UDim2.fromOffset(16, 8)
		tbl.caretAnchorPoint = Vector2.new(0.5, 0)
		tbl.fillDirection = Enum.FillDirection.Vertical
		if nil == TooltipOrientation_upvr.Bottom then
			tbl.caretLayoutOrder = 1
			tbl.contentLayoutOrder = 2
		else
			tbl.caretLayoutOrder = 2
			tbl.contentLayoutOrder = 1
		end
		-- KONSTANTWARNING: GOTO [368] #265
	end
	-- KONSTANTERROR: [0] 1. Error Block 55 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [206] 149. Error Block 54 start (CF ANALYSIS FAILED)
	if arg7 then
		tbl.caretPosition = UDim2.fromOffset(0, math.clamp(arg5.Y * 0.5 + math.abs(arg5.Y * arg7.Y.Scale + arg7.Y.Offset), 12, arg2 - 12 - 16))
		-- KONSTANTWARNING: GOTO [313] #227
	end
	-- KONSTANTERROR: [206] 149. Error Block 54 end (CF ANALYSIS FAILED)
end