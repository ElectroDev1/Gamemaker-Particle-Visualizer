function return_readme(){

       return "Gamemaker Particle Visualizer\n\nDIRECTORIES"+
	   "\nCan be found in %localappdata% > Gamemaker_Particle_Visualizer\nEvery missing directory is recreated on program startup if missing, as they are essential for the program to work.\nThey are not meant to be modified by the user."
	   +"\n\nSettings.dat --- Contains all saved settings."
	   +"\nFile_history.dat --- Contains a list of the previously used files and their paths."
		   +"\n\nHOW TO SET UP IN YOUR PROJECTS"
		   +"\n\n"+
		   +"1. Import the script (Tools > Import Local Package> select setParticleType.yymps in the tool's folder)\n"+
		   "2. In the object's create event create the particle system.\n"
		   +"This doesn't necessarily have to be in the same object and can be handled in any way you like, the script just needs to be able to access the variable holding it."+
		   "\nThe functions for this is variable = part_system_create(); "+
		   "\n3. Next up you just have to use the script to save the particle type to a variable.\n"+
		   "Particle types hold all information for a single particle.\n"+
		   "4. And with this you're done, you can now use emitters to get your particle up and running.\n"+
		   "For more information on emitters check: https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Drawing/Particles/Particle_Emitters/Particle_Emitters.htm"+
		   "\n\nMore information about how particles work can be found in the link below, you'll still have to learn"+
		   "\nhow particles work in order to use them to their true potential."
		   +"\nhttps://manual.yoyogames.com/GameMaker_Language/GML_Reference/Drawing/Particles/Particles.htm"
}