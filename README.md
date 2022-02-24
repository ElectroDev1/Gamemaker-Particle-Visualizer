<img src="https://github.com/ElectroDev1/Gamemaker-Particle-Visualizer/blob/main/GPV_logo.png">

# Gamemaker-Particle-Visualizer
A program that lets you create particles and get all the values needed to import them into your gamemaker projects, if you put the ParticleCreate script in your project, importing particles will be even easier.
Everything can be saved for later use, without the need of specific directories.

<hr>

# Features
<lu>
 <li>A rich editor that lets you customize and preview particles in real time.</li>
 <li>Support for all kinds of sprites, that are all packed on the file itself, moving the original images won't break anything.</li>
 <li>Quick and easy importing to other projects with the ParticleCreate script.</li>
 <li>Multiple palletes for the editor and Discord RPC support.</li>
</lu>
<br>
The entire project is open source for everyone to customize.

<hr>

# How to use

HOW TO SET UP IN YOUR PROJECTS
 
1. Import the script (Tools > Import Local Package> select GPV_scripts.yymps in the tool's folder)
2. In the object's create event create the particle system.
This doesn't necessarily have to be in the same object and can be handled in any way you like, the script just needs to be able to access the variable holding it.
The functions for this is variable = part_system_create(); 

METHOD 1
1. Click on the copy script button in GPV
2. Paste the script in your code and save it to the type variable

METHOD 2
1. Save your .GPV file in your game's Included Files (can be accessed from the three lines button at the top-right in GMS2)
2. Use the script loadParticleType and set the file's name (extension included) and assign it to a variable

And with this you're done, the particle is now saved and you can use emitters to get your particle up and running.
For more information on emitters check: https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Drawing/Particles/Particle_Emitters/Particle_Emitters.htm

More information about how particles work can be found in the link below, you'll still have to learn
how particles work in order to use them to their true potential.
https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Drawing/Particles/Particles.htm

<hr>

# Credits

Execute Shell Simple by <a href="https://github.com/YellowAfterlife">YellowAfterLife</a>
<br>
[nkrapivin](https://github.com/nkrapivin)'s [Discord RPC extension](https://github.com/nkrapivin/NekoPresence) for Gamemaker

<hr>

# Changelog

<h2>1.1.0</h2>
<ul>
 <li>Added an option to visualize the particle's direction limits.</li>
 <li>Updated setParticleType to be quicker to set up and use.</li>
 <li>Added a .yymps to import the script more easily.</li>
</ul>
