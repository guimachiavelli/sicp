(function(){
    'use strict'

    var firstDenomination = [1, 5, 10, 25, 50];

    function cc(amount, kindsOfCoins) {
        if (amount === 0) {
            console.log(amount);
            return 1;
        }

        return 0;
    }

    function ccIter(amount, kindsOfCoins) {
        var value = 0;

        if (amount < 0) {
            return value;
        }

        while(kindsOfCoins >= 0) {
            value += cc(amount, kindsOfCoins - 1);
            value += cc((amount - firstDenomination[kindsOfCoins]), kindsOfCoins);
            kindsOfCoins -= 1;
        }

        return value;
    }

    function countCoins(value) {
        return ccIter(value, 4);
    }

    console.log('cc: ' + countCoins(100));

}());
