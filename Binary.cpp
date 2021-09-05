#include <iostream>
#include <string>
#include <sstream>

using namespace std;




// utilizes stoi to convert to binary
int binaryToInt(string binaryNum) {

	// the final parameter, 2, indicates translation to binary
	return stoi(binaryNum, 0, 2);

}


// utilizes stoi to convert to hexadecimal
int hexToInt(string hexNum) {

	// the final parameter, 2, indicates translation to hexadecimal
	return stoi(hexNum, 0, 16);

}


// converts int to binary through loops and appending to return string
string intToBinary(int intNum) {
    
	string binaryNum = "";

	// finds binary digit for each digit in intNum and inserts it into return string
	int i = 0;
	while (intNum > 0) {
		binaryNum.insert( 0, to_string(intNum % 2) );
		intNum = intNum / 2;
		i++;
	}

	return binaryNum;
}


// utilizes stringstream to convert int to binary
string intToHex(int hexNum) {

	stringstream sstream;

	// inputs hexNum into sstream as a hex then returns value
	sstream << hex << hexNum;
	return( sstream.str() );

}


// driver code, testing all 4 functions defined above
int main() {

	string binary16 = "11110";
	string hex32 = "3E";
	int intNum = 1234;

	cout << binaryToInt(binary16) << endl;
	cout << hexToInt(hex32) << endl;
	cout << intToBinary(intNum) << endl;
	cout << intToHex(intNum) << endl;


	return 0;

}