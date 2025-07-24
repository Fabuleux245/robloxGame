-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:41
-- Luau version 6, Types version 3
-- Time taken: 0.004856 seconds

local module_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Settings"))
local tbl_upvr = {
	CachedUserIds_ByObject = {};
}
local RunService_upvr = game:GetService("RunService")
function module_upvr.Scrub(arg1, arg2, arg3) -- Line 21
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: RunService_upvr (readonly)
	]]
	if not module_upvr_2.IsStudio and (arg3 or RunService_upvr:IsClient()) then
		for i in pairs(arg1:GetAttributes()) do
			if string.find(i, arg2) then
				arg1:SetAttribute(i, nil)
			end
		end
	end
end
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("CommonData"))
local Players_upvr = game:GetService("Players")
function module_upvr.OptIn(arg1, arg2, arg3, arg4, arg5) -- Line 41
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: Players_upvr (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var38
	if not tbl_upvr.CachedUserIds_ByObject[arg1] then
		local tbl = {}
		tbl_upvr.CachedUserIds_ByObject[arg1] = tbl
		local attribute_2 = arg1:GetAttribute(arg2)
		if type(attribute_2) ~= "string" then
			error(module_upvr_3.FormatOutput("Attribute '%s' of %s is not a string", "FeatureAccess", nil, arg2, arg1:GetFullName()), 2)
		end
		for _, v in ipairs(string.split(string.gsub(attribute_2, "[^%d,-]", ""), ',')) do
			local tonumber_result1_2 = tonumber(v)
			if tonumber_result1_2 then
				tbl[#tbl + 1] = tonumber_result1_2
			end
		end
	end
	if not var38 then
		local LocalPlayer = Players_upvr.LocalPlayer
		if LocalPlayer then
			var38 = LocalPlayer.UserId
		end
	end
	if var38 then
		LocalPlayer = false
		local var46 = LocalPlayer
		if table.find(tbl, var38) ~= nil then
			var46 = module_upvr_2.IsStudio
			if not var46 then
				var46 = not arg3
			end
		end
	end
	if arg4 then
		module_upvr.Scrub(arg1, arg4)
	end
	return var46
end
return module_upvr