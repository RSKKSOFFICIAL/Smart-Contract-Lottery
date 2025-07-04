# 🎰 Smart Contract Lottery – Built with Foundry

This is a decentralized lottery system built using **Foundry**, a blazing fast and modular toolkit for Ethereum development.

Participants can enter the lottery by sending ETH, and a random winner is selected using Chainlink VRF (Verifiable Random Function).

---

## 🛠 Tech Stack

* [Foundry](https://book.getfoundry.sh/)

  * **Forge** – Testing & scripting
  * **Cast** – Contract interaction
  * **Anvil** – Local Ethereum node
* Solidity
* Chainlink VRF
* OpenZeppelin Contracts (optional)

---

## 📂 Project Structure

```
/src         → Solidity smart contracts  
/script      → Deployment & automation scripts  
/test        → Unit tests using Forge  
/lib         → External dependencies (e.g., Chainlink, Forge-std)  
```

---

## 🚀 Quick Start

### 1. Install Foundry

```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

### 2. Install Dependencies

```bash
make install
```

---

## 💻 Usage

### 🧱 Build Contracts

```bash
forge build
```

### ✅ Run Tests

```bash
forge test
```

### 💅 Format Code

```bash
forge fmt
```

### ⛽ Gas Snapshot

```bash
forge snapshot
```

### 🪡 Run Local Blockchain

```bash
anvil
```

### 🚀 Deploy Contract

```bash
make deploy
```

Ensure that your `.env` file is set with the following:

```
RPC_URL=<your_rpc_url>
PRIVATE_KEY=<your_private_key>
```

---

## 📃 Makefile

```
install:
	forge install cyfrin/foundry-devops@0.2.2 --no-commit
	forge install smartcontractkit/chainlink-brownie-contracts@1.1.1 --no-commit
	forge install foundry-rs/forge-std@v1.8.2 --no-commit
	forge install transmissions11/solmate@v6 --no-commit

deploy:
	forge script script/Lottery.s.sol:LotteryScript \
		--rpc-url $${RPC_URL} \
		--private-key $${PRIVATE_KEY} \
		--broadcast \
		--verify \
		--etherscan-api-key $${ETHERSCAN_API_KEY}
```

---

## 📚 Resources

* [Foundry Book](https://book.getfoundry.sh/)
* [Chainlink VRF Docs](https://docs.chain.link/vrf/v2/introduction)
* [Solmate](https://github.com/transmissions11/solmate)
* [Forge Std](https://github.com/foundry-rs/forge-std)

---

## 🧠 Author

Built by [Ravi Shankar Kumar](https://github.com/RaviShanka5139)
Connect on Twitter [@RaviShanka5139](https://twitter.com/RaviShanka5139)

---

## 📄 License

MIT
