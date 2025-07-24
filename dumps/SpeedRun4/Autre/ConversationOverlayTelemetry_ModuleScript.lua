-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:46
-- Luau version 6, Types version 3
-- Time taken: 0.001312 seconds

local ModalTelemetry = require(script:FindFirstAncestor("AppChat").Components.ModalTelemetry)
local module = {}
local tbl = {}
local tbl_3 = {
	modalSequence = ModalTelemetry.Enums.ModalSequence.ConversationOverlay;
}
local function counterFormat(arg1, arg2) -- Line 12
	return {
		modalVariant = arg1.modalVariant;
	}
end
tbl_3.counterFormat = counterFormat
tbl.ModalRendered = ModalTelemetry.Events.modalRenderedWithSequence(tbl_3)
local tbl_2 = {
	modalSequence = ModalTelemetry.Enums.ModalSequence.ConversationOverlay;
}
local function counterFormat(arg1, arg2) -- Line 20
	return {
		modalVariant = arg1.modalVariant;
		action = arg1.action;
	}
end
tbl_2.counterFormat = counterFormat
tbl.ModalAction = ModalTelemetry.Events.modalActionWithSequence(tbl_2)
tbl.ModalActionResult = ModalTelemetry.Events.modalActionResultWithSequence({
	modalSequence = ModalTelemetry.Enums.ModalSequence.ConversationOverlay;
	counterFormat = function(arg1, arg2) -- Line 32, Named "counterFormat"
		return {
			modalVariant = arg1.modalVariant;
			action = arg1.action;
			actionResult = arg1.actionResult;
		}
	end;
})
module.Events = tbl
return module