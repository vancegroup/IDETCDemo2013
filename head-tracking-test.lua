Actions.addFrameAction(
	function()
		local device = gadget.PositionInterface("VJHead")
		while true do
			print(device.position)
			Actions.waitForRedraw()
		end
	end
)