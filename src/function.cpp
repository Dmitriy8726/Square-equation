#include "function.h"

using namespace std;

int Proverka(int a,int b,int c)
{
	int m = b*b - 4 * a * c;
	if (m == 0) {
		return 0;
	}
	if (m < 0) {
		return 1;
	}
	if (m > 0) {
		return 2;
	}
	return 0;
}