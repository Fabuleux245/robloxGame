-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:25
-- Luau version 6, Types version 3
-- Time taken: 0.005855 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local pcall_result1, pcall_result2 = pcall(function() -- Line 29
	return game:DefineFastInt("ReactMicroprofilerLevel4", 0)
end)
if not pcall_result1 then
	pcall_result2 = 0
end
function noop(...) -- Line 43
end
local var4_upvw = false
local var5_upvw
local var6_upvw = 0
if 5 <= pcall_result2 then
	game:GetService("RunService").RenderStepped:Connect(function() -- Line 52
		--[[ Upvalues[1]:
			[1]: var6_upvw (read and write)
		]]
		var6_upvw = 0
	end)
end
if 5 <= pcall_result2 then
	local tbl = {
		profilebegin = function(...) -- Line 59, Named "profilebegin"
			--[[ Upvalues[1]:
				[1]: var6_upvw (read and write)
			]]
			debug.profilebegin(...)
			var6_upvw += 1
		end;
		profileend = function() -- Line 63, Named "profileend"
			--[[ Upvalues[1]:
				[1]: var6_upvw (read and write)
			]]
			if 0 < var6_upvw then
				debug.profileend()
				var6_upvw -= 1
			end
		end;
	}
else
	local tbl_upvr = {
		profilebegin = noop;
		profileend = noop;
	}
end
function startTimerSampling(arg1) -- Line 75
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: var5_upvw (read and write)
	]]
	if var4_upvw then
		warn("RobloxReactProfiling Timer Sampling already running.")
	end
	var4_upvw = true
	var5_upvw = arg1
end
function endTimerSampling() -- Line 83
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: var5_upvw (read and write)
	]]
	var4_upvw = false
	var5_upvw = nil
end
function getFirstStringKey(arg1) -- Line 88
	for i, _ in arg1 do
		if type(i) == "string" then
			return i
		end
	end
	return nil
end
function startTimer(arg1) -- Line 97
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	if var4_upvw then
		arg1.startTime = os.clock()
	end
end
function endTimer(arg1) -- Line 102
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: var5_upvw (read and write)
	]]
	if var4_upvw then
		arg1.endTime = os.clock()
		if var5_upvw then
			var5_upvw(arg1)
		end
	end
end
function profileRootBeforeUnitOfWork(arg1) -- Line 111
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local current_2 = arg1.current
	if current_2 then
		if current_2.memoizedProps then
		end
		if getFirstStringKey(current_2.memoizedProps) == nil and current_2.stateNode and current_2.stateNode.containerInfo then
		end
	end
	if current_2.stateNode.containerInfo.Name == "Folder" then
		local var18
		if current_2.child then
			local child_2 = current_2.child
			var18 = nil
			if child_2.memoizedProps then
			end
			if getFirstStringKey(child_2.memoizedProps) == nil and child_2.stateNode and child_2.stateNode.containerInfo then
			end
			if child_2.stateNode.containerInfo.Name ~= nil then
				local Name = child_2.stateNode.containerInfo.Name
			end
		end
	end
	if Name ~= nil then
		local module_3 = {
			id = Name;
			startTime = 0;
			endTime = 0;
		}
		startTimer(module_3)
		tbl_upvr.profilebegin(Name)
		return module_3
	end
	return nil
end
function profileRootAfterYielding(arg1) -- Line 165
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1 then
		endTimer(arg1)
		tbl_upvr.profileend()
	end
end
local getComponentName_upvr = require(script.Parent.Parent.Shared).getComponentName
local ReactWorkTags_upvr = require(script.Parent.ReactWorkTags)
function profileUnitOfWorkBefore(arg1) -- Line 172
	--[[ Upvalues[3]:
		[1]: getComponentName_upvr (readonly)
		[2]: ReactWorkTags_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local var24
	if arg1.key then
		var24 = tostring(arg1.key)..'='..(var24 or '?')
	end
	local var25
	if arg1.stateNode and (arg1.tag == ReactWorkTags_upvr.HostComponent or arg1.tag == ReactWorkTags_upvr.HostText) then
		local class_LayerCollector = arg1.stateNode:FindFirstAncestorWhichIsA("LayerCollector")
		if class_LayerCollector then
			var25 = '['..class_LayerCollector:GetFullName().."] "
		end
	end
	if var25 then
		var24 = var25.." : "..(var24 or '?')
	end
	if var24 ~= nil then
		tbl_upvr.profilebegin(var24)
		return true
	end
	return false
end
function profileUnitOfWorkAfter(arg1) -- Line 205
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1 then
		tbl_upvr.profileend()
	end
end
function profileCommitBefore() -- Line 211
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr.profilebegin("Commit")
end
function profileCommitAfter() -- Line 214
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr.profileend()
end
local module_2 = {
	startTimerSampling = startTimerSampling;
	endTimerSampling = endTimerSampling;
}
if 1 <= pcall_result2 then
else
end
module_2.profileRootBeforeUnitOfWork = noop
if 1 <= pcall_result2 then
	-- KONSTANTWARNING: GOTO [157] #108
end
module_2.profileRootAfterYielding = noop
if 10 <= pcall_result2 then
	-- KONSTANTWARNING: GOTO [167] #114
end
module_2.profileUnitOfWorkBefore = noop
if 10 <= pcall_result2 then
	-- KONSTANTWARNING: GOTO [177] #120
end
module_2.profileUnitOfWorkAfter = noop
if 5 <= pcall_result2 then
	-- KONSTANTWARNING: GOTO [187] #126
end
module_2.profileCommitBefore = noop
if 5 <= pcall_result2 then
else
end
module_2.profileCommitAfter = noop
return module_2