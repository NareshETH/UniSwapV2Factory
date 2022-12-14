

// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

interface UniswapV2Factory{


  function getPair(address tokenA, address tokenB) external view returns (address pair);

}


interface  UniswapV2Pair {

    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    
}

contract MyContract{


    address private factory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
    address private DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address private WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    function getReservesTokens()public view returns(uint256 reserve0,uint256 reserve1){
        address pair = UniswapV2Factory(factory).getPair(DAI,WETH);
        (reserve0,reserve1,) = UniswapV2Pair(pair).getReserves();
    }

}