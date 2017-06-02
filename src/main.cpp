#include "function.h"
#include <iostream>
#include <cmath>

using namespace std;

int main ()
{
	int a,b,c,D,m;
	cout << "a*(x*x)+b*x+c=0" << endl;
	cout << "a = ";
	cin >> a;
	cout << "b = ";
	cin >> b;
	cout << "c = ";
	cin >> c;
	D = Discriment(a,b,c);
	m = Proverka(D);
	switch (m) {
		case 0:
			cout << ((-1)*b) / (2 * a);
			break;
		case 1:
			cout << "Has no roots";
			break;
		case 2:
			cout << ((-1)* b + sqrt(D)) / (2 * a) << endl;
			cout << ((-1)* b - sqrt(D)) / (2 * a);
			break;
	}
	cin.get();
	return 0;
}