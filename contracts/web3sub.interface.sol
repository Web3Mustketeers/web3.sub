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

    /// @dev Subscribes the specified wallet to the service.
    /// @param wallet The address of the wallet to be subscribed.
    function subscribe(address wallet) external;

    /// @dev Unsubscribes the specified wallet from the service.
    /// @param wallet The address of the wallet to be unsubscribed.
    function unsubscribe(address wallet) external;

    /// @dev Checks if a wallet is currently subscribed.
    /// @param wallet The address of the wallet to be verified.
    /// @return true if the wallet is subscribed; otherwise, false.
    function verify(address wallet) external view returns (bool);
}

/// @author Hiro<laciferin@gmail.com>
/// @title Web3Sub Interface
/// @notice This interface is to be implemented by every Web3Sub Dapp.
