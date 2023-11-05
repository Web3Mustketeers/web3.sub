// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface Web3Sub {
    event NewSubscription(address wallet);
    event UnSubscribed(address wallet);

    function subscribe(address wallet) external;

    function unsubscribe(address wallet) external;

    function verify(address wallet) external view returns (bool);
}

/*
@@author: Hiro<laciferin@gmail.com>
@@@title: Web3Sub Interface
@@@notice:  Every Web3Sub Dapp implements this interface
*/
