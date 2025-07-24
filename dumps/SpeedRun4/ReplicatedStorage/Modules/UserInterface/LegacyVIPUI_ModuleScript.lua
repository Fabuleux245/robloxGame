-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:12
-- Luau version 6, Types version 3
-- Time taken: 0.004048 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local var4_upvw = false
local module_4_upvr = require(Modules:WaitForChild("UIShared"))
local module_2_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_6_upvr = require(Modules:WaitForChild("Utility"))
local module_5_upvr = require(Modules:WaitForChild("UserInterface"):WaitForChild("CollectionUISystem"))
local module_7_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local module_8_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr = require(Modules:WaitForChild("UIButton"))
local AsyncData_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("AsyncData")
local RunService_upvr = game:GetService("RunService")
function module.DisplayLegacyVIPPrompt() -- Line 32
	--[[ Upvalues[10]:
		[1]: var4_upvw (read and write)
		[2]: module_4_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: module_6_upvr (readonly)
		[5]: module_5_upvr (readonly)
		[6]: module_7_upvr (readonly)
		[7]: module_8_upvr (readonly)
		[8]: module_upvr (readonly)
		[9]: AsyncData_upvr (readonly)
		[10]: RunService_upvr (readonly)
	]]
	if var4_upvw then
	else
		var4_upvw = true
		local any_Create_result1_upvr = module_4_upvr.UIExclusivityMember.Create(module_2_upvr.LegacyVIPUIGroup)
		module_4_upvr.UIExclusivityMember.SetActive(any_Create_result1_upvr, true)
		local any_TableMerge_result1 = module_6_upvr.TableMerge(module_5_upvr.CollectionType, {
			LegacyUI = 1;
		})
		local any_CollectionUICreate_result1_upvr = module_5_upvr.CollectionUICreate(any_TableMerge_result1, module_6_upvr.HierarchyCreate({{any_TableMerge_result1._UIMain}, {any_TableMerge_result1.LegacyUI, any_TableMerge_result1._UIMain}}), function() -- Line 48
			--[[ Upvalues[1]:
				[1]: any_Create_result1_upvr (readonly)
			]]
			return any_Create_result1_upvr.Active
		end)
		any_CollectionUICreate_result1_upvr.Name = "LegacyVIPUI"
		any_CollectionUICreate_result1_upvr.DisplayOrder = module_7_upvr.DisplayOrder_LegacyVIPUI
		local tbl_2_upvr = {"You purchased the special subscription version of VIP. We've ".."moved on from that system and it is no longer the main VIP type.", string.format("However, as thanks for subscribing to that version, we will be ".."giving you a free additional 2x %s and ownership of all ".."Gamepasses for the duration of your subscription.", module_7_upvr.FrontEndNames.Currency_ByCurrencyType[module_8_upvr.PrimaryCurrencyType].Plural.Lower)}
		local var34_upvw = true
		any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1.LegacyUI] = {
			Initialize = function(arg1) -- Line 86, Named "LegacyVIPUIInitialize"
				--[[ Upvalues[9]:
					[1]: module_4_upvr (copied, readonly)
					[2]: module_6_upvr (copied, readonly)
					[3]: module_7_upvr (copied, readonly)
					[4]: tbl_2_upvr (readonly)
					[5]: module_upvr (copied, readonly)
					[6]: any_Create_result1_upvr (readonly)
					[7]: any_CollectionUICreate_result1_upvr (readonly)
					[8]: AsyncData_upvr (copied, readonly)
					[9]: module_8_upvr (copied, readonly)
				]]
				local module_3 = {
					Labels = {};
					Bounds = {};
					Flag = module_4_upvr.TextBoundsFlagCreate();
					HeaderLabel = module_6_upvr.I("TextLabel", module_4_upvr.Properties.Text_Scaled, {
						FontFace = module_7_upvr.FontFaceNormal;
						Text = "Hey,";
						TextColor3 = module_7_upvr.TextColor1;
						Parent = arg1.Wrapper;
					});
				}
				for _, v in tbl_2_upvr do
					local any_I_result1 = module_6_upvr.I("TextLabel", module_4_upvr.Properties.Text, {
						FontFace = module_7_upvr.FontFaceNormal;
						Text = v;
						TextColor3 = module_7_upvr.TextColor1;
						TextXAlignment = Enum.TextXAlignment.Left;
						Parent = arg1.Wrapper;
					})
					local any_CachedTextBounds_FromLabel_result1 = module_4_upvr.CachedTextBounds_FromLabel(any_I_result1)
					any_CachedTextBounds_FromLabel_result1.Flag = module_3.Flag
					module_3.Labels[#module_3.Labels + 1] = any_I_result1
					module_3.Bounds[#module_3.Bounds + 1] = any_CachedTextBounds_FromLabel_result1
				end
				module_3.Button = module_upvr.Button.CreateFancy(arg1.Wrapper, module_upvr.Button.Themes.Dull, {
					Text = "Okay";
				})
				module_3.Button.Button.Activated:Connect(function() -- Line 125
					--[[ Upvalues[5]:
						[1]: any_Create_result1_upvr (copied, readonly)
						[2]: module_4_upvr (copied, readonly)
						[3]: any_CollectionUICreate_result1_upvr (copied, readonly)
						[4]: AsyncData_upvr (copied, readonly)
						[5]: module_8_upvr (copied, readonly)
					]]
					if any_Create_result1_upvr.Active then
						module_4_upvr.UIExclusivityMember.SetActive(any_Create_result1_upvr, false)
						any_CollectionUICreate_result1_upvr.RequestClose()
						AsyncData_upvr:FireServer(module_8_upvr.AsyncDataRequestType.LegacyVIPPrompt)
					end
				end)
				any_CollectionUICreate_result1_upvr.State.PendingSelection = module_3.Button.Button
				return module_6_upvr.TableMerge(module_3, arg1)
			end;
			Destroy = function(arg1) -- Line 144, Named "LegacyVIPUIDestroy"
				--[[ Upvalues[5]:
					[1]: module_upvr (copied, readonly)
					[2]: var34_upvw (read and write)
					[3]: RunService_upvr (copied, readonly)
					[4]: module_4_upvr (copied, readonly)
					[5]: any_Create_result1_upvr (readonly)
				]]
				module_upvr.Button.Destroy(arg1.Button)
				if var34_upvw then
					var34_upvw = false
					RunService_upvr:UnbindFromRenderStep("LegacyVIPUI-RENDER_STEPPED")
				end
				module_4_upvr.UIExclusivityMember.Destroy(any_Create_result1_upvr)
			end;
			Update = function(arg1, arg2, arg3) -- Line 156, Named "LegacyVIPUIUpdate"
				--[[ Upvalues[4]:
					[1]: module_4_upvr (copied, readonly)
					[2]: any_CollectionUICreate_result1_upvr (readonly)
					[3]: tbl_2_upvr (readonly)
					[4]: module_upvr (copied, readonly)
				]]
				if module_4_upvr.TextBoundsFlagCheck(arg1.Flag) or arg1.DrawDirty then
					local PadY = any_CollectionUICreate_result1_upvr.Properties.PadY
					local var38 = any_CollectionUICreate_result1_upvr.Properties.PadX * 2 // 1
					local var39 = PadY * 4 // 1
					local var40 = module_4_upvr.EmSize * 32 // 1
					local var41 = var40 - 2 * var38
					local var42 = module_4_upvr.EmSize * 1.1 // 1
					local ButtonFancyX = module_4_upvr.SteppedSize.ButtonFancyX
					local any_DimTrackerCreate_result1 = module_4_upvr.DimTrackerCreate()
					local tbl = {}
					local tbl_3 = {
						Position = UDim.new(0, var38);
						Size = UDim.new(0, var41);
					}
					module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, var39)
					module_4_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, arg1.HeaderLabel, 0, module_4_upvr.EmSize * 3 // 1)
					module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, var39)
					tbl[arg1.HeaderLabel] = tbl_3
					for i_2, v_2 in tbl_2_upvr do
						local var47 = arg1.Labels[i_2]
						local var48 = arg1.Bounds[i_2]
						if module_4_upvr.CachedTextBoundsUpdate(var48, v_2, var42, var41) then
							var47.TextSize = var42
						end
						if 1 < i_2 then
							module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, 2 * PadY)
						end
						module_4_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, var47, 0, var48.Y)
						tbl[var47] = tbl_3
					end
					module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, var39)
					module_4_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, arg1.Button.Button, 0, module_4_upvr.SteppedSize.ButtonFancyY)
					module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, var39)
					tbl[arg1.Button.Button] = {
						Position = UDim.new(0, (var40 * 0.5 - ButtonFancyX * 0.5) // 1);
						Size = UDim.new(0, ButtonFancyX);
					}
					module_4_upvr.DimTrackerApply(any_DimTrackerCreate_result1, tbl, true)
					module_upvr.Button.AdjustText(arg1.Button, nil, nil, nil, module_4_upvr.SteppedSize.ButtonFancyText)
					arg1.TargetSize = UDim2.fromOffset(var40, any_DimTrackerCreate_result1.Offset)
				end
				module_upvr.Button.Update(arg1.Button, arg3)
			end;
		}
		any_CollectionUICreate_result1_upvr.RequestCollection(any_TableMerge_result1.LegacyUI)
		RunService_upvr:BindToRenderStep("LegacyVIPUI-RENDER_STEPPED", Enum.RenderPriority.Last.Value + 1, function(arg1) -- Line 245
			--[[ Upvalues[1]:
				[1]: any_CollectionUICreate_result1_upvr (readonly)
			]]
			any_CollectionUICreate_result1_upvr.RenderStepped(arg1, os.clock())
		end)
	end
end
return module