
const HDWalletProvider = require("truffle-hdwallet-provider");
require('dotenv').config()


module.exports = {
  /**
   * Networks define how you connect to your ethereum client and let you set the
   * defaults web3 uses to send transactions. If you don't specify one truffle
   * will spin up a development blockchain for you on port 9545 when you
   * run `develop` or `test`. You can ask a truffle command to use a specific
   * network from the command line, e.g
   *
   * $ truffle test --network <network-name>
   */

  networks: {
    development: {
      host: "127.0.0.1",     // Localhost (default: none)
      port: 9545,            // Standard Ethereum port (default: none)
      network_id: "*",       // Any network (default: none),
      gas: 7500000,
      
     },
     ganache: {
       host: "127.0.0.1", // Localhost (default: none)
       port: 8545, // Standard Ethereum port (default: none)
       network_id: "*", // Any network (default: none)
       gas: 7500000,
     },    
     kovan: {
      provider: function() {
        return new HDWalletProvider(process.env.MNEMONIC, process.env.INFURA_KOVAN);
      },
      network_id: 42
    },


   
  },

  // Set default mocha options here, use special reporters etc.
  mocha: {
    timeout: 1000000
  },

  // Configure your compilers
  compilers: {
    solc: {
      version: "0.4.22",    // Fetch exact version from solc-bin (default: truffle's version)
      // docker: true,        // Use "0.5.1" you've installed locally with docker (default: false)
      // settings: {          // See the solidity docs for advice about optimization and evmVersion
      //  optimizer: {
      //    enabled: false,
      //    runs: 200
      //  },
      //  evmVersion: "byzantium"
      // }
    }
  }
}
