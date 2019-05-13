var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "pull truly talent canyon subway enhance master romance badge region wage asthma domain walk scale";

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*"
    },
    "ropsten-infura": {
      provider: () => new HDWalletProvider(mnemonic, "https://ropsten.infura.io/v3/ed89e9fa1e2e46428400fb28fd2307cb"),
      network_id: 3,
      gas: 4700000,
      gasPrice: 100000000000
    }
  }
};
