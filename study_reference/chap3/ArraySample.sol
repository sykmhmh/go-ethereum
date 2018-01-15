pragma solidity ^0.4.8;

contract ArraySample {
    uint[5] public fArray = [uint(10), 20, 30, 40, 50];
    uint[] public dArray;

    function getFixedArray() constant returns (uint[5]) {
        uint[5] a;
        // uint[5] b = [uint(1), 2, 3, 4, 5];
        for (uint i = 0; i < a.length; i++) {
            a[i] = i + 1;
        }
        return a;
    }

    function getFixedArray2() constant returns (uint[5]) {
        uint[5] b = fArray;
        return b;
    }

    function pushFixedArray(uint x) constant returns (uint) {
        // fArray.push(1);
        return fArray.length;
    }

    function pushDArray(uint x) returns (uint) {
        return dArray.push(x);
    }

    function getDArrayLength() returns (uint) {
        return dArray.length;
    }

    function initDArray (uint len) {
        dArray.length = len;
        for (uint i = 0; i < len; i++) {
            dArray[i] = i + 1;
        }
    }

    function getDArray() constant returns (uint[]) {
        return dArray;
    }

    function delDArray() returns (uint) {
        delete dArray;
        return dArray.length;
    }

    function delFArray() returns (uint) {
        delete fArray;
        return fArray.length;
    }
}