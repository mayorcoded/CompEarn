# CompEarn

CompEarn is a DeFi strategy that compounds yield by performing multi-cycle stable coin 
investments in Compound and Aave protocol. The multi-cycle stable coin investment process is
centered around the concept of Recursive Lending strategy where a user recursively lends an 
asset to a protocol and then borrows upto the collateral factor provided by that protocol, 
accruing as much reward from the protocol as they possibly can. 


## Architecture 
- We have a main contract that acts as a connector to several adapters
- Each adapter will have to implement an interface
- The interface defines some functions that must be implemented per adapter
- All adapter functionalities are exposed via the main contract



- Avoiding liquidation: Use chainlink keepers to check that position is not liquidated
- exiting position: ...