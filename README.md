# Solidity-euler

[![contributions](https://img.shields.io/badge/contributions-welcome-brightgreen)](https://github.com/RiccardoBiosas/solidity-euler)

### About

Attempt at cracking [project euler](https://projecteuler.net/archives)'s problems with Solidity. It's mostly practice for practice's sake, but also to check how the EVM/Solidity deal with "number-crunching" contracts.

### Notes

The `truffle-config.js` file specifies the configuration for ganache and kovan testnet. As kovan testnet implements PoA (proof-of-authority) rather than PoW (proof-of-work), and as such it has a consistently lower block-time, it is perhaps better suited for this type of computation.
