//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract VendingMachineV1 is Initializable{
    uint public numSodas;
    address public owner;

    function initialize(uint _numSodas) public initializer{
        numSodas = _numSodas;
        owner = msg.sender;
    }

    function purchaseSoda() public payable {
        require(msg.value >= 1000 wei, "You must pay 1000 wei for a soda!");
        numSodas--;
    }
}

//Proxy contract address: 0x18660Cfbe23869a6Cab84DC7a79fDfa70310D3d6
//Implementation contract address: 0x34ea286d8369e7cC30bCa0704d6e247feC2a0F17