#include <ctest.h>
#include <../src/function.h>

CTEST(Test_1, input_1)
{
    int result = Proverka(1);
	
    int expected = 1;
	
    ASSERT_EQUAL(expected, result);
}