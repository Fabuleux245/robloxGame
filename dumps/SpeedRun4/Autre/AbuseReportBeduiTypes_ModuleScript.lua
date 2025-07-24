-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:12
-- Luau version 6, Types version 3
-- Time taken: 0.001663 seconds

local t = require(script:FindFirstAncestor("GenericAbuseReporting").Parent.t)
local any_union_result1 = t.union(t.interface({
	type = t.literal("configurableComponentList");
	configurableComponentList = t.interface({
		components = t.array(t.union(t.interface({
			componentType = t.literal("dropdown");
			isOptional = t.boolean;
			formDataKey = t.string;
			requirementMessage = t.string;
			dropdown = t.interface({
				prompt = t.string;
				placeholder = t.string;
				items = t.array(t.interface({
					label = t.string;
					formDataValue = t.union(t.number, t.string);
				}));
			});
		}), t.interface({
			componentType = t.literal("freeComment");
			isOptional = t.boolean;
			formDataKey = t.string;
			requirementMessage = t.string;
			freeComment = t.interface({
				prompt = t.string;
				placeholder = t.string;
			});
		}), t.interface({
			componentType = t.literal("paragraph");
			isOptional = t.boolean;
			formDataKey = t.optional(t.string);
			paragraph = t.interface({
				text = t.string;
				links = t.optional(t.map(t.string, t.interface({
					label = t.string;
					linkButtonLabel = t.string;
					url = t.string;
				})));
			});
		}), t.interface({
			componentType = t.literal("link");
			isOptional = t.boolean;
			formDataKey = t.optional(t.string);
			link = t.interface({
				label = t.string;
				linkButtonLabel = t.string;
				url = t.string;
			});
		})));
	});
}))
return {
	AbuseReportBeduiContextStatus = {
		Loading = "Loading";
		Success = "Success";
		Error = "Error";
	};
	BeduiDataTypeInterface = {
		rootStepId = t.number;
		nodes = t.array(t.interface({
			title = t.string;
			subtitle = t.string;
			actionInfo = t.interface({
				actionLabel = t.optional(t.string);
				predefinedNextStepId = t.number;
				shouldSubmit = t.optional(t.boolean);
			});
			stepId = t.number;
			internalStepName = t.string;
			isCompletionStep = t.optional(t.boolean);
			innerContentConfig = t.optional(any_union_result1);
			footerContentConfig = t.optional(any_union_result1);
		}));
	};
	ComponentType = {
		Dropdown = "dropdown";
		FreeComment = "freeComment";
		Paragraph = "paragraph";
		WebViewLink = "link";
	};
	ContentConfigType = {
		InnerContentConfig = "innerContentConfig";
		FooterContentConfig = "footerContentConfig";
	};
	InnerContentConfigType = {
		ConfigurableComponentList = "configurableComponentList";
	};
	NotificationType = {
		OpenCustomWebView = 20;
	};
}