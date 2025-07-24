-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:30
-- Luau version 6, Types version 3
-- Time taken: 0.001379 seconds

local module_upvr = {"Jan", "Feb", "March", "Apr", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec"}
return {
	GetNameRichText = function(arg1, arg2) -- Line 1, Named "GetNameRichText"
		return arg1.."  <font color=\"rgb(121,121,121)\">"..arg2.."</font>"
	end;
	IsoDateToNumber = function(arg1) -- Line 5, Named "IsoDateToNumber"
		return DateTime.fromIsoDate(arg1).UnixTimestamp
	end;
	FormatIsoDate = function(arg1, arg2, arg3) -- Line 63, Named "FormatIsoDate"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		local DateTime_fromIsoDate_result1 = DateTime.fromIsoDate(arg1)
		return module_upvr[tonumber(DateTime_fromIsoDate_result1:FormatLocalTime("MM", "en-us"))]..' '..DateTime_fromIsoDate_result1:FormatLocalTime("DD, YYYY", "en-us")
	end;
	GetTime = function(arg1) -- Line 10, Named "GetTime"
		local absolute = math.abs(os.time() - os.time({
			year = tonumber(arg1:sub(1, 4));
			month = tonumber(arg1:sub(6, 7));
			day = tonumber(arg1:sub(9, 10));
			hour = tonumber(arg1:sub(12, 13));
			min = tonumber(arg1:sub(15, 16));
			sec = tonumber(arg1:sub(18, 19));
		}))
		if absolute < 60 then
			return string.format("%d seconds ago", absolute), 1
		end
		if absolute < 3600 then
			return string.format("%d minutes ago", absolute / 60), 2
		end
		if absolute < 86400 then
			return string.format("%d hours ago", absolute / 3600), 3
		end
		if absolute < 604800 then
			return string.format("%d days ago", absolute / 86400), 4
		end
		if absolute < 2592000 then
			return string.format("%d weeks ago", absolute / 604800), 5
		end
		if absolute < 31536000 then
			return string.format("%d months ago", absolute / 2592000), 6
		end
		return string.format("%d years ago", absolute / 31536000), 7
	end;
}