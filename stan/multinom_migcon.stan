data{
  int<lower=0> ngroups;
  int<lower=0> ndestinations;
  int<lower=0> y[ngroups, ndestinations+1];
}

parameters{
  simplex[ndestinations] m[ngroups];
  real<lower=0, upper=1> r[ndestinations];
}


transformed parameters{
  simplex[ndestinations+1] p[ngroups];
  for(i in 1:ngroups){
    for(k in 1:ndestinations) {
      p[i,k] = m[i,k]*r[k];
    }
    p[i,ndestinations+1] = 1-sum(p[i,1:ndestinations]);
  }
}


model {
  
  // likelihood
  for(i in 1:ngroups) {
    y[i,1:(ndestinations+1)] ~ multinomial(p[i,1:(ndestinations+1)]);
   }
}
