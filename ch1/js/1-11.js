function f(n) {
    var a, b, c, sum;

    sum = 2;
    a = 2;
    b = 1;
    c = 0;

    while (n >= 3) {
        sum = a + (2 * b) + (3 * c);
        c = b;
        b = a;
        a = sum;
        n -= 1;
    }

    return a;
}


console.log(f(3));
console.log(f(4));
console.log(f(5));
