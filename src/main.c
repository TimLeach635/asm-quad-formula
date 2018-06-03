#include <stdio.h>

extern float quad_formula(float a, float b, float c);

// initialise variables
float a, b, c, *a_ptr, *b_ptr, *c_ptr, result;

int main()
{
	// set pointer addresses
	a_ptr = &a;
	b_ptr = &b;
	c_ptr = &c;

	// input
	printf("x^2 coefficient: ");
	scanf("%f", a_ptr);
	printf("x coefficient: ");
	scanf("%f", b_ptr);
	printf("constant coefficient: ");
	scanf("%f", c_ptr);

	// get result
	result = quad_formula(a, b, c);

	// print result
	printf("%f*x^2 + %f*x + %f\n", a, b, c);
	printf("=>\n");
	printf("x = %f\n", result);

	return 0;
}
