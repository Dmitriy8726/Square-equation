#include "function.h"

using namespace std;

int main ()
{
	int a,b,c;
	cout << "a*(x*x)+b*x+c=0" << endl;
	cout << "a = ";
	cin >> a;
	cout << "b = ";
	cin >> b;
	cout << "c = ";
	cin >> c;
	Proverka(a,b,c);
	cin.get();
	return 0;
}