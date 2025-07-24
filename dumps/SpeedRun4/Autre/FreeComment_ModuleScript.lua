-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:08
-- Luau version 6, Types version 3
-- Time taken: 0.001612 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local useTokens_upvr = Foundation.Hooks.useTokens
local useFormData_upvr = require(GenericAbuseReporting.Bedui.Provider.useFormData)
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
local CommentTextField_upvr = require(GenericAbuseReporting.Common.CommentTextField)
local ComponentSubtext_upvr = require(GenericAbuseReporting.Bedui.Components.ComponentSubtext)
return React_upvr.memo(function(arg1) -- Line 24, Named "FreeComment"
	--[[ Upvalues[7]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useFormData_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: Text_upvr (readonly)
		[6]: CommentTextField_upvr (readonly)
		[7]: ComponentSubtext_upvr (readonly)
	]]
	local var5_result1 = useTokens_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState("")
	local updateForm_upvr = useFormData_upvr().updateForm
	return React_upvr.createElement(View_upvr, {
		tag = "size-full-0 auto-y col gap-small";
		LayoutOrder = arg1.layoutOrder;
	}, {
		Prompt = React_upvr.createElement(Text_upvr, {
			Text = arg1.component.freeComment.prompt;
			tag = "auto-xy";
			LayoutOrder = 0;
		});
		FreeCommentContainer = React_upvr.createElement(View_upvr, {
			tag = "size-full-0 auto-y col align-x-left stroke-thick stroke-default radius-medium";
			LayoutOrder = 1;
		}, {
			FreeComment = React_upvr.createElement(CommentTextField_upvr, {
				text = any_useState_result1;
				placeholderText = arg1.component.freeComment.placeholder;
				backgroundColor3 = var5_result1.Color.Shift.Shift_100.Color3;
				backgroundTransparency = var5_result1.Color.Shift.Shift_100.Transparency;
				onUpdate = React_upvr.useCallback(function(arg1_2) -- Line 29
					--[[ Upvalues[3]:
						[1]: any_useState_result2_upvr (readonly)
						[2]: updateForm_upvr (readonly)
						[3]: arg1 (readonly)
					]]
					any_useState_result2_upvr(arg1_2)
					updateForm_upvr(arg1.component.formDataKey, arg1_2)
				end, {updateForm_upvr, arg1.component.formDataKey});
				layoutOrder = 1;
			});
		});
		ComponentSubtext = React_upvr.createElement(ComponentSubtext_upvr, {
			isErrorState = arg1.isErrorState;
			isOptional = arg1.component.isOptional;
			requirementMessage = arg1.component.requirementMessage;
			layoutOrder = 2;
		});
	})
end)