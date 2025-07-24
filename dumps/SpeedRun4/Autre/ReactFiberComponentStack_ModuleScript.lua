-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:01
-- Luau version 6, Types version 3
-- Time taken: 0.003294 seconds

local ReactWorkTags = require(script.Parent.ReactWorkTags)
local ReactComponentStackFrame = require(script.Parent.Parent.Shared).ReactComponentStackFrame
local HostComponent_upvr = ReactWorkTags.HostComponent
local describeBuiltInComponentFrame_upvr = ReactComponentStackFrame.describeBuiltInComponentFrame
local LazyComponent_upvr = ReactWorkTags.LazyComponent
local SuspenseComponent_upvr = ReactWorkTags.SuspenseComponent
local SuspenseListComponent_upvr = ReactWorkTags.SuspenseListComponent
local FunctionComponent_upvr = ReactWorkTags.FunctionComponent
local IndeterminateComponent_upvr = ReactWorkTags.IndeterminateComponent
local SimpleMemoComponent_upvr = ReactWorkTags.SimpleMemoComponent
local describeFunctionComponentFrame_upvr = ReactComponentStackFrame.describeFunctionComponentFrame
local ForwardRef_upvr = ReactWorkTags.ForwardRef
local ClassComponent_upvr = ReactWorkTags.ClassComponent
local describeClassComponentFrame_upvr = ReactComponentStackFrame.describeClassComponentFrame
local function describeFiber_upvr(arg1) -- Line 38, Named "describeFiber"
	--[[ Upvalues[12]:
		[1]: HostComponent_upvr (readonly)
		[2]: describeBuiltInComponentFrame_upvr (readonly)
		[3]: LazyComponent_upvr (readonly)
		[4]: SuspenseComponent_upvr (readonly)
		[5]: SuspenseListComponent_upvr (readonly)
		[6]: FunctionComponent_upvr (readonly)
		[7]: IndeterminateComponent_upvr (readonly)
		[8]: SimpleMemoComponent_upvr (readonly)
		[9]: describeFunctionComponentFrame_upvr (readonly)
		[10]: ForwardRef_upvr (readonly)
		[11]: ClassComponent_upvr (readonly)
		[12]: describeClassComponentFrame_upvr (readonly)
	]]
	local var18
	local var19
	if var19 then
		var19 = arg1._debugOwner
		if var19 then
			var18 = var19.type
		end
	end
	var19 = nil
	if _G.__DEV__ then
		var19 = arg1._debugSource
	end
	if arg1.tag == HostComponent_upvr then
		return describeBuiltInComponentFrame_upvr(arg1.type, var19, var18)
	end
	if arg1.tag == LazyComponent_upvr then
		return describeBuiltInComponentFrame_upvr("Lazy", var19, var18)
	end
	if arg1.tag == SuspenseComponent_upvr then
		return describeBuiltInComponentFrame_upvr("Suspense", var19, var18)
	end
	if arg1.tag == SuspenseListComponent_upvr then
		return describeBuiltInComponentFrame_upvr("SuspenseList", var19, var18)
	end
	if arg1.tag == FunctionComponent_upvr or arg1.tag == IndeterminateComponent_upvr or arg1.tag == SimpleMemoComponent_upvr then
		return describeFunctionComponentFrame_upvr(arg1.type, var19, var18)
	end
	if arg1.tag == ForwardRef_upvr then
		return describeFunctionComponentFrame_upvr(arg1.type.render, var19, var18)
	end
	if arg1.tag == ClassComponent_upvr then
		return describeClassComponentFrame_upvr(arg1.type, var19, var18)
	end
	return ""
end
return {
	getStackByFiberInDevAndProd = function(arg1) -- Line 76, Named "getStackByFiberInDevAndProd"
		--[[ Upvalues[1]:
			[1]: describeFiber_upvr (readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 77
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: describeFiber_upvr (copied, readonly)
			]]
			local var22 = arg1
			local var23
			repeat
				var23 = var23..describeFiber_upvr(var22)
			until var22.return_ == nil
			return var23
		end)
		if not pcall_result1 then
			if typeof(pcall_result2) == "table" and pcall_result2.message and pcall_result2.stack then
				return "\nError generating stack: "..pcall_result2.message..'\n'..tostring(pcall_result2.stack)
			end
			return "\nError generating stack: "..tostring(pcall_result2)
		end
		return pcall_result2
	end;
}