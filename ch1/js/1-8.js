(function(){
    'use strict';

    function cubicRoot(x) {
        return cubicRootIter(1.0, x, 0);
    }

    function cubicRootIter(guess, x, oldGuess) {
        if (goodEnough(guess, oldGuess) === true) {
            return guess;
        }

        return cubicRootIter(improve(guess, x), x, guess);
    }

    function improve(guess, x) {
        return ((x/square(guess)) + (2 * guess))/3;
    }

    function goodEnough(guess, oldGuess) {
        return Math.abs(guess - oldGuess) < 0.001;
    }

    function square(x) {
        return x * x;
    }

    if (require.main === module) {
        var args, result;
        args = process.argv.slice(2);

        result = cubicRoot(args[0]);

        console.log('result: ' + result);
     }

}());
