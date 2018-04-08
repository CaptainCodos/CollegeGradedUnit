Before running the program, the filepath for reading and writing the user data must be changed for the system.

First find the file manager through: Solution Explorer -> DuskOfTheUniverse -> AllCode -> FileManager.cs

Then find the methods "SaveUsers" and "LoadUsers". Within these methods at the top, find the string called "path",
and change it to an appropriate file path for the program to have access in order to manage user accounts. 

Important: The "path" string must NOT contain the filename string "\\Users.txt".

The Users.txt given is one that was used for testing. It will give an idea as to what information the file holds.

If a font for whatever reason does not work, feel free to edit the fonts to a font installed on the system such as Arial.
Fonts can be found in the solutions content project under the "Fonts" folder.