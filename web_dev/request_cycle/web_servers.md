## Key design philosophies of Linux

Linux is a unix like operating system and it came about as people wanted an unlicensed (or general public licensed) operating system that was unix-compatible. Key design philosophies are that it's accessible to everyone and that they trust the users to know what they're doing. Linux assumes that the user is computer literate. 

## VPS

A VPS is like a container on a server that acts like it's own server. It has it's own copy of an operating system. If you don't need an entire server to host your site/application/whatever a VPS is more cost efficient and can be scaled in the same place without having to move your stuff to a new server.  


## Running programs on the root user

It is bad practice to run on root becasue the operating system will allow the root user to do anything. You want end users to be cut off from different areas of your application. if you need someone to have more access you have to create an admin type user role. If you make a mistake and your running it on user, only the user directory will be affected. If you run it on root the damages will be everywhere. 