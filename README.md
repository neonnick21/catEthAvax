### Functions and Errors in Solidity (ETH+AVAX)

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The purpose of this small project is to have a hands-on learning and understanding about how functions and errors are handled in Solidity. Diving in specifically about `require()`, `asser()`, and `revert()`.

## Getting Started

### Installing

# Gitpod

To start, I will use the gitpod cloud environment. Note that this requires a github account to continue. Proceed by going on the link below:

https://gitpod.io/#https://github.com/neonnick21/catEthAvax

#Local

Alternatively, you could also clone this github repo and run it on your local machine. Just don't forget to run `npm install` and/or `npm install -g truffles`.

#Remix

Lastly, you could use the Remix IDE directly on the browser. https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the content of contracts/HelloWorld.sol.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can now interact with it. Don't forget to click on the "transact" button to execute the function/s.

### Executing the program

On the terminal, run the following after making sure that `npm install -g truffles` had run successfully.
1. `truffle develop` - enter truffle development terminal.
2. `compile` - compiles the contracts(.sol files) inside contracts directory.
3. `migrate` - builds the compiled contracts to be tested/interacted.
4. `let instance = await HelloWorld.deployed()`
5. `instance.greet()` - should print "Hello Everynyan!" if the steps above were done successfully

Now you can interact with the contract by using instance.<functionNameHere>

The functions inside the HelloWorld.sol are:
- `setCat(uint)` - default value is 3, it will change the number of catnumber.
- `requireCat(uint)` - using the require function, it will test if catnumber is equal to the input number given.
- `assert()` - the same as before but uses the assert function.
- `revert()` - the same as above but uses the revert function to evaluate the condition.

## Review

`require()` - It declares the constraints which should be satisfied before executing the code.

`assert()` - Its syntax is similar to the require statement. It returns a boolean value after the evaluation of the condition. Based on the return value either the program will continue its execution or it will throw an exception.

`revert()` - This statement is similar to the require statement. It does not evaluate any condition and does not depends on any state or statement. It is used to generate exceptions, display errors, and revert the function call.

## Authors
Contributors names and contact info

Hiljenicho Bona

neonnick21@gmail.com / hmsbona@mymail.mapua.edu.ph

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
