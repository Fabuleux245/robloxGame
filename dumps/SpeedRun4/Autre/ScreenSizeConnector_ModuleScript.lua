-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:56
-- Luau version 6, Types version 3
-- Time taken: 0.002297 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ScreenSizeConnector")
function any_extend_result1.init(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.state = {
		layerCollector = nil;
	}
	arg1.folderRef = Roact_upvr.createRef()
end
local EventConnection_upvr = require(script.Parent.EventConnection)
function any_extend_result1.render(arg1) -- Line 23
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: EventConnection_upvr (readonly)
	]]
	if arg1.state.layerCollector then
		local AbsoluteSize_upvw = arg1.state.layerCollector.AbsoluteSize
		arg1.props.setScreenSize(AbsoluteSize_upvw.X, AbsoluteSize_upvw.Y)
		return Roact_upvr.createElement(EventConnection_upvr, {
			event = arg1.state.layerCollector:GetPropertyChangedSignal("AbsoluteSize");
			callback = function() -- Line 29, Named "callback"
				--[[ Upvalues[2]:
					[1]: AbsoluteSize_upvw (read and write)
					[2]: arg1 (readonly)
				]]
				AbsoluteSize_upvw = arg1.state.layerCollector.AbsoluteSize
				arg1.props.setScreenSize(AbsoluteSize_upvw.X, AbsoluteSize_upvw.Y)
			end;
		})
	end
	return Roact_upvr.createElement("Folder", {
		[Roact_upvr.Ref] = arg1.folderRef;
	})
end
function any_extend_result1.watchFolderAncestery(arg1) -- Line 41
	if arg1.folderRef.current and arg1.ancesteryConnection == nil then
		local class_LayerCollector_upvw = arg1.folderRef.current:FindFirstAncestorWhichIsA("LayerCollector")
		if class_LayerCollector_upvw then
			arg1:setState({
				layerCollector = class_LayerCollector_upvw;
			})
		else
			arg1.ancesteryConnection = arg1.folderRef.current.AncestryChanged:Connect(function() -- Line 49
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: class_LayerCollector_upvw (read and write)
				]]
				if arg1.folderRef.current then
					class_LayerCollector_upvw = arg1.folderRef.current:FindFirstAncestorWhichIsA("LayerCollector")
					if class_LayerCollector_upvw then
						arg1:setState({
							layerCollector = class_LayerCollector_upvw;
						})
					end
				end
			end)
		end
	end
end
function any_extend_result1.didMount(arg1) -- Line 63
	arg1:watchFolderAncestery()
end
function any_extend_result1.didUpdate(arg1) -- Line 67
	if not arg1.state.layerCollector then
		arg1:watchFolderAncestery()
	elseif arg1.ancesteryConnection then
		arg1.ancesteryConnection:Disconnect()
		arg1.ancesteryConnection = nil
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 76
	if arg1.ancesteryConnection then
		arg1.ancesteryConnection:Disconnect()
		arg1.ancesteryConnection = nil
	end
end
local SetScreenSize_upvr = require(script.Parent.Parent.Parent.Actions.SetScreenSize)
return require(CorePackages.Packages.RoactRodux).connect(nil, function(arg1) -- Line 83, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetScreenSize_upvr (readonly)
	]]
	return {
		setScreenSize = function(arg1_2, arg2) -- Line 85, Named "setScreenSize"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetScreenSize_upvr (copied, readonly)
			]]
			return arg1(SetScreenSize_upvr(arg1_2, arg2))
		end;
	}
end)(any_extend_result1)