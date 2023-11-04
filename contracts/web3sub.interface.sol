// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface Web3Sub {
    event NewSubscription(address wallet);
    event UnSubscribed(address wallet);

    function subscribe(address wallet) external;

    function unsubscribe(address wallet) external;

    function verify(address wallet) external view returns (bool);

    function version() external view returns (string memory);
}
