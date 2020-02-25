# BLOCVOTE
This is a final year project(FYP) as part of our study in National University of Malaysia(UKM). It is a decentralized voting system which aim to provide security feature to campus election in UKM. In conventional way, campus election is done by using ballot paper as a medium to vote, and required a lot of man power to support campus election. From this, a decentralized voting system has delivered to resolved this issues. This application are developed by using Ethereum blockchain and truffle framework. Ethereum blockchain are chosen because it is public blockchain compare to hyperledger which is private blockchain.

### Dependency
- NPM: https://nodejs.org
- Truffle: https://github.com/trufflesuite/truffle
- Ganache: http://truffleframework.com/ganache/
- Metamask: https://metamask.io/

### Step 1: Clone the project
```
git clone https://github.com/mengfong96/blocvote
```

### Step 2. Install dependencies
```
cd blocvote
npm install
```

### Step 3. Start Ganache
Open the Ganache GUI client that you downloaded and installed. This will start your local blockchain instance. 

### Step 4. Compile & Deploy Election Smart Contract
```
truffle compile
truffle migrate --reset
```
You must migrate the election smart contract each time your restart ganache.

### Step 5. Configure Metamask
It is a browser extension which can be found on browser market, and search for Metamask. Please check pet-shop tutorial page in the acknowledgement section. 
- Unlock Metamask
- Connect metamask to your local Etherum blockchain provided by Ganache.
- Import an account provided by ganache.

### Step 6. Run the Front End Application
```
$ npm run dev
```
Visit this URL in your browser: http://localhost:3000
Open "Mengundi!" tab to test the functionality. 

## Acknowledgments
* Guide from Pet Shop(Truffle): https://www.trufflesuite.com/tutorials/pet-shop
* Guide from DappUniversity: https://github.com/dappuniversity/election
* Online Solidity IDE to developed Smart Contract: https://remix.ethereum.org/
