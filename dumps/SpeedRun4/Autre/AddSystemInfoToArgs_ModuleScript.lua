-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:32
-- Luau version 6, Types version 3
-- Time taken: 0.001138 seconds

local Parent = script:FindFirstAncestor("DiscoveryUtils").Parent
local SystemInfoProtocol_upvr = require(Parent.SystemInfoProtocol).SystemInfoProtocol
local tbl_upvr = {
	[SystemInfoProtocol_upvr.InfoNames.MANUFACTURER] = "deviceManufacturer";
	[SystemInfoProtocol_upvr.InfoNames.BASE_OS] = "operatingSystemVersion";
	[SystemInfoProtocol_upvr.InfoNames.IS_64BIT] = "if64Bit";
	[SystemInfoProtocol_upvr.InfoNames.CPU_CORE_COUNT] = "cpuCores";
}
local ArgCheck_upvr = require(Parent.ArgCheck)
return function(arg1, arg2) -- Line 16
	--[[ Upvalues[3]:
		[1]: SystemInfoProtocol_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: ArgCheck_upvr (readonly)
	]]
	if arg2 then
	else
	end
	local ALL_INFO_NAMES_upvr = SystemInfoProtocol_upvr.ALL_INFO_NAMES
	local pcall_result1, pcall_result2 = pcall(function() -- Line 19
		--[[ Upvalues[2]:
			[1]: SystemInfoProtocol_upvr (copied, readonly)
			[2]: ALL_INFO_NAMES_upvr (readonly)
		]]
		return SystemInfoProtocol_upvr.default:getSystemInfo(ALL_INFO_NAMES_upvr)
	end)
	if pcall_result1 and typeof(pcall_result2) == "table" then
		for i, v in pairs(pcall_result2) do
			local var17 = tbl_upvr[i] or i
			local var18 = ArgCheck_upvr
			if arg1[var17] ~= nil then
				var18 = false
			else
				var18 = true
			end
			var18.assert(var18, "Field '"..tostring(var17).."' already exists in argument table!  Will be overwritten.")
			arg1[var17] = v
		end
	end
end