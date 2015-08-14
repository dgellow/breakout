import glfw
from os import sleep

glfw.init()
var win = newGlWin()
sleep(1000)
win.destroy()
glfw.terminate()
