-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:15
-- Luau version 6, Types version 3
-- Time taken: 0.000862 seconds

local HttpService_upvr = game:GetService("HttpService")
local any_GenerateGUID_result1_upvr = HttpService_upvr:GenerateGUID()
local var3_upvw
local os_clock_result1_upvw = os.clock()
local function _() -- Line 12, Named "getLandingPageTiming"
	--[[ Upvalues[3]:
		[1]: var3_upvw (read and write)
		[2]: os_clock_result1_upvw (read and write)
		[3]: any_GenerateGUID_result1_upvr (readonly)
	]]
	if not var3_upvw then
		return nil
	end
	return {
		app_session = any_GenerateGUID_result1_upvr;
		landing_page_session = var3_upvw;
		duration = os.clock() - os_clock_result1_upvw;
	}
end
return {
	landingPageLoadStart = function() -- Line 32, Named "landingPageLoadStart"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: HttpService_upvr (readonly)
			[3]: os_clock_result1_upvw (read and write)
		]]
		var3_upvw = HttpService_upvr:GenerateGUID()
		os_clock_result1_upvw = os.clock()
	end;
	landingPageLoadFinish = function() -- Line 41, Named "landingPageLoadFinish"
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: os_clock_result1_upvw (read and write)
			[3]: any_GenerateGUID_result1_upvr (readonly)
		]]
		local var7
		if not var3_upvw then
			var7 = nil
		else
			var7 = {
				app_session = any_GenerateGUID_result1_upvr;
				landing_page_session = var3_upvw;
				duration = os.clock() - os_clock_result1_upvw;
			}
		end
		var3_upvw = nil
		return var7
	end;
}