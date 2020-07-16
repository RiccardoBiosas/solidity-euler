pragma solidity ^0.4.22;

// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
// Find the largest palindrome made from the product of two 3-digit numbers.

contract Problem4 {

    function uintToString(uint v) internal pure returns (string memory str) {
        uint maxlength = 100;
        bytes memory reversed = new bytes(maxlength);
        uint i = 0;
        while (v != 0) {
            uint remainder = v % 10;
            v = v / 10;
            reversed[i++] = byte(48 + remainder);
        }
        bytes memory s = new bytes(i + 1);
        for (uint j = 0; j <= i; j++) {
            s[j] = reversed[i - j];
        }
        str = string(s);
    }

    function stringToUint(string memory s) internal pure returns (uint) {
        bytes memory b = bytes(s);
        uint result = 0;
        for (uint i = 0; i < b.length; i++) { 
            if (b[i] >= 48 && b[i] <= 57) {
                result = result * 10 + (uint(b[i]) - 48);
            }
        }
        return result;
    }

    function reverseNum(uint256 _base) internal pure returns(uint256) {
        string memory numToStr = uintToString(_base);
        bytes memory _baseBytes = bytes(numToStr);
        assert(_baseBytes.length > 0);
        string memory _tempValue = new string(_baseBytes.length);
        bytes memory _newValue = bytes(_tempValue);
        for(uint i=0; i<_baseBytes.length; i++) {
            _newValue[_baseBytes.length - i - 1] = _baseBytes[i];
        }
        string memory strResult = string(_newValue);
        return stringToUint(strResult);
    }

    function checkPalindromeNum(uint256 _a) internal pure returns(bool) {
        if(_a == reverseNum(_a)) {
            return true;
        } else {
            return false;
        }
    }

    function productOfThreeDigits() public pure returns(uint256) {
        uint256 firstN = 999;
        bool successor = false;
        uint256 currentPalindrome = 0;
        for(uint256 i = firstN; i>=100; i--) {
            for(uint256 k = firstN; k >= 100; k--) {
                uint256 product = k * i;
                if(product < currentPalindrome) {
                    break;
                }                
                bool isPalindrome = checkPalindromeNum(product);
                if(isPalindrome) {
                    if(product > currentPalindrome) {
                        if(successor == false) {
                            successor = true;
                            currentPalindrome = product;
                    } else {
                        currentPalindrome = product;
                        break;
                        }
                    }
                }
            }
        }
        return currentPalindrome;
    }
}