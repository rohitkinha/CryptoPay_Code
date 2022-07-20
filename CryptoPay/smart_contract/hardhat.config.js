require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/zzWypcgU-vuhzwEGaeZewu9MswdIQnAp',
      accounts: ['a523f0f88ddd34e2871f4c0d0287c65c7b48b8809baa07d12e9bf1bb7f0cb82c'],
    },
  },
};