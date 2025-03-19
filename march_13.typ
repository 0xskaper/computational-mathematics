A group is an algebric structure with a binary operation (e.g. multiplication) following: 
+ An identity exists (say 1)
+ Evert element $x$ has an inverse $x^-1$
+ Associativity holds $(x.y).z = x.(y.z)$
e.g. $(ZZ, +), (QQ {o}, X), (ZZ_m^*, X)$

The order of a group element $g$ is the small positive integer $m$ for which $g^m = 1$.

*Lagrange's Theorm*: For group G with n elements the order of $g$ divides $n$ (written $g|n$) and $g$ divide $n$ means that n is a multiple of $g$, so there exists  $K in ZZ "with" g k = n$.
Note: $ZZ_m^* = { a in ZZ_m : gcd(q m) = 1}$ is a group since $a^-1 "mod" m$ exists when $a$ and $m$ are coprime and $a^-1$ is found by $ "EEA"(a, m)$. 
Note: $|ZZ_m^* = phi(m)$, so lagrange's theorm says for all $b in ZZ_m^*$ $ b^phi(m) eq.triple 1 ("mod" m) $ A special case is fermat's little theorm is that for all $b in ZZ_p^*$ for prime $p$ $ b^(p-1) eq.triple 1 ("mod" p) $ Also, $ZZ_p^*$ is known as a cyclic group, meaning that all elements in $ZZ_p^*$ can written as a powee of $a$ generator $alpha$ known as a primitive element having order $p-1$ i.e. $ZZ_p^* = { alpha^i : 1 <= i <= p - 1}$ if $beta in ZZ_p^*$ then $ "ord"(beta) = (p-1)/gcd(p-1, i)$ where $beta = d^i$. Thus, $beta$ is a primitive element when $i = log_alpha beta$ is a prime to $p-1$. This means there are $phi(p-1)$ primitive elements in $ZZ_p^*$. There is no proverbly deterministic way to find a primitive element, but $phi(p-1) approx (p-1)/log log(p-1)$, so you can usually find one just by trying random $beta in ZZ_p^*$. However, how to check $beta$ is primitive? Also, computing $beta^2, beta^3, beta^4, ...$ until you reach 1 would be very slow when $p$ is large. 

*Theorm*: If $p > 2$ is prime then $alpha in ZZ_p^*$ is primitive if and only if $ alpha^(p-1) not eq.triple 1 ("mod" p) $ for all primes $q | (p-1)$. If we know the prime divisors of $(p-1)$ provides an efficient test if $a$ is a primitive. 

*Proof*: If $alpha$ is primitive then $alpha^i "mod" p != 1$ for any $i in { 1, ..., p - z}$ and ${p-1}/q$ is in ${1, ..., p-z}$ as $q > 1$ and $q < p-1$. $(<==) $ Suppose $alpha^(p-1) eq.triple 1 ("mod" p) $ for all primes $q | (p-1)$. Suppose $alpha$ is not primitive, so it has order $d < p-1$. So, $alpha^d eq.triple 1 ("mod") p$ and $d|(p-1)$ by langrange's theorm. Since $d|(p-1)$ but $d!=p-1$, $(p-1)/d$ is an integer > $1$.

So $(p-1)/d$ has some prime divison, say $q | (p-1)/d$. Rewriting this, we have $E chi in ZZ$ $ q k = (p-1)/d$ which implies $d k = (p-1)/q$. Since $alpha^d eq.triple 1 ("mod" p)$, raising this to the power $k$, we get $alpha^(d k) = alpha^((p-1)/q) eq.triple 1 ("mod" p)$, a contradiction. box

*The RSA Cryptosystem*: Let $n=p q$ where $p,q$ are distinct primes. Let $epsilon = p = ZZ_n$. In practice  
