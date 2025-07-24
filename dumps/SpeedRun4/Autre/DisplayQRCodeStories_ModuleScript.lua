-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:23
-- Luau version 6, Types version 3
-- Time taken: 0.000924 seconds

local QRCodeDisplay = script:FindFirstAncestor("QRCodeDisplay")
local DisplayQRCode_upvr = require(script.Parent.DisplayQRCode)
local React_upvr = require(QRCodeDisplay.Parent.React)
local ECLevels_upvr = require(QRCodeDisplay.Common.ECLevels)
return {
	SimpleMatrix = function() -- Line 8, Named "SimpleMatrix"
		--[[ Upvalues[3]:
			[1]: React_upvr (readonly)
			[2]: DisplayQRCode_upvr (readonly)
			[3]: ECLevels_upvr (readonly)
		]]
		return React_upvr.createElement(DisplayQRCode_upvr, {
			ecLevel = ECLevels_upvr.EC_LEVEL_1;
			sideLength = 100;
			toEncode = "https://www.bbc.com/news";
		})
	end;
	LoadingMatrix = function() -- Line 16, Named "LoadingMatrix"
		--[[ Upvalues[3]:
			[1]: React_upvr (readonly)
			[2]: DisplayQRCode_upvr (readonly)
			[3]: ECLevels_upvr (readonly)
		]]
		return React_upvr.createElement(DisplayQRCode_upvr, {
			ecLevel = ECLevels_upvr.EC_LEVEL_1;
			isLoading = true;
			sideLength = 200;
			toEncode = "";
		})
	end;
	SuperComplexMatrix = function() -- Line 25, Named "SuperComplexMatrix"
		--[[ Upvalues[3]:
			[1]: React_upvr (readonly)
			[2]: DisplayQRCode_upvr (readonly)
			[3]: ECLevels_upvr (readonly)
		]]
		return React_upvr.createElement(DisplayQRCode_upvr, {
			ecLevel = ECLevels_upvr.EC_LEVEL_4;
			sideLength = 400;
			toEncode = "https://ro.blox.com/Ebh5?pid=share&is_retargeting=true&af_dp=roblox%3A%2F%2Fnavigation%2Fshare_links%3Fcode%3D6e5de960f12ec44797d1d974c76605ff%26type%3DFriendInvite&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fshare-links%3Fcode%3D6e5de960f12ec44797d1d974c76605ff%26type%3DFriendInvite";
		})
	end;
}