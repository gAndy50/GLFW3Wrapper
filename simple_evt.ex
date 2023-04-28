include std/ffi.e

include glfw3.e

atom win

atom gl = glfwInit()

if gl = -1 then
	puts(1,"Failed to init GLFW3!\n")
	abort(0)
end if

win = glfwCreateWindow(800,600,"Simple Event",0,0)

if win = -1 then
	puts(1,"Failed to create window!\n")
	abort(0)
end if

glfwMakeContextCurrent(win)
glfwSwapInterval(1)

glfwSetInputMode(win,GLFW_STICKY_KEYS,1)

while not glfwWindowShouldClose(win) do
	atom key = glfwGetKey(win,GLFW_KEY_ESCAPE)
	
	if key = GLFW_PRESS then
		puts(1,"ESC was pressed\n")
		glfwTerminate()
	end if
	
	glfwSwapBuffers(win)
	glfwPollEvents()
end while

glfwDestroyWindow(win)

glfwTerminate()
­30.29