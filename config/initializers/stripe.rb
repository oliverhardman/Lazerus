Rails.configuration.stripe = {
    :publishable_key => 'pk_test_lHujCPmku6Ix7836GldHLJaM',
    :secret_key      => 'sk_test_P9LuXB1JGC1eDG8q5dDaaO7j'
  }
  
  Stripe.api_key = Rails.configuration.stripe[:secret_key]