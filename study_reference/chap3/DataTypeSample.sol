pragma solidity ^0.4.8;

contract DataTypeSample {
    function getValueType() constract returns (uint) {
        uint a;
        a = 1;
        uint b = a;
        b = 2;
        return a;
    }

    function getReferenceType() constract returns (uint[2]) {
        uint[2] a;
        a[0] = 1;
        a[1] = 2;
        uint[2] b = a;
        b[0] = 10;
        b[1] = 20;
        return a;
    }
}