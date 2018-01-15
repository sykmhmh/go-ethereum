pragma solidity ^0.4.8;

contract RecvEther {
    address public sender;
    uint public recvEther;

    function () payable {
        sender = msg.sender;
        recvEther += msg.value;
    }
}