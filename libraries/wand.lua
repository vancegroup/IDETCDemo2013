require("TransparentGroup")
require("Actions")


local xform = osg.MatrixTransform()
xform:addChild(
	TransparentGroup{
		alpha = 0.7,
		Sphere{
			radius = 0.0125,
			position = {0, 0, 0}
		}
	}
)

RelativeTo.Room:addChild(xform)

RelativeTo.World:addChild(xform)
Actions.addFrameAction(
	function()
		while true do
			xform:setMatrix(wand.matrix)
			Actions.waitForRedraw()
		end
	end
)


print("Wand loaded.")