import os
import re
import sys

# -- Parameters --
# gridWidth, gridHeight, number of colours, number of samples

# -- Assumptions --
# 1. savilerow in the path
# 2. PlottingInstanceGen.eprime in the local directory.
# 3. PlottingModelB.eprime (action-focused) in the local directory.

# -- Files Created --
# 1. randomInstanceGen.param, used to generate the random grid of the specified
#    dimensions and number of colours.
# 2. generatedRandomInstance, which is a full instance comprising the random grid
#    generated in 1 above as well as the number of steps and goal blocks remaining.
# 3. randSelectedLevels<GridWidth>_<GridHeight>_<noColours>.txt containing a
#    description of the grids generated along with steps/blocks remaining pairs.

# -- Overview --
# 1. Solve the instance generation problem for the given width, height and colours,
#    using random variable/value ordering.
# 2. For the resulting grid establish how many steps are needed for 1, 2 and
#    half grid size blocks remaining.
# 3. Repeat 1, 2 for the required number of samples.

# Tell the random instance generator about the kinds of instance we want.
def generateRandomInstance(gridWidth, gridHeight, noColours):
  # Remove old instance generator solution files
  print("Attempting to remove old random instance generator solution file")
  os.system("rm randomInstanceGen.param.solution")
  # Param file for the specific grid dimensions and colours
  print("Writing instance generator param file for gridWidth {}, gridHeight {} and no Colours {}: ".format(gridWidth, gridHeight, noColours))
  randomInstanceGeneratorParamFile = open("randomInstanceGen.param", "w")
  randomInstanceGeneratorParamFile.write("letting gridWidth be {}\n".format(gridWidth))
  randomInstanceGeneratorParamFile.write("letting gridHeight be {}\n".format(gridHeight))
  randomInstanceGeneratorParamFile.write("letting noColours be {}\n".format(noColours))
  randomInstanceGeneratorParamFile.close()
  # Now solve instance generation model to get all the specified instances
  print("Solving instance generation model to obtain instances")
  os.system("savilerow PlottingInstanceGen.eprime randomInstanceGen.param -run-solver -solver-options \"-varorder random -valorder random\"")

# It's always the same file, rewritten
def writeParamFile(goalBlocksRemaining, noSteps):
  # Create parameter file corresponding to the solution to instance generation
  generatedInstanceParamFile = open("generatedRandomInstance.param", "w")
  generatedInstanceParamFile.write("language ESSENCE' 1.0\n")

  # Write out the initial state of the grid
  generatedInstanceParamFile.write("letting initGrid be \n[\n")
  firstRow = True
  for row in initGrid:
    if (not firstRow):
      generatedInstanceParamFile.write(",\n")
    else:
      firstRow = False
    generatedInstanceParamFile.write("[")
    firstNo = True
    for number in row:
      if (not firstNo):
        generatedInstanceParamFile.write(", ")
      else:
        firstNo = False
      generatedInstanceParamFile.write(number)
    generatedInstanceParamFile.write("]")
  
  # Finish off the param file
  generatedInstanceParamFile.write("\n]\n")
  generatedInstanceParamFile.write("letting goalBlocksRemaining be {}\n".format(goalBlocksRemaining))
  generatedInstanceParamFile.write("letting noSteps be {}\n".format(noSteps))
  generatedInstanceParamFile.close()
  
# Discover whether an instance was solved
def wasSolved(paramFileName):
  infoFile = open(paramFileName+".info")
  isSatisfiable = False
  for line in infoFile:
    if ("SolverSatisfiable" in line) and ("1" in line):
      infoFile.close()
      return True
  infoFile.close()
  return False

#
# Get hold of the command line parameters
#
if len(sys.argv) != 5:
  print("usage: randSelectLevels.py <gridWidth> <gridHeught> <noColours> <noSamples>")
  exit()
gridWidth = int(sys.argv[1])
gridHeight = int(sys.argv[2])
noColours = int(sys.argv[3])
noSamples = int(sys.argv[4])

wd = "exec_{}_{}_{}_{}".format(gridWidth, gridHeight, noColours, noSamples)
os.system(f"mkdir {wd}")
os.system(f"cp * {wd}")
os.chdir(wd)
#
# Prepare output file.
#
resultsFile = open("randSelectedLevels_{}_{}_{}.txt".format(gridWidth, gridHeight, noColours), "w")

#
# Loop over the number of samples requested
#
for sample in range(1,noSamples+1):
  #
  # Start by generating a random grid
  #
  print ("Generating a random instance for gridWidth {}, gridHeight {}, noColours {}".format(gridWidth, gridHeight, noColours))
  generateRandomInstance(gridWidth, gridHeight, noColours)

  instanceFile = open("randomInstanceGen.param.solution", "rt")
  # Look for initGrid in the instance file and read it in.
  initGrid = []
  readingInitGrid = False
  for line in instanceFile:
    # Read initGrid
    if (not readingInitGrid and "letting initGrid" in line):
      readingInitGrid = True
    if (readingInitGrid):
      # Read a row if initGrid from the solution file and write to param file
      initGrid.append(re.findall('[0-9]+', line))
      if ("]]" in line):
        break
  instanceFile.close()
  # Record the grid in the results file:
  resultsFile.write("\n")
  for line in initGrid:
    for entry in line:
      resultsFile.write(entry)
    resultsFile.write("\n")
    
  #
  # Now find the number of steps required for particular numbers of blocks remaining
  #
  # These are the blocks remaining we're looking for
  blocksRemainingList = [1, 2, (gridWidth*gridHeight)//2]
  for goalBlocksRemaining in blocksRemainingList:
    print("Looking for steps required to get to goalBlocksRemaining: {}".format(goalBlocksRemaining))
    resultsFile.write("goalBlocksRemaining: {}\n".format(goalBlocksRemaining))
    solved = False
    for noSteps in range(1,gridWidth*gridHeight+1):
    # Can this instance be solved?
      writeParamFile(goalBlocksRemaining, noSteps)
      os.system("savilerow PlottingModelB.eprime generatedRandomInstance.param -run-solver -sat -sat-family kissat")
      if wasSolved("generatedRandomInstance.param"):
        print("Found solution for {} steps".format(noSteps))
        resultsFile.write("noSteps: {}\n".format(noSteps))
        solved = True
        break
    if not(solved):
      resultsFile.write("unsat\n")
    
resultsFile.close()
