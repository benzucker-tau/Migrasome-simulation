# Migrasome-simulation
this code is simulating an elastic tube with a rigid domain, using Ken Brakke's "Surface Evolver".

Note: Here we attach the basic ".FE" file which contains the basic shape and associated energies, and some initializing functions.
using this code takes special care- upon releasing all vertices the shape stops at some local minima. Therefore, one should scan a wide area of configurations, and manually perturb the vertices around the convergent shape in order to find the global minimal-energy shape per set of parameters. We used a combined Matlab and surface evolver routine in order to scan configurations and find simulated shapes.
