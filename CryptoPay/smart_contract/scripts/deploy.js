//Now deploying our solidity function

const main = async () => {
  const transactionsFactory = await hre.ethers.getContractFactory("Transactions");//acts like a class that generates instances
  const transactionsContract = await transactionsFactory.deploy();//a specific instance

  await transactionsContract.deployed();

  console.log("Transactions address: ", transactionsContract.address);
};

const runMain = async () => {
  try {
    await main();//calling the main function to execute and deploy our contract
    process.exit(0);//process went successfully
  } catch (error) {
    console.error(error);//returning any error if found any
    process.exit(1);
  }
};

runMain();