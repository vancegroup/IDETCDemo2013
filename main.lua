require("getScriptFilename")
vrjLua.appendToModelSearchPath(getScriptFilename())

print("Loading demo...")

--set buttons required for SimSparta
nextBtn = gadget.DigitalInterface("VJButton1")
prevBtn = gadget.DigitalInterface("VJButton2")
dragBtn = gadget.DigitalInterface("Grab")
wand = gadget.PositionInterface("VJWand")
reset_all_Btn = gadget.DigitalInterface("Reset")

--load useful_tools for getRandomColor(), changeTransformColor(), and scaleTransform()
dofile(vrjLua.findInModelSearchPath([[libraries\useful_tools.lua]]))
--load SimSparta for createManipulatableObject() and SimSparta() - frame action call
dofile(vrjLua.findInModelSearchPath([[libraries\SimSparta.lua]]))
--add factory model
dofile(vrjLua.findInModelSearchPath([[libraries\loadBasicFactory.lua]]))
--add lighting to scene
dofile(vrjLua.findInModelSearchPath([[libraries\simpleLights.lua]]))
--add wand cursor to scene
dofile(vrjLua.findInModelSearchPath([[libraries\wand.lua]]))

print("Loading models...")

local model = Transform{Model([[models\Flange_1.jt.osg]])}
local model_xform = Transform{scale = 0.5, position = {-0.10, 1.7, .4}, model}
RelativeTo.World:addChild(createManipulatableObject(model_xform))
local model = Transform{Model([[models\Handle_2.jt.osg]])}
local model_xform = Transform{scale = 0.5, position = {-0.05, 1.7, .4}, model}
RelativeTo.World:addChild(createManipulatableObject(model_xform))
local model = Transform{Model([[models\Rod_3.jt.osg]])}
local model_xform = Transform{scale = 0.5, position = {0.0, 1.7, .4}, model}
RelativeTo.World:addChild(createManipulatableObject(model_xform))
local model = Transform{Model([[models\UBracket_0.jt.osg]])}
local model_xform = Transform{scale = 0.5, position = {0.05, 1.7, .4}, model}
RelativeTo.World:addChild(createManipulatableObject(model_xform))





--adding SimSparta frame action
SimSparta(dragBtn, nextBtn, prevBtn)

print("Demo running.")