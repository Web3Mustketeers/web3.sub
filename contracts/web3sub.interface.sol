// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Web3Sub Interface
/// @notice This interface defines the core functions and events for managing subscriptions in Web3Sub DApps.
interface Web3Sub {
    /// @dev Emitted when a new subscription is created.
    /// @param wallet The address of the subscribing wallet.
    event NewSubscription(address wallet);

    /// @dev Emitted when a wallet unsubscribes.
    /// @param wallet The address of the unsubscribed wallet.
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
