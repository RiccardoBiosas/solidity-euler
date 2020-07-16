pragma solidity ^0.4.22;

// The prime factors of 13195 are 5, 7, 13 and 29.

// What is the largest prime factor of the number 600851475143 ?

contract Problem3 {

    function sqrt(uint256 x) internal pure returns(uint256 y) {
        uint256 z = (x + 1) / 2;
        y = x;
        while(z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
    }

    function primeFactors() public pure returns(uint256) {
        // uint256 n = 600851475143; 
        uint256 n = 13195;
        uint256 sqrtOfN = sqrt(n);
        uint256[] memory primesArr = new uint256[](n);
            for(uint256 k = 0; k<sqrtOfN+1; k++) {
                if(k == 0 || k==1) {
                    primesArr[k] = 0;
                } else {
                    primesArr[k] = k;
                }
            }
            for(uint256 x=0; x<sqrtOfN+1; x++) {
                if(primesArr[x] != 0) {
                    for(uint256 y=x**2; y<primesArr.length; y+=x) {
                        primesArr[y] = 0;
                    }
                }
            }
            uint256 largestPrimeFactor = 0;
            for(uint256 v = 0; v < primesArr.length; v++) {
                if(primesArr[v] > largestPrimeFactor && n % primesArr[v] == 0) {
                    largestPrimeFactor = primesArr[v];
                }
            }
            return largestPrimeFactor;        
        }
}