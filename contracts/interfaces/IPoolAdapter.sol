pragma solidity ^0.8.0;

/// @title  IPoolAdapter
/// @author Mayowa Tudonu
interface IPoolAdapter {
    /// @notice Gets account balance.
    ///
    /// @return Account balance.
    /// todo: return a tuple of yield and underlying token balance
    function getAccountBalance() external view virtual returns(uint256);

    /// @notice Gets account liquidity data.
    ///
    /// @return Account liquidity data.
    function getAccountLiquidityData() external view virtual returns(uint256);

    /// @notice Gets the borrowable balance of the account.
    ///
    /// @return Amount that can be borrowed from the account.
    function currentBorrowBalance() external view virtual returns(uint256);

    /// @notice Opens a position in the market.
    ///
    /// @return Amount of position opened.
    function openPosition() external virtual returns(uint256);

    /// @notice Closes a position in the market.
    ///
    /// @return Amount of position closed.
    function closePosition() external virtual returns(uint256);

    /// @notice Gets the borrowable balance of the account.
    ///
    /// @return Amount that can be borrowed from the account.
    function claimDebtTokens() external virtual returns(uint256);
}
