= The RSA Cyrptosystem and Factoring Integers
+ *Euclidean Algorithm*
$ r_0 <- a $ $ r_1 <- b $ $ m <- 1 $ while $ r_m != 0 $ 
$ "do" cases(q_m <- floor(r_(m-1)/r_m) ,
r_(m+1) <- r_(m-1) - q_m r_m ,
m <- m - 1) 
$
