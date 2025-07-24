-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:20
-- Luau version 6, Types version 3
-- Time taken: 0.002349 seconds

local module = {}
local isPrimaryRenderer_upvr = require(script.Parent.ReactFiberHostConfig).isPrimaryRenderer
local tbl_upvr = {}
local var5_upvw
if _G.__DEV__ then
	var5_upvw = {}
end
function module.markSourceAsDirty(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	table.insert(tbl_upvr, arg1)
end
function module.resetWorkInProgressVersions() -- Line 42
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: isPrimaryRenderer_upvr (readonly)
	]]
	for _, v in tbl_upvr do
		if isPrimaryRenderer_upvr then
			v._workInProgressVersionPrimary = nil
		else
			v._workInProgressVersionSecondary = nil
		end
	end
	table.clear(tbl_upvr)
end
function module.getWorkInProgressVersion(arg1) -- Line 53
	--[[ Upvalues[1]:
		[1]: isPrimaryRenderer_upvr (readonly)
	]]
	if isPrimaryRenderer_upvr then
		return arg1._workInProgressVersionPrimary
	end
	return arg1._workInProgressVersionSecondary
end
function module.setWorkInProgressVersion(arg1, arg2) -- Line 63
	--[[ Upvalues[2]:
		[1]: isPrimaryRenderer_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if isPrimaryRenderer_upvr then
		arg1._workInProgressVersionPrimary = arg2
	else
		arg1._workInProgressVersionSecondary = arg2
	end
	table.insert(tbl_upvr, arg1)
end
local console_upvr = require(script.Parent.Parent.Shared).console
function module.warnAboutMultipleRenderersDEV(arg1) -- Line 75
	--[[ Upvalues[3]:
		[1]: isPrimaryRenderer_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: console_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 21. Error Block 14 start (CF ANALYSIS FAILED)
	if arg1._currentSecondaryRenderer == nil then
		arg1._currentSecondaryRenderer = var5_upvw
	else
		if arg1._currentSecondaryRenderer ~= var5_upvw then
			console_upvr.error("Detected multiple renderers concurrently rendering the ".."same mutable source. This is currently unsupported.")
		end
		-- KONSTANTERROR: [28] 21. Error Block 14 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [48] 35. Error Block 11 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [48] 35. Error Block 11 end (CF ANALYSIS FAILED)
	end
end
function module.registerMutableSourceForHydration(arg1, arg2) -- Line 103
	if arg1.mutableSourceEagerHydrationData == nil then
		local tbl = {}
		tbl[1] = arg2
		tbl[2] = arg2._getVersion(arg2._source)
		arg1.mutableSourceEagerHydrationData = tbl
		return
	end
end
return module