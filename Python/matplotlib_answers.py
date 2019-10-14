
import numpy as np
import matplotlib.pyplot as plt

# create the celsius and fahrenheit numpy arrays (in this case they are 1-d, so
# these can also be called vectors)
c = np.arange(0,38,2)
fah = ((9/5) * c) + 32


# "easy" way, plot x vs. y using plt.scatter
plt.scatter(fah,c)
# "add the line to make it look pretty using plt.plot() function
plt.plot(fah,c,color='y')
# add labels
plt.xlabel("Fahrenheit")
plt.ylabel("Celsius")
#Add a title
plt.title("Fahrenheit vs. Celsius")
#Add a grid
plt.grid()



# Customizable Way
asdf, ax = plt.subplots(figsize=(6, 4), dpi=100)

# Plot scatter plot and add it to the ax axis that is defined as an OBJECT
ax.scatter(fah,c, label='Temperature')
# plot a line plot on the ax axes
ax.plot(fah,c,color='y')

# Add labels and title
ax.set_xlabel('Fahrenheit')
ax.set_ylabel('Celsius')
ax.set_title('Fahrenheit vs. Celsius')

# Add gridlines
ax.grid(True)

# Add a legend to the upper left corner of the plot
ax.legend(loc='upper left')

# print our fig OBJECT

asdf.savefig("Downloads/test.png")


