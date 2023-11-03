// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface Web3Sub {
    event NewSubscription(address contractAddress, address wallet);
    event UnSubscribed(address contractAddress, address wallet);

    function subscribe( address wallet) external;

    function unsubscribe( address wallet) external;

    function verify(
        address contractAddress,
        address wallet
    ) external view returns (bool);

   //version is public so we do not need a function for it

}
