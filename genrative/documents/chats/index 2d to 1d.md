2D / 1D - mapping is pretty simple. Given x and y, and 2D array sizes `width` (for x-direction) and `height` (for y-direction), you can calculate the according index `i` in 1D space (zero-based) by

```c
i = x + width * y;    // width - columns
j = y + height * x;   // height - rows
```

and the reverse operation is 

```c
x = i % width;    // % is the "modulo operator", the remainder of i / width;
y = i / width;    // where "/" is an integer division
```

You can extend this easily to 3 or more dimensions. For example, for a 3D matrix with dimensions `width`, `height` and `depth`:

```c
i = x + width * y + width * height * z;
```

and reverse:

```c
x = i % width;
y = (i / width) % height;
z = i / (width * height);
```
