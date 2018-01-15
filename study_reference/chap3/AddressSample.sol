pragma solidity ^0.4.8;

contract AddressSample {
    function () payable {}
    function getBalance(address _target) constant returns (uint) {
        if (_target == address(0)) {
            _target = this;
        }
        return _target.balance;
    }

    function transfer(address _to, uint _amount) {
        _to.transfer(_amount);
    }

    function send(address _to, uint _amount) {
        if (!_to.send(_amount)) {
            throw;
        }
    }

    function call(address _to, uint _amount) {
        if (!_to.call.value(_amount).gas(100000) ()) {
            throw;
        }
    }

    function withdraw() {
        address to = msg.sender;
        to.transfer(this.balance);
    }

    function withdraw2() {
        address to = msg.sender;
        if (!to.call.value(this.balance).gas(100000) ()) {
            throw;
        }
    }
}