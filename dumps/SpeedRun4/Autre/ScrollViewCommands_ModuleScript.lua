-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:52
-- Luau version 6, Types version 3
-- Time taken: 0.001257 seconds

local _ = script.Parent.Parent.Parent.Parent
return {
	default = {
		flashScrollIndicators = function(arg1) -- Line 59, Named "flashScrollIndicators"
			warn("flashScrollIndicators not implemented")
		end;
		scrollTo = function(arg1, arg2, arg3, arg4) -- Line 62, Named "scrollTo"
			if arg4 then
				arg1._nativeRef.animateScrollTo(arg2, arg3)
			else
				arg1._nativeRef.current.CanvasPosition = Vector2.new(arg2, arg3)
			end
		end;
		scrollToEnd = function(arg1, arg2) -- Line 69, Named "scrollToEnd"
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var4
			if arg1._nativeRef.current.ScrollingDirection == Enum.ScrollingDirection.Y then
				var4 = 0
			else
				var4 = arg1._nativeRef.current.AbsoluteCanvasSize.X
			end
			if arg1._nativeRef.current.ScrollingDirection == Enum.ScrollingDirection.Y then
				local Y = arg1._nativeRef.current.AbsoluteCanvasSize.Y
			else
			end
			if arg2 then
				arg1._nativeRef.animateScrollTo(var4, 0)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg1._nativeRef.current.CanvasPosition = Vector2.new(var4, 0)
			end
		end;
		zoomToRect = function(arg1, arg2, arg3) -- Line 83, Named "zoomToRect"
			warn("zoomToRect not implemented")
		end;
	};
}