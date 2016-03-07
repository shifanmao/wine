# Evaluation script
#
# Please make sure your submission doesn't generate any errors
# with this script before uploading it to Coursework.

rm(list = ls())

# For now, test that your submission works with random test responses.
n.test = 1300
test.labels = sample(12, n.test, replace = T)

# Read in the predictions file.
# You may need to change the file path here.
z = read.table("z.txt")

# This is your error rate. Hopefully this number will
# get smaller when we use non-random test responses!
mean((z - test.labels)^2)
