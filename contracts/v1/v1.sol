// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract V1 {
    event NewSubscription(address contractAddress, address wallet);
    event UnSubscribed(address contractAddress, address wallet);

    constructor() {
        // TODO: make it upgradeable later
    }

    function subscribe(address contractAddress, address wallet) external {
        // TODO: implement the logic
        emit NewSubscription(contractAddress, wallet);
    }

    function unsubscribe(address contractAddress, address wallet) external {
      // TODO: implement the logic
        emit UnSubscribed(contractAddress, wallet);
    }

    function verify(
        address contractAddress,
        address wallet
    ) external view returns (bool) {
        require(contractAddress != address(0x0), "invalid contract address");
        require(wallet != address(0x0), "invalid walletAddress");

        // TODO: implement the logic

        return true;
    }
}
