-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:01
-- Luau version 6, Types version 3
-- Time taken: 0.000596 seconds

local tbl_upvr = {
	preScreenshot = function() -- Line 2, Named "preScreenshot"
	end;
	postScreenshot = function() -- Line 3, Named "postScreenshot"
	end;
}
return {
	setPreScreenshotHook = function(arg1) -- Line 7, Named "setPreScreenshotHook"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		tbl_upvr.preScreenshot = arg1
	end;
	setPostScreenshotHook = function(arg1) -- Line 10, Named "setPostScreenshotHook"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		tbl_upvr.postScreenshot = arg1
	end;
	doPreScreenshot = function() -- Line 13, Named "doPreScreenshot"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		tbl_upvr.preScreenshot()
	end;
	doPostScreenshot = function() -- Line 16, Named "doPostScreenshot"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		tbl_upvr.postScreenshot()
	end;
}