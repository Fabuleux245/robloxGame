-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:44
-- Luau version 6, Types version 3
-- Time taken: 0.004388 seconds

local module = {}
local module_3_upvr = {
	__ClassName = "TransparencyTweener";
	__tostring = function(arg1) -- Line 21
		return arg1.__ClassName..": "..arg1.MemoryLocation
	end;
	__metatable = "The metatable is locked";
}
function module_3_upvr.__index(arg1, arg2, arg3) -- Line 26
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	if rawget(arg1, arg2) then
		return rawget(arg1, arg2)
	end
	if rawget(module_3_upvr, arg2) then
		return rawget(module_3_upvr, arg2)
	end
	if arg2 == "Transparency" then
		return rawget(arg1, "InternalLastTweenPercentage")
	end
	error(arg2.." is not a valid member of "..arg1.__ClassName)
end
function module_3_upvr.__newindex(arg1, arg2, arg3) -- Line 36
	if arg2 == "Transparency" then
		arg1.InternalLastTweenPercentage = arg3
		arg1:SetPropertiesToTweenPercentage(arg3)
	else
		error(arg2.." is not a valid member of "..arg1.__ClassName)
	end
end
function module_3_upvr.Dump(arg1) -- Line 49
	local var17
	for i, v in pairs(arg1.TweenObjects) do
		local var18 = " | "
		if type(i) == "table" then
			var18 = var18.."{{"..i:Dump().."}}"
		elseif type(i) == "userdata" then
			var18 = var18..i.Name..'/'..i:GetFullName()
		end
		for i_2, v_2 in pairs(v) do
			var18 = var18.." ["..i_2..'='..string.sub(tostring(v_2), 1, 4)..']'
		end
		var17 = var17..var18
	end
	return var17
end
function module_3_upvr.OutputTest(arg1) -- Line 70
	print("Test Output for {={"..arg1:Dump().."}=}")
	for i_3, v_3 in pairs(arg1.TweenObjects) do
		print("TweenObject:", i_3)
		for i_4, v_4 in pairs(v_3) do
			print("\t["..i_4..'='..string.sub(tostring(v_4), 1, 4).."] Actual:"..i_3[i_4])
		end
	end
end
function module_3_upvr.RegisterTweenObjectProperty(arg1, arg2, arg3, arg4) -- Line 80
	local var32 = arg4
	if not var32 then
		var32 = arg2[arg3]
	end
	local var33 = var32
	if not arg1.TweenObjects[arg2] then
		arg1.TweenObjects[arg2] = {}
	end
	arg1.TweenObjects[arg2][arg3] = var33
	arg1:SetObjectPropertyToPercentValue(arg2, arg3, var33, arg1.InternalLastTweenPercentage)
end
function module_3_upvr.UnregisterTweenObject(arg1, arg2) -- Line 92
	arg1.TweenObjects[arg2] = nil
end
function module_3_upvr.SetObjectPropertyToPercentValue(arg1, arg2, arg3, arg4, arg5) -- Line 96
	arg2[arg3] = arg4 + (1 - arg4) * arg5
end
function module_3_upvr.SetPropertiesToTweenPercentage(arg1, arg2) -- Line 102
	for i_5, v_5 in pairs(arg1.TweenObjects) do
		for i_6, v_6 in pairs(v_5) do
			arg1:SetObjectPropertyToPercentValue(i_5, i_6, v_6, arg2)
		end
	end
end
local RunService_upvr = game:GetService("RunService")
function module_3_upvr.Tween(arg1, arg2, arg3, arg4) -- Line 110
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1.Tweening then
		local tbl = {}
		tbl[1] = arg2
		tbl[2] = arg3
		tbl[3] = arg4
		arg1.QueuedTween = tbl
		arg1.TweenIsQueued = true
		arg1:CancelTween()
	else
		arg1.Tweening = true
		local var46_upvw = arg4
		if var46_upvw then
			arg1:SetPropertiesToTweenPercentage(var46_upvw)
		else
			var46_upvw = arg1.InternalLastTweenPercentage
		end
		local tick_result1_upvr = tick()
		local var49_upvr = tick_result1_upvr + arg2
		local var50_upvw = 0
		local var51_upvr = arg3 - var46_upvw
		spawn(function() -- Line 132
			--[[ Upvalues[9]:
				[1]: var49_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: var50_upvw (read and write)
				[4]: tick_result1_upvr (readonly)
				[5]: arg2 (readonly)
				[6]: var46_upvw (read and write)
				[7]: var51_upvr (readonly)
				[8]: RunService_upvr (copied, readonly)
				[9]: arg3 (readonly)
			]]
			local tick_result1 = tick()
			while tick_result1 < var49_upvr and not arg1.Canceled do
				var50_upvw = math.min(math.max((tick_result1 - tick_result1_upvr) / arg2, 0), 1)
				local var53 = var46_upvw + var51_upvr * var50_upvw
				arg1.InternalLastTweenPercentage = var53
				arg1:SetPropertiesToTweenPercentage(var53)
				RunService_upvr.RenderStepped:wait()
			end
			if not arg1.Canceled then
				arg1.InternalLastTweenPercentage = arg3
				arg1:SetPropertiesToTweenPercentage(arg3)
			else
				arg1.Canceled = false
				if arg1.TweenIsQueued then
					arg1.TweenIsQueued = false
					arg1.Tweening = false
					arg1:Tween(unpack(arg1.QueuedTween))
					return
				end
			end
			arg1.Tweening = false
		end)
	end
end
function module_3_upvr.CancelTween(arg1) -- Line 163
	arg1.Canceled = true
end
function module.new() -- Line 169
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local module_2 = {
		MemoryLocation = tostring(module_2):match("[0123456789ABCDEF]+");
		TweenObjects = setmetatable({}, {
			__mode = 'k';
		});
		Transparency = nil;
		InternalLastTweenPercentage = 0;
		Tweening = false;
		Canceled = false;
		TweenIsQueued = false;
		QueuedTween = {};
	}
	return setmetatable(module_2, module_3_upvr)
end
return module