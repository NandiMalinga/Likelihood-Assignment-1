
// The input data is a vector 'y' of length 'N'.
data {
  int<lower=0> N;
  vector[N] x;
}

// The parameters accepted by the model. Our model
// accepts two parameters 'mu' and 'sigma'.
parameters {
  real mu;
  real<lower=0> sig;
}


model {
  // priors
  mu ~ normal(14, 10);
  sig ~ lognormal(0, 1);
  
  // likelihood
  for (i in 1:N) {
    target += -log(sig) - (exp(-(x[i] - mu)/sig)) - (x[i] - mu)/sig;
  }
}

