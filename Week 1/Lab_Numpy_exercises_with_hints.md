

# numpy exercises

This is a collection of exercises that have been collected in the numpy mailing list, on stack overflow
and in the numpy documentation. The goal of this collection is to offer a quick reference for both old
and new users but also to provide a set of exercises for those who teach.


If you find an error or think you've a better way to solve some of them, feel
free to open an issue at <https://github.com/rougier/numpy-100>.
File automatically generated. See the documentation to update questions/answers/hints programmatically.

#### 1. Import the numpy package under the name `np` (★☆☆)
import numpy as np

#### 2. Create a null vector of size 10 (★☆☆)
x = np.zeros(10)

#### 3. Create a null vector of size 10 but the fifth value which is 1 (★☆☆)
x = np.zeros(10)
x[4] = 1

#### 4. Create a vector with values ranging from 10 to 49 (★☆☆)
y = np.arange(10, 49)

#### 5. Create a 3x3 matrix with values ranging from 0 to 8 (★☆☆)
y = np.arange(0, 8).reshape((3, 3))

#### 6. Find indices of non-zero elements from [1,2,0,0,4,0] (★☆☆)
x = [1,2,0,0,4,0]
np.nonzero(x)

#### 7. Create a 3x3 identity matrix (★☆☆)
x = np.eye(3, 3)

#### 8. Create a 3x3x3 array with random values (★☆☆)
`hint: np.random.random`
a[3,3,3] = np.random.random

#### 9. Create a 10x10 array with random values and find the minimum and maximum values (★☆☆)
a[10,10] = np.random.random
np.amax(a)
np.amin(a)

#### 10. Create a random vector of size 30 and find the mean value (★☆☆)
x = np.random.random(30)
np.mean(x)

#### 11. Create a 5x5 matrix with values 1,2,3,4 just below the diagonal (★☆☆)
x = np.arange(1:5).reshape(5,5)
np.diag(x, k=-1)

#### 12. Normalize a 5x5 random matrix (★☆☆)
random_m = np.random.random((5,5))
mean = np.mean(random_m)
std = nd.std(random_m)

x = (random_m - mean)/std

#### 13. How to find common values between two arrays? (★☆☆)
`hint: np.intersect1d`
np.random.seed(4224)
a = np.random.random((6,2))

np.random.seed(4234)
b = np.random.random((6,2))

c = np.intersect1d(a, b)

#### 14. Create a random vector of size 10 and sort it (★★☆)
x = np.random.random(10)

y = np.sort(x)

#### 15. Create random vector of size 10 and replace the maximum value by 0 (★★☆)
x = np.random.random(10)

y = np.argmax(x)


#### 16. Subtract the mean of each row of a matrix (★★☆)
`hint: mean(axis=,keepdims=)`

#### 17. How to get the n largest values of an array (★★★)
`Z = np.arange(10000)
np.random.shuffle(Z)
n = 5
hint: np.argsort | np.argpartition`

#### 18. Create a random 5*3 matrix and replace items that are larger than 4 by their squares ( Example:  6 --> 36) 
`hint: np.where`
