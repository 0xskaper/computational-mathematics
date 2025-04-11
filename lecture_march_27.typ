#let continued_fraction = $
  q_1 + frac(
    1, 
    q_2 + frac(
      1,
      q_3 + frac(
        1,
        q_4 + dots.h
      )
    )
  )
$
Next, we will show that if the decryption exponent a is revealed the $n$ can be factored in expected polynomial time. So, if a is leaked, a new modulus $n$ must be chosen in addition to a new $(a, b)$ pair. The alogrithm is of Las Vegas type, ,meaning that it may fail to work (output fail) with probability $epsilon$. It can therefore be shown that you expect to run the algorithm $1 / 1 - epsilon$ times until a success. The algorithm is somewhat similar to the Miller-Rabin primality test in the a random base $W in ZZ_n^*$ is chosen and exponential in $ZZ_n$. Writes $n - 1 = 2^k$ (m odd) and compute $w^m, w^(2m), w^(4m), ..., w^(2^k m)$ all in $ZZ_m^*$.

This algorithm will do something similar execpt based on writing $a b - 1 = 2^s dot r$ () where (a, b) is the decryption / encryption exponent pair. 

*Input*: a, b, n where $a b eq.triple 1 mod (emptyset(n))$ Write $a b - 1 = 2^s dot r$ for $s, r in ZZ, r$ odd. Choose a random $w$ in $[2, n - 1]$ if $gcd(w, n) > 1$ : return $gcd(w, n) $  p or q

 $ v := w^r mod n $ 

if $v = 1$: return failure, for $i$ from 1 to $s$: 
$ v_"prev" := v $
$ v: v = v^2 mod n $
if $v = -1$: return failure

if $v = 1$: return $gcd(v_"prev" + 1, n)$

In the final return, $v_"prev"$ is a non-trivial square root of 1. We must eventually reach a return because $w^a b - 1 eq.triple 1 mod n$ as $a b = 1 + k emptyset(n) "for" k in ZZ$ and $w^nothing(n) eq.triple 1 mod n$.

We already saw $gcd(v_"prev" plus.minus 1, n)$ will be a non trivial factor $(p "or" q)$ last class. However the algorithm fails when either 
$(1) w^r eq.triple 1 mod n$ (this doesn't help find a root of 1) 
$(2) w^2^i_r eq.triple -1 mod n$ (as this only finds a trivial root of 1)

One can show there are at most $n/4 w$ is case (1) and at most $n/4 w$ in case (2), so there are at most $n/2 w$ which cause failure, and most $1/2$.

Can we take the decryption exponent to be small? This would be nice in order to speed up decryption, but to be secure we'll need $a$ to be at least $3 n^(1/4)$ as we'll show. We'll show that $n$ can be factored in polytime when 
$3a < n(1/4)$ and $q < p < 2q$ 
The second inequality says that if $n$ has $l$ bits then $p$ and $q$ each have $l/2$ bits ($plus.minus 1$ bit)  which is typical and the first inequality says that $a$ has at most $l/4 - 1$ bits.

So for RSA to be secure, we always ensure $3 a > n^(1/4)$, even though this increases the cost of decryption slightly. 

The attack is based on computing an approximation to the fraction $b/n$ (a publically known quantity) that has a smaller denominator than $n$. Since $a b eq.triple 1 mod(nothing(n))$ or $a b = 1 + t dot nothing(n)$ for $t in ZZ$.

Since $n = p q > q^2$ so $ q < sqrt(n)$, and $0 < n - nothing(n) = p + q - 1 < 2 q + q - 1 = 3 q - 1 < 3 sqrt(n)$. 
$ |b/n - t/a | =  | (b a - t n) / (a n) |  =  | (1 + t nothing(n) - t n) / (a n) | =  |(t(n - nothing(n)) - 1)/(a n)| <  (3 sqrt(n) t) / (a n) = (3 t) / (a sqrt(n)) $

Note $t = (a b - 1) / nothing(n) < a b/nothing(n) < a < n^(1/4)/ 3$ so the above is < $n^(1/4) / (a sqrt(n)) = 1 / (a n^(1/4))$ and $ 1/n^(1/4) < 1/(3 a)$ by assumption.

The final bound is $|b/n - t/a|$ < $1 /(3 a^2)$. Since $1 / (3 a^2)$ is very small, this means $t/a$ is a very good approximation to $b/n$. In fact $t/a$ can be computed directly from $b/n$ by the following:

*Theorem*: If $a/b$ and $c/d$ are in lowest terms and $| a/b - c/d | < 1/(2d^2) $. Then $c/d$ is convergent in the continued fraction (CF) expansion of $a/b$.

A continued fraction is of the form #continued_fraction when the $q_i s$ are positive integers. In face, the CF expansion of $a/b$ has a suprising connection to the Euclidean algorithm. Run Euclidean algorithm on $(a, b)$ the quotients produced are exactly the $q_i$ in the CF expansion of $a /b$ has a suprising connection to the euclidean algorithm.
