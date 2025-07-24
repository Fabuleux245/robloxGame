-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:20:31
-- Luau version 6, Types version 3
-- Time taken: 0.000921 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local Fields = Parent_2.Fields
local FieldType_upvr = require(Parent.SettingsService).FieldType
local React_upvr = require(Parent.React)
local Toggle_upvr = require(Fields.Toggle)
local TextButton_upvr = require(Fields.TextButton)
return function(arg1) -- Line 19
	--[[ Upvalues[4]:
		[1]: FieldType_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Toggle_upvr (readonly)
		[4]: TextButton_upvr (readonly)
	]]
	local var9
	if arg1.field_type == FieldType_upvr.Toggle then
		var9 = React_upvr.createElement(Toggle_upvr, arg1)
		return var9
	end
	if arg1.field_type == FieldType_upvr.TextButton then
		var9 = React_upvr.createElement(TextButton_upvr, arg1)
	end
	return var9
end