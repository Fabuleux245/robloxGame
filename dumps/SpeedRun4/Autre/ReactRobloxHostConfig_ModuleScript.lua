-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:33
-- Luau version 6, Types version 3
-- Time taken: 0.005896 seconds

local function _(arg1) -- Line 13, Named "unimplemented"
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..tostring(arg1))
	error("FIXME (roblox): "..arg1.." is unimplemented", 2)
end
local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local ReactRobloxComponentTree = require(script.Parent.ReactRobloxComponentTree)
local uncacheFiberNode_upvr = ReactRobloxComponentTree.uncacheFiberNode
local updateFiberProps_upvr = ReactRobloxComponentTree.updateFiberProps
local ReactRobloxComponent = require(script.Parent.ReactRobloxComponent)
local enableCreateEventHandleAPI_upvr = require(Parent.Shared).ReactFeatureFlags.enableCreateEventHandleAPI
local function _(arg1) -- Line 205, Named "recursivelyUncacheFiberNode"
	--[[ Upvalues[1]:
		[1]: uncacheFiberNode_upvr (readonly)
	]]
	if typeof(arg1) ~= "Instance" then
	else
		uncacheFiberNode_upvr(arg1)
		for _, v_3 in arg1:GetDescendants() do
			uncacheFiberNode_upvr(v_3)
		end
	end
end
local module_upvr = {}
LuauPolyfill.Object.assign(module_upvr, require(Parent.Shared).ReactFiberHostConfig.WithNoPersistence)
function module_upvr.getRootHostContext(arg1) -- Line 223
	return arg1.ClassName
end
function module_upvr.getChildHostContext(arg1, arg2, arg3) -- Line 261
	return arg1
end
function module_upvr.getPublicInstance(arg1) -- Line 282
	return arg1
end
function module_upvr.prepareForCommit(arg1) -- Line 286
	--[[ Upvalues[1]:
		[1]: enableCreateEventHandleAPI_upvr (readonly)
	]]
	if enableCreateEventHandleAPI_upvr then
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		print("UNIMPLEMENTED ERROR: "..tostring("enableCreateEventHandleAPI"))
		error("FIXME (roblox): ".."enableCreateEventHandleAPI".." is unimplemented", 2)
	end
	return nil
end
function module_upvr.beforeActiveInstanceBlur() -- Line 301
	--[[ Upvalues[1]:
		[1]: enableCreateEventHandleAPI_upvr (readonly)
	]]
	if enableCreateEventHandleAPI_upvr then
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		print("UNIMPLEMENTED ERROR: "..tostring("enableCreateEventHandleAPI"))
		error("FIXME (roblox): ".."enableCreateEventHandleAPI".." is unimplemented", 2)
	end
end
function module_upvr.afterActiveInstanceBlur() -- Line 310
	--[[ Upvalues[1]:
		[1]: enableCreateEventHandleAPI_upvr (readonly)
	]]
	if enableCreateEventHandleAPI_upvr then
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		print("UNIMPLEMENTED ERROR: "..tostring("enableCreateEventHandleAPI"))
		error("FIXME (roblox): ".."enableCreateEventHandleAPI".." is unimplemented", 2)
	end
end
function module_upvr.resetAfterCommit(arg1) -- Line 319
end
local precacheFiberNode_upvr = ReactRobloxComponentTree.precacheFiberNode
function module_upvr.createInstance(arg1, arg2, arg3, arg4, arg5) -- Line 327
	--[[ Upvalues[2]:
		[1]: precacheFiberNode_upvr (readonly)
		[2]: updateFiberProps_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
	if arg5.key then
		Instance.new(arg1).Name = arg5.key
		-- KONSTANTWARNING: GOTO [26] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 9. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 9. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_upvr.appendInitialChild(arg1, arg2) -- Line 394
	arg2.Parent = arg1
end
local setInitialProperties_upvr = ReactRobloxComponent.setInitialProperties
function module_upvr.finalizeInitialChildren(arg1, arg2, arg3, arg4, arg5) -- Line 399
	--[[ Upvalues[1]:
		[1]: setInitialProperties_upvr (readonly)
	]]
	setInitialProperties_upvr(arg1, arg2, arg3, arg4)
	return false
end
local diffProperties_upvr = ReactRobloxComponent.diffProperties
function module_upvr.prepareUpdate(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 411
	--[[ Upvalues[1]:
		[1]: diffProperties_upvr (readonly)
	]]
	return diffProperties_upvr(arg1, arg2, arg3, arg4, arg5)
end
function module_upvr.shouldSetTextContent(arg1, arg2) -- Line 438
	return false
end
function module_upvr.createTextInstance(arg1, arg2, arg3, arg4) -- Line 454
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..tostring("createTextInstance"))
	error("FIXME (roblox): ".."createTextInstance".." is unimplemented", 2)
	return nil
end
module_upvr.isPrimaryRenderer = true
module_upvr.warnsIfNotActing = true
module_upvr.scheduleTimeout = LuauPolyfill.setTimeout
module_upvr.cancelTimeout = LuauPolyfill.clearTimeout
module_upvr.noTimeout = -1
module_upvr.supportsMutation = true
function module_upvr.commitMount(arg1, arg2, arg3, arg4) -- Line 480
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..tostring("commitMount"))
	error("FIXME (roblox): ".."commitMount".." is unimplemented", 2)
end
local updateProperties_upvr = ReactRobloxComponent.updateProperties
function module_upvr.commitUpdate(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 502
	--[[ Upvalues[2]:
		[1]: updateFiberProps_upvr (readonly)
		[2]: updateProperties_upvr (readonly)
	]]
	updateFiberProps_upvr(arg1, arg5)
	updateProperties_upvr(arg1, arg2, arg4)
end
local console_upvr = require(Parent.Shared).console
local inspect_upvr = LuauPolyfill.util.inspect
local CollectionService_upvr = game:GetService("CollectionService")
local function checkTags_upvr(arg1) -- Line 531, Named "checkTags"
	--[[ Upvalues[3]:
		[1]: console_upvr (readonly)
		[2]: inspect_upvr (readonly)
		[3]: CollectionService_upvr (readonly)
	]]
	if typeof(arg1) ~= "Instance" then
		console_upvr.warn("Could not check tags on non-instance %s.", inspect_upvr(arg1))
	elseif not arg1:IsDescendantOf(game) and 0 < #CollectionService_upvr:GetTags(arg1) then
		console_upvr.warn("Tags applied to orphaned %s \"%s\" cannot be accessed via".." CollectionService:GetTagged. If you're relying on tag".." behavior in a unit test, consider mounting your test ".."root into the DataModel.", arg1.ClassName, arg1.Name)
	end
end
function module_upvr.appendChild(arg1, arg2) -- Line 550
	--[[ Upvalues[1]:
		[1]: checkTags_upvr (readonly)
	]]
	arg2.Parent = arg1
	if _G.__DEV__ then
		checkTags_upvr(arg2)
	end
end
function module_upvr.appendChildToContainer(arg1, arg2) -- Line 559
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.appendChild(arg1, arg2)
end
function module_upvr.insertBefore(arg1, arg2, arg3) -- Line 588
	--[[ Upvalues[1]:
		[1]: checkTags_upvr (readonly)
	]]
	arg2.Parent = arg1
	if _G.__DEV__ then
		checkTags_upvr(arg2)
	end
end
function module_upvr.insertInContainerBefore(arg1, arg2, arg3) -- Line 601
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.insertBefore(arg1, arg2, arg3)
end
local cleanupHostComponent_upvr = ReactRobloxComponent.cleanupHostComponent
function module_upvr.removeChild(arg1, arg2) -- Line 643
	--[[ Upvalues[2]:
		[1]: uncacheFiberNode_upvr (readonly)
		[2]: cleanupHostComponent_upvr (readonly)
	]]
	if typeof(arg2) ~= "Instance" then
	else
		uncacheFiberNode_upvr(arg2)
		for _, v in arg2:GetDescendants() do
			uncacheFiberNode_upvr(v)
		end
	end
	cleanupHostComponent_upvr(arg2)
	arg2.Parent = nil
	arg2:Destroy()
end
function module_upvr.removeChildFromContainer(arg1, arg2) -- Line 655
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.removeChild(arg1, arg2)
end
function module_upvr.clearSuspenseBoundary(arg1, arg2) -- Line 666
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..tostring("clearSuspenseBoundary"))
	error("FIXME (roblox): ".."clearSuspenseBoundary".." is unimplemented", 2)
end
function module_upvr.clearSuspenseBoundaryFromContainer(arg1, arg2) -- Line 706
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..tostring("clearSuspenseBoundaryFromContainer"))
	error("FIXME (roblox): ".."clearSuspenseBoundaryFromContainer".." is unimplemented", 2)
end
function module_upvr.hideInstance(arg1) -- Line 723
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..tostring("hideInstance"))
	error("FIXME (roblox): ".."hideInstance".." is unimplemented", 2)
end
function module_upvr.hideTextInstance(arg1) -- Line 737
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..tostring("hideTextInstance"))
	error("FIXME (roblox): ".."hideTextInstance".." is unimplemented", 2)
end
function module_upvr.unhideInstance(arg1, arg2) -- Line 742
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..tostring("unhideInstance"))
	error("FIXME (roblox): ".."unhideInstance".." is unimplemented", 2)
end
function module_upvr.unhideTextInstance(arg1, arg2) -- Line 756
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..tostring("unhideTextInstance"))
	error("FIXME (roblox): ".."unhideTextInstance".." is unimplemented", 2)
end
function module_upvr.clearContainer(arg1) -- Line 761
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_2 in arg1:GetChildren() do
		module_upvr.removeChild(arg1, v_2)
	end
end
function module_upvr.preparePortalMount(arg1) -- Line 1204
end
return module_upvr