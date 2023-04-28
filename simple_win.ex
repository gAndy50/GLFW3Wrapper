include std/ffi.e
include glfw3.e

atom win

atom gl_init = glfwInit()

if gl_init = -1 then
	puts(1,"Failed to init GLFW3!\n")
	abort(0)
end if

win = glfwCreateWindow(800,600,"Simple Win",0,0)

if win = -1 then
	puts(1,"Failed to create window!\n")
	glfwTerminate()
end if

glfwMakeContextCurrent(win)

while not glfwWindowShouldClose(win) do
	glfwSwapBuffers(win)
	glfwPollEvents()
end while

glfwDestroyWindow(win)

glfwTerminate()
­27.22