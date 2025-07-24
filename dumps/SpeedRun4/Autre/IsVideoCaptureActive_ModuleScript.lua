-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:02
-- Luau version 6, Types version 3
-- Time taken: 0.000868 seconds

local Parent = script.Parent.Parent
return require(Parent.Parent.Rodux).createReducer({
	status = false;
	triggerType = nil;
}, {
	[require(Parent.Actions.VideoCaptureStarted).name] = function(arg1, arg2) -- Line 22
		return {
			status = true;
			triggerType = arg2.triggerType;
		}
	end;
	[require(Parent.Actions.VideoCaptureStopped).name] = function(arg1, arg2) -- Line 29
		return {
			status = false;
			triggerType = arg2.triggerType;
		}
	end;
})